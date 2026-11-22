load original/3PTB.pdb, crystal
load results/benzamidine_mode1.pdb, docked

hide everything

# Display the protein
show cartoon, crystal and polymer.protein
color gray80, crystal and polymer.protein

# Select the two ligand structures
select crystal_ligand, crystal and resn BEN and chain A
select docked_ligand, docked and resn UNL

# Display both ligands as sticks
show sticks, crystal_ligand
show sticks, docked_ligand

# Distinguish the two structures
color marine, crystal_ligand
color orange, docked_ligand

# Improve visual appearance
set stick_radius, 0.22
set cartoon_fancy_helices, 1
set antialias, 2
set ray_opaque_background, 1
bg_color white

# Focus on the ligand binding site
orient crystal_ligand or docked_ligand
zoom crystal_ligand or docked_ligand, 10

# Save the visualization
png figures/crystal_vs_docked.png, 2400, 1800, 300, ray=1
save figures/crystal_vs_docked.pse

