# Molecular Docking and Redocking Validation of Benzamidine with Bovine Trypsin

## Project Overview

This project investigates the binding of benzamidine to bovine beta-trypsin using molecular docking and structural analysis.

The crystallographic protein–ligand complex (PDB ID: **3PTB**) was used as the reference structure. Benzamidine was extracted from the original complex, prepared in its protonated form, and redocked into the trypsin binding pocket using **AutoDock Vina**.

The predicted binding pose was compared with the crystallographic ligand pose to evaluate how accurately the docking procedure reproduced the experimentally observed binding orientation.

## Objectives

- Prepare the bovine beta-trypsin receptor structure for molecular docking.
- Extract and prepare the crystallographic benzamidine ligand.
- Perform molecular docking using AutoDock Vina.
- Validate the predicted pose through symmetry-aware heavy-atom RMSD calculation.
- Examine the interaction between benzamidine and the binding-site residue Asp189.
- Visualize the protein structure, binding pocket, ligand pose, and molecular interactions.

## Biological Background

Trypsin is a serine protease involved in protein digestion. Its substrate-binding pocket contains Asp189, a negatively charged residue that contributes to the preference for positively charged residues such as lysine and arginine.

Benzamidine is a small positively charged ligand commonly used to study trypsin's substrate-binding specificity. Its interaction with the S1 specificity pocket makes it a useful model ligand for molecular docking and redocking validation.

## Project Information

| Parameter | Details |
|---|---|
| Protein | Bovine beta-trypsin |
| Organism | Bos taurus |
| PDB ID | 3PTB |
| Protein chain | A |
| Ligand | Benzamidine |
| Ligand residue name | BEN |
| Docking software | AutoDock Vina 1.2.7 |
| Visualization software | PyMOL 3.1.0 |
| Molecular conversion | Open Babel 3.1.1 |
| Receptor preparation | MGLTools / AutoDockTools 1.5.7 |
| Operating system | Ubuntu 26.04 LTS |

## Workflow

1. Retrieval of the crystallographic protein–ligand complex.
2. Extraction of the protein chain and crystallographic benzamidine ligand.
3. Receptor preparation, including hydrogen addition and Gasteiger charge assignment.
4. Ligand protonation at pH 7.4 and PDBQT preparation.
5. Definition of the docking grid using the crystallographic ligand coordinates.
6. Molecular docking using AutoDock Vina.
7. Extraction and analysis of the best-ranked docking pose.
8. Symmetry-aware heavy-atom RMSD calculation against the crystal ligand.
9. Analysis of benzamidine contacts with Asp189.
10. Visualization and documentation of the results.

## Docking Parameters

| Parameter | Value |
|---|---:|
| Grid center X | -1.759 Å |
| Grid center Y | 14.461 Å |
| Grid center Z | 16.916 Å |
| Grid size X | 20 Å |
| Grid size Y | 20 Å |
| Grid size Z | 20 Å |
| Exhaustiveness | 16 |
| Number of modes requested | 9 |
| Energy range | 3 kcal/mol |
| Random seed | 20261122 |

The docking grid was centered on the centroid of the crystallographic benzamidine ligand.

## Results

Key result: Redocking of protonated benzamidine into bovine beta-trypsin (PDB 3PTB) using AutoDock Vina produced a top-ranked pose with a Vina score of 
−
6.203
−6.203 kcal/mol and a symmetry-aware heavy-atom RMSD of 0.374 Å relative to the crystallographic ligand. The docked amidinium group formed close contacts with Asp189, with the shortest nitrogen–oxygen distance of approximately 3.03 Å. These results validate the receptor/ligand preparation and docking protocol for this system.

### 1. Docking Score

The best-ranked docking pose had a Vina score of:

**-6.203 kcal/mol**

This is a computational docking score and should not be interpreted as an experimentally measured binding free energy.

### 2. Redocking Validation

The docked benzamidine pose was compared with the crystallographic ligand using a symmetry-aware heavy-atom RMSD calculation.

**Calculated RMSD: 0.374 Å**

The low RMSD indicates that the docking procedure reproduced the crystallographic ligand pose closely in this particular protein–ligand complex.

### 3. Binding-Site Interaction

The analysis identified close contacts between the positively charged benzamidine amidinium group and the negatively charged carboxylate group of Asp189.

The closest nitrogen–oxygen contacts were approximately **3.03 Å**.

The approximately 3.03 Å nitrogen–oxygen distances are consistent with close electrostatic and polar contacts between the protonated benzamidine amidinium group and the Asp189 carboxylate. These distances support a favorable cation–anion interaction but do not, by themselves, establish hydrogen-bond geometry or formally classify the contact as a salt bridge.

## Software and Tools

- **AutoDock Vina:** Molecular docking.
- **MGLTools / AutoDockTools:** Receptor preparation.
- **Open Babel:** Molecular structure conversion and ligand protonation.
- **PyMOL:** Molecular visualization and figure generation.
- **Python:** RMSD calculation and interaction-distance analysis.

## Limitations

- This project uses one crystallographic protein–ligand complex for redocking validation.
- A successful redocking result does not establish the general accuracy of a docking method.
- The Vina score is a scoring-function estimate, not an experimental binding free energy.
- Crystallographic water molecules and the calcium ion were excluded during receptor preparation.
- The analysis focuses on one selected docking pose and the Asp189 binding-site contacts.
- The reported contact distances alone cannot establish hydrogen-bond geometry.
- The study does not include experimental binding assays or biochemical validation.

## Reproducibility

The repository includes the original structure, prepared receptor and ligand files, docking configuration, docking output, validation scripts, analysis report, and visualization scripts.

The recorded SHA-256 checksums can be checked using:

```bash
sha256sum -c results/SHA256SUMS.txt
```

The checksum file verifies the integrity of the listed files against the recorded hashes. If a file is modified, the checksum file must be regenerated.

## References

1. RCSB Protein Data Bank. Structure 3PTB.  
   https://www.rcsb.org/structure/3PTB

2. Trott O, Olson AJ. AutoDock Vina: improving the speed and accuracy of docking with a new scoring function, efficient optimization, and multithreading. *Journal of Computational Chemistry*. 2010;31(2):455–461.  
   https://doi.org/10.1002/jcc.21334

3. Open Babel. Chemical toolbox for molecular conversion and analysis.  
   https://openbabel.org/

4. PyMOL Molecular Graphics System.  
   https://pymol.org/

5. MGLTools / AutoDockTools.  
   https://ccsb.scripps.edu/mgltools/

---

**Project type:** Bioinformatics | Structural Bioinformatics | Molecular Docking  
**Focus:** Protein–ligand interaction analysis and redocking validation
