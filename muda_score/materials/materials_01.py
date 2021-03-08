import abjad
import muda
import evans
from muda_score.components.pitch import pitches_01 as pitch
from muda_score.components.rhythm import rmakers_01 as rhythm
from muda_score.components.timespans import timespans_01 as timespans

time_signatures = timespans.time_signatures
pitches = abjad.PitchSegment([-2, -1.5, 6, 7, -1.5, 7])

# ALTO FLUTE
# create material
material_aflute = muda.Material("AltoFlute_Voice_1")

material_aflute.AlternatingMaterials(
    timespans.durations_aflute,  # annotate divisions
    rhythm.rmaker_afluteA,
    rhythm.rmaker_afluteB,
    rhythm.rest_maker,
)

# write rhythm and silences
# material_aflute.SilenceAndRythmMaker(
#     maker=rhythm.rmaker_aflute, annotated_divisions=timespans.durations_aflute
# )
# write pitches
material_aflute.WritePitches(pitches)
# delete, insert before write indicators
# del material_aflute.container[-2:]
# write indicators
material_aflute.WriteIndicators(
    # which leaf receive the indicator
    # see leaves number
    # see_leaves_number=True,
    # dynamics
    # dynamic_list=["p", "mf", "f", "p < f"],
    # attach_dyn_lists=[[0], [1], [2], [(8, 10), (29, 31)]],
    # # slurs
    # slur_up=[(0, 2), (8, 10), (14, 16)],
    # slur_down=[(43, 45)],
)
# material_aflute = material_aflute.MakeMaterial()

# BASS CLARINET
# create material
material_bclarinet = muda.Material("BassClarinet_Voice_1")

# write alternated materials
material_bclarinet.AlternatingMaterials(
    timespans.durations_bclarinet,  # annotate divisions
    rhythm.rmaker_bclarinetA,
    rhythm.rmaker_bclarinetB,
    rhythm.rest_maker,
)
material_bclarinet.WritePitches(pitches)

material_bclarinet.WriteIndicators()

# PIANO1
material_piano1 = muda.Material("Piano_Voice_1")
material_piano1.AlternatingMaterials(
    timespans.durations_piano,  # annotate divisions
    rhythm.rmaker_piano1A,
    rhythm.rmaker_piano1B,
    rhythm.rest_maker,
)
material_piano1.WritePitches(pitches)
material_piano1.WriteIndicators()
# PIANO2
material_piano3 = muda.Material("Piano_Voice_3")
material_piano3.AlternatingMaterials(
    timespans.durations_piano,  # annotate divisions
    rhythm.rmaker_piano3A,
    rhythm.rmaker_piano3B,
    rhythm.rest_maker,
)
material_piano3.WritePitches(pitches)
material_piano3.WriteIndicators()

# VIOLIN
material_violin = muda.Material("Violin_Voice_1")
material_violin.AlternatingMaterials(
    timespans.durations_strings,  # annotate divisions
    rhythm.rmaker_violinA,
    rhythm.rmaker_violinB,
    rhythm.rest_maker,
)
material_violin.WritePitches(pitches)
material_violin.WriteIndicators()

# VIOLA
material_viola = muda.Material("Viola_Voice_1")
material_viola.AlternatingMaterials(
    timespans.durations_strings,  # annotate divisions
    rhythm.rmaker_violaA,
    rhythm.rmaker_violaB,
    rhythm.rest_maker,
)
material_viola.WritePitches(pitches)
material_viola.WriteIndicators()

# CELLO
material_cello = muda.Material("Cello_Voice_1")
material_cello.AlternatingMaterials(
    timespans.durations_strings,  # annotate divisions
    rhythm.rmaker_celloA,
    rhythm.rmaker_celloB,
    rhythm.rest_maker,
)
material_cello.WritePitches(pitches)
material_cello.WriteIndicators()
material_list = [
    material_aflute,
    material_bclarinet,
    material_piano1,
    material_piano3,
    material_violin,
    material_viola,
    material_cello,
]


if __name__ == "__main__":
    # show the material you are working on
    mat = material_piano1
    mat_voice = abjad.Voice(name=mat.name)
    mat_voice.append(mat.container)
    skips = abjad.Voice(name="Global_Context")
    mat_staff = abjad.Staff([mat_voice, skips], simultaneous=True)
    score = abjad.Score()
    score.append(mat_staff)
    muda.score.MakeSkips(time_signatures, score)
    muda.functions.RewriteMeter(score, time_signatures)
    abjad.show(score)
    # print(abjad.lilypond(score))

    # from muda_score.score_structure import score as temp_score

    # voices = abjad.select(temp_score).components(abjad.Voice)
    # voices_names = [_.name for _ in voices]
    # named_materials = zip(voices_names, material_list)
    # for a, b in named_materials:
    #     print(a, "material:")
    #     print(abjad.lilypond(b))

    # muda.score.MakeSkips(time_signature, temp_score)
    # abjad.attach(
    #     abjad.LilyPondLiteral(
    #         r"\cadenzaOn \set Staff.proportionalNotationDuration = #(ly:make-moment 1/25) \autoBeamOn "
    #     ),
    #     mat.container[0],
    # )
    # for n, leaf in enumerate(mat.container):
    #     if n % 16 == 0:
    #         abjad.attach(
    #             abjad.LilyPondLiteral(r'\bar "" '), mat.container[n],
    #         )
    # temp_score[mat].append(mat.container)

    # muda.functions.RewriteMeter(temp_score, time_signatures)
    # abjad.show(temp_score)


# change shape (shapes come first)
# abjad.attach(abjad.LilyPondLiteral(
#     r"""
#     \shape #'((0 . 0) (1 . 0) (3 . 0) (7 . 0)) Slur
#     """), voice_four[20])
