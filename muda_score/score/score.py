#!$HOME/github/my_venv/bin/python
# Open virtual environment
# -*- encoding: utf-8 -*-

# Script file to finalize score

import os
import shutil
import abjad

# from muda_score.segments import segment_01

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

# Get the current working directory
cwd = os.getcwd()
# Change the current working directory
os.chdir("./muda_score/score")

# Print the current working directory
print("Current working directory: {0}".format(os.getcwd()))

# Runs LilyPond to compile the score
os.system("lilypond " + "score.ly")

# Opens the PDF
abjad.io.open_file("score.pdf")
