# Molecular Docking Projects

A collection of molecular docking studies, protein–ligand interaction analyses, redocking validation experiments, and structural visualization projects using computational bioinformatics tools.

## About This Repository

This repository documents my practical learning and project work in molecular docking and structural bioinformatics.

It includes protein and ligand preparation, molecular docking, binding-pose analysis, structural validation, and visualization of protein–ligand complexes.

The repository will be updated as I complete additional molecular docking projects and explore new computational techniques.

## Project Collection

### Project 01: Molecular Docking and Redocking Validation of Benzamidine with Bovine Trypsin

**Target protein:** Bovine Trypsin  
**PDB ID:** 3PTB  
**Ligand:** Benzamidine  
**PubChem CID:** 2332  
**Docking software:** AutoDock Vina

**Project objectives:**
- Prepare the protein receptor and ligand for molecular docking.
- Perform molecular docking using AutoDock Vina.
- Identify the preferred ligand-binding pose.
- Validate the predicted pose against the experimentally observed crystal ligand.
- Analyse interactions between benzamidine and important binding-site residues.
- Visualize the protein–ligand complex using PyMOL.

**Key findings:**
- Best predicted docking affinity: −6.105 kcal/mol.
- Redocking heavy-atom RMSD: approximately 0.40 Å.
- Important binding-site residue: Asp189.
- Two close ligand nitrogen–Asp189 oxygen contacts: approximately 3.02 Å and 3.05 Å.


## Tools and Technologies

| Tool | Application |
|---|---|
| AutoDock Vina | Molecular docking |
| RDKit | Ligand preparation and cheminformatics |
| Meeko | Protein and ligand preparation |
| PyMOL | Molecular visualization |
| Python | Computational analysis |
| Google Colab | Cloud-based computational environment |
| PDB | Protein structure database |
| PubChem | Chemical structure database |


## Learning Goals

Through these projects, I aim to develop practical skills in:

- Protein structure analysis.
- Ligand preparation and optimization.
- Molecular docking.
- Protein–ligand interaction analysis.
- Docking pose validation.
- Structural visualization.
- Scientific documentation and reproducible computational workflows.

## Scientific Considerations

Docking scores are computational estimates and should not be interpreted as experimentally measured binding free energies.

Predicted interactions require appropriate structural and chemical interpretation. Redocking agreement supports the selected workflow for the particular protein–ligand system but does not independently establish experimental binding affinity.

## References and Data Sources

- [RCSB Protein Data Bank](https://www.rcsb.org/)
- [PubChem](https://pubchem.ncbi.nlm.nih.gov/)
- [AutoDock Vina](https://vina.scripps.edu/)
- [RDKit](https://www.rdkit.org/)
- [Meeko](https://github.com/forlilab/Meeko)
- [PyMOL](https://pymol.org/)

---

**This repository is a work in progress and will be updated with additional molecular docking projects, practical exercises, results, and learning notes.**
