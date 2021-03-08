# This file adds materials to voices and generate a segment

import os
import abjad
import muda
from muda_score.score_structure import score
from muda_score.materials import materials_01 as materials

# SEGMENT 01
# Write time signatures
muda.score.MakeSkips(materials.time_signatures, score)

# Write materials to voices
for material in materials.material_list:
    score[material.name].extend(material.container)

muda.functions.RewriteMeter(score, materials.time_signatures)

segment_01 = abjad.LilyPondFile(items=[score])
# Save LilyPond file to be collected (as ganha)
current_file = os.path.splitext(__file__)[0]  # Path
segment_ly = str(str(current_file) + ".ly")
abjad.persist.as_ly(segment_01, ly_file_path=segment_ly)  # Lilypond

# Save LilyPond and PDF files to be illustrated (as brinca)
if __name__ == "__main__":
    segment_01_illustration = abjad.LilyPondFile(
        items=[score], includes=["muda_score/stylesheet.ily"]
    ).__illustrate__()
    file_name = os.path.basename(__file__)
    file_name = os.path.splitext(file_name)[0]
    new_file_pdf = (
        os.path.dirname(__file__) + "/illustrations/" + str(file_name) + ".pdf"
    )
    abjad.persist.as_pdf(segment_01_illustration, pdf_file_path=new_file_pdf)  # PDF
    abjad.io.open_file(new_file_pdf)

