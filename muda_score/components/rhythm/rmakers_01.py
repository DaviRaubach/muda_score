import abjad
import abjadext.rmakers as rmakers
import muda

durations_general = [(4, 4)] * 32

rmaker_afluteA = rmakers.stack(
    rmakers.talea([4, -2, 1], 8),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_A"),
)

rmaker_afluteB = rmakers.stack(
    rmakers.talea([1], 8, extra_counts=[1]),
    rmakers.beam(),
    rmakers.extract_trivial(),  # counts  # denominator
    # rmakers.rewrite_meter(),
    tag=abjad.Tag("Mat_B"),
)

rest_maker = rmakers.stack(
    rmakers.note(), rmakers.force_rest(abjad.select()), tag=abjad.Tag("Rests")
)

rmaker_bclarinetA = rmakers.stack(
    rmakers.talea([-4, 2], 8),  # counts  # denominator
    rmakers.beam(),
    rmakers.extract_trivial(),
    tag=abjad.Tag("Mat_A"),
)
rmaker_bclarinetB = rmakers.stack(
    rmakers.talea([1], 8, extra_counts=[1]),
    rmakers.beam(),
    rmakers.extract_trivial(),  # counts  # denominator
    # rmakers.rewrite_meter(),
    tag=abjad.Tag("Mat_B"),
)

rmaker_piano1A = rmakers.stack(
    rmakers.talea([1, 4, 2], 8,),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_A"),
)

rmaker_piano1B = rmakers.stack(
    rmakers.talea([1, -1, 1, -1, 1], 16, extra_counts=[1]),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_B"),
)

rmaker_piano3A = rmakers.stack(
    rmakers.talea([5], 8,),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_A"),
)

rmaker_piano3B = rmakers.stack(
    rmakers.talea([1, -1, 1, -1, 1], 4, extra_counts=[1]),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_B"),
)

rmaker_violinA = rmakers.stack(
    rmakers.talea([3, 1, 2], 4,),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_A"),
)
rmaker_violinB = rmakers.stack(
    rmakers.talea([1, -2], 8, extra_counts=[1]),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_B"),
)

rmaker_violaA = rmakers.stack(
    rmakers.talea([3, 2, 1], 4,),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_A"),
)

rmaker_violaB = rmakers.stack(
    rmakers.talea([1, -3], 8, extra_counts=[1]),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_B"),
)

rmaker_celloA = rmakers.stack(
    rmakers.talea([2, 8, 1], 16,),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_A"),
)

rmaker_celloB = rmakers.stack(
    rmakers.talea([1, -4], 8, extra_counts=[1]),
    rmakers.extract_trivial(),  # counts  # denominator
    tag=abjad.Tag("Mat_B"),
)

# rhythm_list_01 = [
#     rmaker_aflute1,
#     rmaker_bclarinet1,
#     rmaker_piano1,
#     rmaker_piano2,
#     rmaker_piano3,
#     rmaker_piano4,
#     rmaker_violin,
#     rmaker_viola,
#     rmaker_cello,
# ]

