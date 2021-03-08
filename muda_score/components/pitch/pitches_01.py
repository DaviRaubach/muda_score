import abjad

chord_01 = abjad.PitchSegment(
    "af'' g'' fs'' "
    + "f'' d'' cs'' "
    + "b'' af'' g'' "
    + "e'' c'' g'' "
    + "fs'' cs'' gs''"
)

chord_02 = abjad.PitchSegment(
    "af'' g'' fs'' "
    + "f'' d'' cs'' "
    + "b'' af'' g'' "
    + "e'' c'' g'' "
    + "fs'' cs'' gs''"
)

pitch_list_01 = [chord_01, chord_02, chord_01, chord_02, chord_01, chord_02, chord_01]