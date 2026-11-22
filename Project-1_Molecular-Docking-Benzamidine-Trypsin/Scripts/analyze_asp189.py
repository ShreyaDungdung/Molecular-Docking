import numpy as np

# Coordinates of docked benzamidine nitrogen atoms
ligand_N = {
    "N_atom_2": np.array([-1.662, 12.354, 15.516]),
    "N_atom_3": np.array([-2.822, 14.150, 14.763])
}

# Coordinates of Asp189 carboxylate oxygen atoms
asp189_O = {
    "OD1": np.array([-4.102, 12.340, 12.695]),
    "OD2": np.array([-3.203, 10.589, 13.598])
}

print("Benzamidine–Asp189 distance analysis")
print("-" * 48)

for n_name, n_coord in ligand_N.items():
    for o_name, o_coord in asp189_O.items():
        distance = np.linalg.norm(n_coord - o_coord)
        print(f"{n_name} -- ASP189 {o_name}: {distance:.3f} Å")
