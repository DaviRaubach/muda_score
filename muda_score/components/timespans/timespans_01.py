#!$HOME/github/my_venv/bin/python

# import os
import abjad
import tsmakers
import muda
import abjadext.rmakers as rmakers
import collections
import evans
import pathlib

# work with timespans to generate durations that will be filled by rhythm makers

# new timespan list for aflute
# alternations must have the same lenght on each instrument
general_alternations = [
    [8, 4, 6],
    [16, 8, 6],
    [12, 8, 2],
    [8, 8, 2],
    [8, 10, 2],
    [24, 2, 2],
    # [24, 2, 2],
    # [24, 2, 2],
    # [24, 2, 2],
]
# presence of different materials
timespans_aflute = muda.timespan.AlternatingTimespans(
    n_annotations=3,  # different materials
    alternations=general_alternations,
    denominator=8,
    annotations=["Mat_A", "Mat_B", "Rests"],  # names of different materials
)
# new timespan list for bclarinet
timespans_bclarinet = muda.timespan.AlternatingTimespans(
    n_annotations=3,  # different materials
    alternations=general_alternations,
    denominator=8,
    annotations=["Mat_A", "Mat_B", "Rests"],  # names of different materials
)
# new timespan list for piano
timespans_piano1e3 = muda.timespan.AlternatingTimespans(
    n_annotations=3,  # different materials
    alternations=general_alternations,
    denominator=8,
    annotations=["Mat_A", "Mat_B", "Rests"],  # names of different materials
)
# new timespan list for violin
timespans_strings = muda.timespan.AlternatingTimespans(
    n_annotations=3,  # different materials
    alternations=general_alternations,
    denominator=8,
    annotations=["Mat_A", "Mat_B", "Rests"],  # names of different materials
)

instruments_timespans = [
    timespans_aflute,
    timespans_bclarinet,
    timespans_piano1e3,
    timespans_strings,
]

for instrument_ts1, instrument_ts2 in zip(
    instruments_timespans, instruments_timespans[1:]
):
    error_str = "Instruments timespans must have the same total duration."
    assert instrument_ts1.duration == instrument_ts2.duration, error_str


durations_aflute = timespans_aflute.AnnotatedDurations()
durations_bclarinet = timespans_bclarinet.AnnotatedDurations()
durations_piano = timespans_piano1e3.AnnotatedDurations()
# durations_piano3 = timespans_piano1e3.AnnotatedDurations()
durations_strings = timespans_strings.AnnotatedDurations()
# durations_viola = timespans_strings.AnnotatedDurations()
# durations_cello = timespans_strings.AnnotatedDurations()

# time signatures for these timespan structures
final_list = abjad.TimespanList()

coincident_offsets = []
for ts_list1, ts_list2 in zip(instruments_timespans, instruments_timespans[1:]):
    for i, (span1, span2) in enumerate(zip(ts_list1, ts_list2)):
        if i == 0:
            coincident_offsets.append(abjad.Offset(0))
            if span1.stop_offset == span2.stop_offset:
                coincident_offsets.append(abjad.Offset(span1.stop_offset))
        else:
            if span1.stop_offset == span2.stop_offset:
                coincident_offsets.append(abjad.Offset(span1.stop_offset))
        if span1.annotation == "Mat_B" and span2.annotation == "Mat_B":
            if span1 <= span2:
                coincident_offsets.append(span1.start_offset)
            else:
                coincident_offsets.append(span2.start_offset)
            if span1.stop_offset > span2.stop_offset:
                coincident_offsets.append(abjad.Offset(span1.stop_offset))
            # else:
            # print(span1.stop_offset)
            # print(span2.stop_offset)
            # coincident_offsets.append(abjad.Offset(span2.stop_offset))


coincident_offsets.sort()
meters = []
for off1, off2 in zip(coincident_offsets, coincident_offsets[1:]):
    new_ts = abjad.AnnotatedTimespan(start_offset=off1, stop_offset=off2)
    final_list.append(new_ts)
    meters.append(abjad.Meter(new_ts.duration))

permitted_meters = [
    # (7, 4),
    (5, 4),
    (4, 4),
    (3, 4),
    (3, 8),
    (11, 16),
    # (3, 16),
]

# remove repeated
coincident_offsets = list(dict.fromkeys(coincident_offsets))
# print(coincident_offsets)

offset_counter = abjad.OffsetCounter(coincident_offsets)
fitted_meters = abjad.Meter.fit_meters(
    argument=offset_counter, meters=permitted_meters,  # maximum_run_length=1
)
time_signatures = [_.implied_time_signature for _ in fitted_meters]

for i in time_signatures:
    print("Time Signature:", i)


if __name__ == "__main__":
    # abjad.show(final_list, scale=0.8, key="annotation")
    pass

