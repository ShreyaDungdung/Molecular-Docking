reinitialize

load original/3PTB.pdb, protein

hide everything
bg_color white

# Display protein structure
show cartoon, protein and chain A
color gray80, protein

# Select original crystallographic benzamidine
select crystal_ligand, protein and resn BEN and chain A
show sticks, crystal_ligand
color marine, crystal_ligand

# Select binding pocket residues within 5 Angstroms
select pocket, byres (protein and chain A and polymer.protein within 5 of crystal_ligand)

show sticks, pocket and not name N+CA+C+O
color tv_yellow, pocket and elem C
color red, pocket and elem O
color blue, pocket and elem N

# Label nearby residues
label (pocket and name CA), "%s%s" % (resn, resi)

# Improve appearance
set stick_radius, 0.18
set cartoon_transparency, 0.35
set label_size, 18
set label_color, black
set ray_opaque_background, on

orient crystal_ligand
zoom crystal_ligand, 12

ray 1800, 1400
png figures/trypsin_binding_pocket.png, dpi=300

save figures/trypsin_binding_pocket.pse

pymol -cq scripts/binding_pocket.pml


reinitialize

load original/3PTB.pdb, protein

hide everything
bg_color white

show cartoon, protein and chain A
color gray80, protein

select crystal_ligand, protein and resn BEN and chain A
show sticks, crystal_ligand
color marine, crystal_ligand

select pocket, byres (protein and chain A and polymer.protein within 5 of crystal_ligand)

show sticks, pocket and not name N+CA+C+O
color tv_yellow, pocket and elem C
color red, pocket and elem O
color blue, pocket and elem N

label (pocket and name CA), "%s%s" % (resn, resi)

set stick_radius, 0.18
set cartoon_transparency, 0.35
set label_size, 18
set label_color, black
set ray_opaque_background, on

orient crystal_ligand
zoom crystal_ligand, 12

ray 1800, 1400
png figures/trypsin_binding_pocket.png, dpi=300

save figures/trypsin_binding_pocket.pse
