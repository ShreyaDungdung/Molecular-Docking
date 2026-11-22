# Results and Interpretation

## 1. Docking Results

Benzamidine was redocked into the binding pocket of bovine beta-trypsin using AutoDock Vina 1.2.7.

The best-ranked docking pose produced the following score:

| Parameter | Result |
|---|---:|
| Best docking score | -6.203 kcal/mol |
| Number of requested modes | 9 |
| Exhaustiveness | 16 |
| Energy range | 3 kcal/mol |

The reported score is a computational estimate from the Vina scoring function. It is not an experimentally measured binding free energy.

## 2. Redocking Validation

The best-ranked pose was compared with the crystallographic benzamidine ligand.

| Parameter | Result |
|---|---:|
| Reference ligand | Crystallographic benzamidine |
| Docked ligand | Benzamidine, mode 1 |
| Heavy atoms compared | 9 |
| RMSD method | Symmetry-aware |
| Coordinate superposition | Not applied |
| Calculated RMSD | 0.374 Å |

The RMSD of 0.374 Å indicates close reproduction of the crystallographic ligand pose in this redocking experiment.

This result supports the ability of the selected docking setup to reproduce the reference pose for this particular complex. It does not establish performance across other proteins or ligands.

## 3. Asp189 Interaction Analysis

Asp189 is located in the S1 specificity pocket of trypsin and contributes to recognition of positively charged ligand groups.

The following distances were measured between the benzamidine nitrogen atoms and the Asp189 carboxylate oxygen atoms:

| Ligand atom | Asp189 atom | Distance |
|---|---|---:|
| N atom 2 | OD1 | 3.730 Å |
| N atom 2 | OD2 | 3.028 Å |
| N atom 3 | OD1 | 3.032 Å |
| N atom 3 | OD2 | 3.766 Å |

The closest contacts are approximately 3.03 Å.

These close nitrogen–oxygen contacts are consistent with a charge-assisted polar interaction between protonated benzamidine and the negatively charged Asp189 side chain.

However, the distances alone do not establish hydrogen-bond geometry or prove a salt bridge.

## 4. Overall Interpretation

The docking experiment produced a pose that closely reproduced the crystallographic benzamidine orientation.

The low symmetry-aware RMSD supports successful pose reproduction in this specific redocking experiment.

The close contacts with Asp189 are consistent with the known role of the trypsin S1 pocket in recognizing positively charged groups.

Together, these results demonstrate a basic molecular docking and structural validation workflow.

## 5. Limitations

- Only one protein–ligand complex was used for validation.
- Crystallographic water molecules and calcium were excluded from receptor preparation.
- The Vina score is not an experimental binding free energy.
- The Asp189 analysis is based on interatomic distances.
- No experimental biochemical or binding assay was performed.
- The study does not establish general docking accuracy or predict clinical drug efficacy.

## Conclusion

The redocking of benzamidine into bovine beta-trypsin reproduced the crystallographic ligand pose with a symmetry-aware heavy-atom RMSD of 0.374 Å.

The docking score was -6.203 kcal/mol, and close contacts of approximately 3.03 Å were observed between benzamidine and Asp189.

The study demonstrates the application of molecular docking, redocking validation, interaction-distance analysis, and molecular visualization in structural bioinformatics.
