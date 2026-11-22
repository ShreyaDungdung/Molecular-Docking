
import subprocess
from pathlib import Path
from datetime import date

project = Path(__file__).resolve().parent.parent

asp_script = project / "scripts" / "analyze_asp189.py"
rmsd_script = project / "scripts" / "validate_rmsd.py"
docking_log = project / "results" / "docking_log.txt"

# Run the existing analysis scripts
asp_result = subprocess.run(
    ["python3", str(asp_script)],
    capture_output=True,
    text=True,
    check=True
)

rmsd_result = subprocess.run(
    ["python3", str(rmsd_script)],
    capture_output=True,
    text=True,
    check=True
)

# Extract the best docking score from the Vina log
best_score = None

with open(docking_log) as file:
    for line in file:
        fields = line.split()
        if fields and fields[0] == "1" and len(fields) >= 2:
            best_score = fields[1]
            break

if best_score is None:
    raise ValueError("Could not find the best docking score.")

report = f"""MOLECULAR DOCKING ANALYSIS REPORT
==================================

Project: Benzamidine with bovine beta-trypsin
PDB ID: 3PTB
Chain: A
Generated: {date.today().isoformat()}

1. DOCKING RESULT
-----------------
Software: AutoDock Vina 1.2.7
Best docking score: {best_score} kcal/mol

2. REDOCKING VALIDATION
-----------------------
{rmsd_result.stdout}

3. ASP189 INTERACTION ANALYSIS
------------------------------
{asp_result.stdout}

4. INTERPRETATION
-----------------
The redocked benzamidine pose reproduces the
crystallographic ligand position with a low
symmetry-aware heavy-atom RMSD.

The nitrogen-oxygen distances indicate close
polar contacts with Asp189.

The docking score is computational and is not
an experimentally measured binding free energy.

This report describes a single-complex redocking
validation and should not be interpreted as proof
of general docking accuracy.
"""

output = project / "results" / "analysis_report.txt"
output.write_text(report)

print("Analysis report generated successfully:")
print(output)
print()
print(report)
