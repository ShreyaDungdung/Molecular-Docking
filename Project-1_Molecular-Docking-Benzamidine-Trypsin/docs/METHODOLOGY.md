# Methodology

## 1. Retrieval of Protein Structure

The crystallographic structure of bovine beta-trypsin complexed with benzamidine was obtained from the RCSB Protein Data Bank.

- PDB ID: 3PTB
- Protein chain: A
- Ligand residue: BEN
- Organism: Bos taurus

The original PDB file was retained in the `original/` directory.

## 2. Protein Preparation

The protein chain was extracted from the original PDB structure using an ATOM-record selection.

The crystallographic benzamidine ligand, water molecules, and calcium ion were excluded from the receptor preparation.

The protein structure was prepared using MGLTools / AutoDockTools.

Preparation included:

- Addition of hydrogens.
- Assignment of Gasteiger charges.
- Preparation of the receptor in PDBQT format.
- Retention of the protein heavy-atom coordinates.

The prepared receptor contained 1,629 heavy atoms and 385 added hydrogen atoms.

## 3. Ligand Preparation

The crystallographic benzamidine ligand was extracted from chain A using its residue identifier BEN.

The ligand was converted and protonated at pH 7.4 using Open Babel.

The protonated ligand was then converted into PDBQT format for docking.

The prepared ligand contained nine heavy atoms and a net formal charge of +1. Non-polar hydrogens were treated according to the AutoDock PDBQT preparation convention.

The heavy-atom coordinates were retained from the crystallographic ligand.

## 4. Docking Grid Definition

The docking grid was centered on the geometric centroid of the nine heavy atoms of the crystallographic benzamidine ligand.

Grid center:

- X = -1.759 Å
- Y = 14.461 Å
- Z = 16.916 Å

Grid dimensions:

- X = 20 Å
- Y = 20 Å
- Z = 20 Å

This grid was selected to cover the original ligand-binding region.

## 5. Molecular Docking

Molecular docking was performed using AutoDock Vina version 1.2.7.

The following parameters were used:

- Exhaustiveness: 16
- Number of requested modes: 9
- Energy range: 3 kcal/mol
- Random seed: 20261122

The docking output and execution log were saved in the `results/` directory.

## 6. Redocking Validation

The best-ranked docking pose was extracted and compared with the original crystallographic benzamidine ligand.

A symmetry-aware heavy-atom RMSD calculation was performed using Python.

The calculation considered equivalent atom correspondences in the benzamidine structure, including interchange of the amidine nitrogen atoms and reversal of the phenyl-ring mapping.

The RMSD was calculated directly in the shared crystallographic coordinate frame. No coordinate superposition was applied because the receptor and reference ligand coordinates were retained in the same frame.

The resulting RMSD was 0.374 Å.

## 7. Binding-Site Interaction Analysis

The interaction analysis focused on Asp189, a negatively charged residue in the trypsin S1 specificity pocket.

Distances between the two benzamidine amidine nitrogen atoms and the Asp189 carboxylate oxygen atoms were calculated from the docked pose.

The closest nitrogen–oxygen contacts were approximately 3.03 Å.

These distances support the presence of a close polar interaction, but distance measurements alone are insufficient to prove hydrogen-bond geometry or a salt bridge.

## 8. Molecular Visualization

PyMOL was used to generate molecular figures illustrating:

- The crystallographic and docked ligand poses.
- The trypsin binding pocket.
- The local environment around Asp189.
- The ligand structure.

The PyMOL scripts and session files are included where available.

## 9. Reproducibility and Integrity

The project includes:

- Original structural files.
- Prepared receptor and ligand files.
- Docking configuration.
- Docking output and log.
- Python analysis scripts.
- PyMOL visualization scripts.
- SHA-256 checksum records.

The integrity of the files listed in the checksum file can be checked with:

```bash
sha256sum -c results/SHA256SUMS.txt
```

## 10. Methodological Limitations

The receptor preparation excluded crystallographic water molecules and the calcium ion. The docking study therefore represents a simplified receptor model.

The docking score is a computational scoring estimate and is not an experimental binding free energy.

The redocking validation uses a single protein–ligand complex and should not be interpreted as a general benchmark of docking accuracy.
