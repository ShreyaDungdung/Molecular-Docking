# Project 01: Molecular Docking and Redocking Validation of Benzamidine with Bovine Trypsin

## 1. Project Overview

This project investigates the binding of benzamidine to bovine trypsin using molecular docking.

The experimentally determined protein–ligand complex was obtained from the Protein Data Bank (PDB ID: 3PTB). AutoDock Vina was used to generate predicted binding poses, and the best-scoring pose was compared with the crystallographic ligand to evaluate docking accuracy.

## 2. Biological System

| Component | Details |
|---|---|
| Protein | Bovine trypsin |
| PDB ID | 3PTB |
| Protein chain | A |
| Ligand | Benzamidine |
| PubChem CID | 2332 |
| Ligand heavy atoms | 9 |

### Biological relevance

Trypsin is a serine protease involved in protein digestion. Asp189 is an important residue in its S1 specificity pocket and contributes to recognition of positively charged groups.

Benzamidine is a model amidine ligand that interacts favourably with this binding region.

## 3. Workflow

1. Retrieved the bovine trypsin crystal structure from RCSB PDB.
2. Retrieved benzamidine from PubChem.
3. Prepared the protein receptor using Meeko.
4. Generated the protonated benzamidine structure using RDKit.
5. Prepared the ligand in PDBQT format using Meeko.
6. Defined the docking search box using the original ligand coordinates.
7. Performed molecular docking using AutoDock Vina.
8. Compared the predicted pose with the crystallographic ligand.
9. Calculated the heavy-atom RMSD.
10. Analysed close contacts involving Asp189.
11. Visualized the structures using PyMOL.

## 4. Docking Parameters

| Parameter | Value |
|---|---|
| Docking software | AutoDock Vina |
| Exhaustiveness | 16 |
| Number of modes | 9 |
| Energy range | 3 kcal/mol |
| Random seed | 2026 |
| Search box | 20 × 20 × 20 Å |
| Centre X | −1.759 Å |
| Centre Y | 14.461 Å |
| Centre Z | 16.916 Å |

## 5. Docking Results

The best predicted binding mode had an affinity score of: **−6.105 kcal/mol**

Nine predicted binding modes were generated.

| Mode | Affinity (kcal/mol) |
|---|---:|
| 1 | −6.105 |
| 2 | −6.102 |
| 3 | −5.701 |
| 4 | −5.154 |
| 5 | −4.904 |
| 6 | −4.868 |
| 7 | −4.791 |
| 8 | −4.768 |
| 9 | −4.399 |

The Vina affinity is a computational scoring estimate, not an experimentally measured binding free energy.

## 6. Redocking Validation

The first predicted docking pose was compared with the experimentally observed benzamidine coordinates in the original 3PTB crystal structure.

The comparison used nine corresponding heavy atoms in the original protein coordinate frame, without additional alignment.

**Calculated heavy-atom RMSD: approximately 0.40 Å.**

This indicates excellent agreement between the predicted and experimentally observed ligand positions.

The RMSD values reported in the Vina docking table refer to differences between predicted modes and should not be confused with this crystal-reference RMSD.

## 7. Protein–Ligand Interaction Analysis

The interaction analysis focused on Asp189, an important residue in the trypsin S1 specificity pocket.

| Ligand atom | Asp189 atom | Distance |
|---|---|---:|
| N1 | OD1 | 3.02 Å |
| N1 | OD2 | 3.78 Å |
| N2 | OD1 | 3.73 Å |
| N2 | OD2 | 3.05 Å |

The two closest nitrogen–oxygen contacts are consistent with favourable polar and electrostatic recognition between the positively charged benzamidinium group and the negatively charged Asp189 carboxylate group.

These distances alone do not establish hydrogen bonding because hydrogen positions and donor–hydrogen–acceptor angles were not evaluated.

## 8. Visualization

The PyMOL visualizations are intended to include:

- Overall three-dimensional structure of bovine trypsin.
- Comparison of the original and docked benzamidine poses.
- Close-up view of the benzamidine binding pocket and Asp189 contacts.

Final figures will be added to the `figures/` directory.

## 9. Conclusion

The docking workflow successfully reproduced the experimentally observed benzamidine binding pose in bovine trypsin, with a heavy-atom RMSD of approximately 0.40 Å.

The best predicted Vina affinity was −6.105 kcal/mol. Close contacts between benzamidine and Asp189 were consistent with the known recognition mechanism of the trypsin S1 specificity pocket.

This project demonstrates the use of molecular docking, redocking validation, interaction analysis, and molecular visualization in structural bioinformatics.

## 10. Limitations

- The receptor was treated as rigid during docking.
- Crystallographic water molecules and the calcium ion were excluded from the prepared receptor.
- Docking scores are approximate computational estimates.
- Hydrogen-bond geometry was not independently validated.
- The findings apply to this particular protein–ligand system and do not establish experimental binding affinity.

## 11. References

1. [RCSB PDB: 3PTB](https://www.rcsb.org/structure/3PTB)
2. [PubChem: Benzamidine, CID 2332](https://pubchem.ncbi.nlm.nih.gov/compound/2332)
3. Trott, O. and Olson, A. J. (2010). AutoDock Vina: Improving the speed and accuracy of docking with a new scoring function, efficient optimization, and multithreading. *Journal of Computational Chemistry*, 31(2), 455–461. https://doi.org/10.1002/jcc.21334
4. [RDKit](https://www.rdkit.org/)
5. [Meeko](https://github.com/forlilab/Meeko)
6. [PyMOL](https://pymol.org/)
