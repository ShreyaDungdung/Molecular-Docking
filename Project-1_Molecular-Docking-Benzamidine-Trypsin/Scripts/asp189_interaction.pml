load original/3PTB.pdb, crystal
load results/benzamidine_mode1.pdb, docked

hide everything
bg_color white

# Show protein as a subtle background
show cartoon, crystal and polymer.protein
color gray80, crystal and polymer.protein
set cartoon_transparency, 0.45

# Show docked benzamidine
show sticks, docked and resn UNL
color orange, docked and resn UNL

# Select and display Asp189
select asp189, crystal and chain A and resi 189
show sticks, asp189
color tv_yellow, asp189 and elem C
color red, asp189 and elem O
color blue, asp189 and elem N

# Show the two shortest measured contacts
distance contact_1, (docked and id 2), (crystal and chain A and resi 189 and name OD2)
distance contact_2, (docked and id 3), (crystal and chain A and resi 189 and name OD1)

# Style distance measurements
set dash_color, yellow
set dash_width, 3
set dash_length, 0.25
set dash_gap, 0.15
set label_color, black
set label_size, 18
set label_distance_digits, 2

# Improve rendering
set stick_radius, 0.23
set antialias, 2
set ray_opaque_background, 1
set ray_shadows, 0

# Focus on the interaction
orient (docked and resn UNL) or asp189
zoom (docked and resn UNL) or asp189, 7

# Save figure and editable session
png figures/asp189_interaction.png, 2400, 1800, 300, ray=1
save figures/asp189_interaction.pse
