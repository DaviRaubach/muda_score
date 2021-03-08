#!$HOME/github/my_venv/bin/python
# Open virtual environment
# -*- encoding: utf-8 -*-

# Script file to finalize score

import os
import shutil
import abjad
from muda_score.segments import segment_01

# Paths
srcdir = "muda_score/segments"
dstdir = "muda_score/score"

# Runs "segment_0X.py" files (generate segments)
# segment_01

# Copies "segment_0X.ly" files to score folder
for basename in os.listdir(srcdir):
    if basename.endswith(".ly"):
        pathname = os.path.join(srcdir, basename)
        if os.path.isfile(pathname):
            shutil.copy2(pathname, dstdir)

# score_illustration = abjad.LilyPondFile(
#     items=[score], includes=["muda_score/stylesheet.ily"]
# ).__illustrate__()
# file_name = os.path.basename(__file__)
# file_name = os.path.splitext(file_name)[0]
# new_file_pdf = os.path.join(dstdir, "score.pdf")

# abjad.persist.as_pdf(score_illustration, pdf_file_path=new_file_pdf)  # PDF
# abjad.io.open_file(new_file_pdf)

# Runs LilyPond to compile the score
score_ly = os.path.join(dstdir, "score.ly")
os.system("lilypond --verbose " + score_ly)

# Opens the PDF
new_file_pdf = os.path.join(dstdir, "score.pdf")
abjad.io.open_file(new_file_pdf)
