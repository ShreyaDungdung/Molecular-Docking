import numpy as np
from itertools import product

CRYSTAL_FILE = "original/3PTB.pdb"
DOCKED_FILE = "results/benzamidine_mode1.pdbqt"

# Read crystallographic benzamidine coordinates
crystal = {}

with open(CRYSTAL_FILE) as file:
    for line in file:
        if line.startswith("HETATM") and line[17:20] == "BEN" and line[21] == "A":
            atom = line[12:16].strip()
            element = line[76:78].strip().upper()

            if element in ("C", "N"):
                crystal[atom] = np.array([
                    float(line[30:38]),
                    float(line[38:46]),
                    float(line[46:54])
                ])

# Read docked heavy-atom coordinates
docked = {}

with open(DOCKED_FILE) as file:
    for line in file:
        if line.startswith(("ATOM", "HETATM")):
            serial = int(line[6:11])
            atom_type = line.split()[-1]

            if atom_type in ("C", "A", "N", "NA"):
                docked[serial] = np.array([
                    float(line[30:38]),
                    float(line[38:46]),
                    float(line[46:54])
                ])

if len(crystal) != 9 or len(docked) != 9:
    raise ValueError("Expected exactly 9 heavy atoms in each structure.")

best_rmsd = float("inf")
best_mapping = None

# Test equivalent nitrogen and phenyl-ring mappings
for swap_nitrogens, reverse_ring in product([False, True], repeat=2):

    crystal_n1 = "N2" if swap_nitrogens else "N1"
    crystal_n2 = "N1" if swap_nitrogens else "N2"

    ring_atoms = (
        ["C1", "C6", "C5", "C4", "C3", "C2"]
        if reverse_ring
        else ["C1", "C2", "C3", "C4", "C5", "C6"]
    )

    mapping = {
        1: "C",
        2: crystal_n2,
        3: crystal_n1
    }

    for serial, atom in zip(range(8, 14), ring_atoms):
        mapping[serial] = atom

    squared_distances = []

    for serial, crystal_atom in mapping.items():
        difference = docked[serial] - crystal[crystal_atom]
        squared_distances.append(np.dot(difference, difference))

    rmsd = np.sqrt(np.mean(squared_distances))

    if rmsd < best_rmsd:
        best_rmsd = rmsd
        best_mapping = mapping.copy()

print("BENZAMIDINE REDOCKING VALIDATION")
print("-" * 45)
print("Crystal heavy atoms:", len(crystal))
print("Docked heavy atoms:", len(docked))
print("Symmetry-aware heavy-atom RMSD: {:.3f} Å".format(best_rmsd))
print("\nBest atom correspondence:")

for serial, atom in best_mapping.items():
    print("Docked atom {} -> Crystal atom {}".format(serial, atom))

print("\nNo coordinate superposition was applied.")
