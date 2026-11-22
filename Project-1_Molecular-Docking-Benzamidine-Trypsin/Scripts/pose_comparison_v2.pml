load original/3PTB.pdb, crystal
load results/benzamidine_mode1.pdb, docked

hide everything

# Protein background
show cartoon, crystal and polymer.protein
color gray80, crystal and polymer.protein
set cartoon_transparency, 0.35

# Original and docked ligands
select crystal_ligand, crystal and resn BEN and chain A
select docked_ligand, docked and resn UNL

# Binding pocket: protein residues within 5 Angstrom of crystal ligand
select pocket, byres (crystal and polymer.protein within 5 of crystal_ligand)
select pocket_sidechains, pocket and not name N+CA+C+O

# Show nearby side chains
show sticks, pocket_sidechains
color tv_yellow, pocket_sidechains and elem C
color red, pocket_sidechains and elem O
color blue, pocket_sidechains and elem N

# Show both ligand poses
show sticks, crystal_ligand
show sticks, docked_ligand
color marine, crystal_ligand
color orange, docked_ligand

# Rendering settings
set stick_radius, 0.22
set antialias, 2
set ray_opaque_background, 1
set ray_shadows, 0
bg_color white

# Focus on the binding pocket
orient crystal_ligand or docked_ligand
zoom pocket or crystal_ligand or docked_ligand, 5

# Save improved figure and editable session
png figures/crystal_vs_docked_v2.png, 2400, 1800, 300, ray=1
save figures/crystal_vs_docked_v2.pse
