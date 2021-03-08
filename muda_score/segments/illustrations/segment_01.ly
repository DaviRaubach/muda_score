\version "2.22.0"   %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

\include "muda_score/stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\context Score = "Score" %! muda.score.create_score()
<<                       %! muda.score.create_score()
    \context TimeSignatureContext = "Global_Context"
    {
        \time 4/4 %! muda.score.make_skips()
        s1 * 1
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 3/4 %! muda.score.make_skips()
        s1 * 3/4
        \time 4/4 %! muda.score.make_skips()
        s1 * 1
        \time 3/4 %! muda.score.make_skips()
        s1 * 3/4
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 4/4 %! muda.score.make_skips()
        s1 * 1
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 5/4 %! muda.score.make_skips()
        s1 * 5/4
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 4/4 %! muda.score.make_skips()
        s1 * 1
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
        \time 3/8 %! muda.score.make_skips()
        s1 * 3/8
    }
    \context Staff = "AltoFlute_Staff" %! muda.score.instrument()
    {                                  %! muda.score.instrument()
        \context Voice = "AltoFlute_Voice_1" %! muda.score.instrument()
        {                                    %! muda.score.instrument()
            bf2 %! Mat_A
            r4 %! Mat_A
            bqf8 %! Mat_A
            fs'8 %! Mat_A
            \times 4/5 { %! Mat_B
                g'8 %! Mat_B
                [ %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r4
            r2
            fs'2 %! Mat_A
            r4 %! Mat_A
            g'8 %! Mat_A
            bqf4.
            ~
            bqf8
            r8
            r8
            g'8 %! Mat_A
            bf4 %! Mat_A
            \times 8/9 { %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r2. %! Rests
            bqf2 %! Mat_A
            r4 %! Mat_A
            g'8 %! Mat_A
            bf4.
            ~
            bf8
            r8 %! Mat_A
            \times 8/9 { %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf2 %! Mat_A
            r4 %! Mat_A
            g'8 %! Mat_A
            bf8 %! Mat_A
            \times 8/9 { %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf2 %! Mat_A
            r4 %! Mat_A
            g'8 %! Mat_A
            bf8 %! Mat_A
            \tweak text #tuplet-number::calc-fraction-text %! Mat_B
            \times 10/11 {                                 %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bf8
            ~
            bf4.
            r4 %! Mat_A
            bqf8 %! Mat_A
            fs'4.
            ~
            fs'8
            r4 %! Mat_A
            g'8 %! Mat_A
            bqf4
            ~
            bqf4
            r4 %! Mat_A
            g'8 %! Mat_A
            bf8
            ~
            bf4
            \times 2/3 { %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r8
            r8
        } %! muda.score.instrument()
    } %! muda.score.instrument()
    \context Staff = "BassClarinet_Staff" %! muda.score.instrument()
    {                                     %! muda.score.instrument()
        \context Voice = "BassClarinet_Voice_1" %! muda.score.instrument()
        {                                       %! muda.score.instrument()
            r2 %! Mat_A
            bf4 %! Mat_A
            r4 %! Mat_A
            \times 4/5 { %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r4
            r2
            r2 %! Mat_A
            bf4 %! Mat_A
            r2 %! Mat_A
            bqf4 %! Mat_A
            r2 %! Mat_A
            \times 8/9 { %! Mat_B
                fs'8 %! Mat_B
                [ %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r2. %! Rests
            r2 %! Mat_A
            g'4 %! Mat_A
            r2 %! Mat_A
            bf4 %! Mat_A
            \times 8/9 { %! Mat_B
                bqf8 %! Mat_B
                [ %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r2. %! Rests
            bqf4 %! Mat_A
            r4 %! Mat_A
            \times 8/9 { %! Mat_B
                g'8 %! Mat_B
                [ %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r2. %! Rests
            fs'4 %! Mat_A
            r4 %! Mat_A
            \tweak text #tuplet-number::calc-fraction-text %! Mat_B
            \times 10/11 {                                 %! Mat_B
                g'8 %! Mat_B
                [ %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                g'8 %! Mat_B
                bqf8 %! Mat_B
                g'8 %! Mat_B
                bf8 %! Mat_B
                bqf8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r4. %! Rests
            r4.
            fs'4 %! Mat_A
            r8
            r4.
            g'4 %! Mat_A
            r8
            r4.
            bqf4 %! Mat_A
            r2 %! Mat_A
            g'4 %! Mat_A
            \times 2/3 { %! Mat_B
                bf8 %! Mat_B
                [ %! Mat_B
                bqf8 %! Mat_B
                fs'8 %! Mat_B
                ] %! Mat_B
            } %! Mat_B
            r8
            r8
        } %! muda.score.instrument()
    } %! muda.score.instrument()
    \context PianoStaff = "Piano_StaffGroup" %! muda.score.instrument()
    <<                                       %! muda.score.instrument()
        \context Staff = "Piano_Staff_1" %! muda.score.instrument()
        {                                %! muda.score.instrument()
            \context Voice = "Piano_Voice_1" %! muda.score.instrument()
            {                                %! muda.score.instrument()
                bf8 %! Mat_A
                bqf8
                ~
                bqf4
                ~
                bqf8
                fs'8
                ~
                fs'8
                g'8 %! Mat_A
                \times 8/9 { %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bf16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    fs'16 %! Mat_B
                    r16 %! Mat_B
                } %! Mat_B
                r4
                r2
                g'8 %! Mat_A
                bqf8
                ~
                bqf4.
                g'8
                ~
                g'8
                bf8 %! Mat_A
                bqf4
                ~
                bqf4
                fs'4 %! Mat_A
                g'8 %! Mat_A
                bqf8 %! Mat_A
                \times 16/17 { %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bf16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    fs'16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bf16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    fs'16 %! Mat_B
                    r16 %! Mat_B
                } %! Mat_B
                r2. %! Rests
                g'8 %! Mat_A
                bqf8
                ~
                bqf4.
                g'8
                ~
                g'8
                bf8 %! Mat_A
                bqf4
                ~
                bqf4
                \times 16/17 { %! Mat_B
                    fs'16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bf16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    fs'16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                } %! Mat_B
                r4 %! Rests
                bf8 %! Mat_A
                bqf4.
                ~
                bqf8
                fs'8
                ~
                fs'8
                g'8 %! Mat_A
                \times 16/17 { %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bf16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    fs'16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bf16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                } %! Mat_B
                r4 %! Rests
                fs'8 %! Mat_A
                g'4.
                ~
                g'8
                bqf8
                ~
                bqf8
                g'8 %! Mat_A
                \tweak text #tuplet-number::calc-fraction-text %! Mat_B
                \times 20/21 {                                 %! Mat_B
                    bf16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    fs'16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    bf16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    fs'16 %! Mat_B
                    g'16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    g'16 %! Mat_B
                    bf16 %! Mat_B
                } %! Mat_B
                r4 %! Rests
                bqf8 %! Mat_A
                fs'4.
                ~
                fs'8
                g'4 %! Mat_A
                bqf8 %! Mat_A
                g'4
                ~
                g'4
                bf8
                ~
                bf8
                bqf8 %! Mat_A
                fs'8
                ~
                fs'4
                ~
                fs'8
                g'8
                ~
                g'8
                bqf8 %! Mat_A
                g'4 %! Mat_A
                \times 4/5 { %! Mat_B
                    bf16 %! Mat_B
                    r16 %! Mat_B
                    bqf16 %! Mat_B
                    r16 %! Mat_B
                    fs'16 %! Mat_B
                } %! Mat_B
                r8
                r8
            } %! muda.score.instrument()
            \context Voice = "Piano_Voice_2" %! muda.score.instrument()
            {                                %! muda.score.instrument()
            } %! muda.score.instrument()
        } %! muda.score.instrument()
        \context Staff = "Piano_Staff_2" %! muda.score.instrument()
        <<                               %! muda.score.instrument()
            \context Voice = "Piano_Voice_3" %! muda.score.instrument()
            {                                %! muda.score.instrument()
                bf2 %! Mat_A
                ~
                bf8 %! Mat_A
                bqf8
                ~
                bqf4
                \times 2/3 { %! Mat_B
                    fs'4 %! Mat_B
                    r4 %! Mat_B
                    g'4 %! Mat_B
                } %! Mat_B
                r4
                r2
                bqf2 %! Mat_A
                ~
                bqf8 %! Mat_A
                g'8
                ~
                g'2
                bf2 %! Mat_A
                ~
                bf8 %! Mat_A
                bqf8 %! Mat_A
                \times 4/5 { %! Mat_B
                    fs'4 %! Mat_B
                    r4 %! Mat_B
                    g'4 %! Mat_B
                    r4 %! Mat_B
                    bqf4 %! Mat_B
                } %! Mat_B
                r2. %! Rests
                g'2 %! Mat_A
                ~
                g'8 %! Mat_A
                bf8
                ~
                bf2
                bqf4 %! Mat_A
                \times 4/5 { %! Mat_B
                    fs'4 %! Mat_B
                    r4 %! Mat_B
                    g'4 %! Mat_B
                    r4 %! Mat_B
                    bqf4 %! Mat_B
                } %! Mat_B
                r4 %! Rests
                g'2 %! Mat_A
                ~
                g'8 %! Mat_A
                bf4. %! Mat_A
                \times 4/5 { %! Mat_B
                    bqf4 %! Mat_B
                    r4 %! Mat_B
                    fs'4 %! Mat_B
                    r4 %! Mat_B
                    g'4 %! Mat_B
                } %! Mat_B
                r4 %! Rests
                bqf2 %! Mat_A
                ~
                bqf8 %! Mat_A
                g'4. %! Mat_A
                \tweak text #tuplet-number::calc-fraction-text %! Mat_B
                \times 5/6 {                                   %! Mat_B
                    bf4 %! Mat_B
                    r4 %! Mat_B
                    bqf4 %! Mat_B
                    r4 %! Mat_B
                    fs'4 %! Mat_B
                    g'4 %! Mat_B
                } %! Mat_B
                r4 %! Rests
                bqf8
                ~
                bqf4.
                ~
                bqf8 %! Mat_A
                g'4
                ~
                g'4.
                bf4.
                ~
                bf4
                bqf8
                ~
                bqf2
                fs'2 %! Mat_A
                g'4 %! Mat_B
                r8
                r8
            } %! muda.score.instrument()
            \context Voice = "Piano_Voice_4" %! muda.score.instrument()
            {                                %! muda.score.instrument()
            } %! muda.score.instrument()
        >> %! muda.score.instrument()
    >> %! muda.score.instrument()
    \context Staff = "Violin_Staff" %! muda.score.instrument()
    {                               %! muda.score.instrument()
        \context Voice = "Violin_Voice_1" %! muda.score.instrument()
        {                                 %! muda.score.instrument()
            bf2. %! Mat_A
            bqf4 %! Mat_A
            \times 4/5 { %! Mat_B
                fs'8 %! Mat_B
                r4 %! Mat_B
                g'8 %! Mat_B
                r8 %! Mat_B
            } %! Mat_B
            r4
            r2
            bqf2. %! Mat_A
            g'4 %! Mat_A
            bf4
            ~
            bf4
            bqf2 %! Mat_A
            \times 8/9 { %! Mat_B
                fs'8 %! Mat_B
                r4 %! Mat_B
                g'8 %! Mat_B
                r4 %! Mat_B
                bqf8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r2. %! Rests
            g'2. %! Mat_A
            bf4 %! Mat_A
            bqf4
            ~
            bqf4
            \times 8/9 { %! Mat_B
                fs'8 %! Mat_B
                r4 %! Mat_B
                g'8 %! Mat_B
                r4 %! Mat_B
                bqf8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            g'2
            ~
            g'4
            bf4 %! Mat_A
            \times 8/9 { %! Mat_B
                bqf8 %! Mat_B
                r4 %! Mat_B
                fs'8 %! Mat_B
                r4 %! Mat_B
                g'8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf2
            ~
            bqf4
            g'4 %! Mat_A
            \tweak text #tuplet-number::calc-fraction-text %! Mat_B
            \times 10/11 {                                 %! Mat_B
                bf8 %! Mat_B
                r4 %! Mat_B
                bqf8 %! Mat_B
                r4 %! Mat_B
                fs'8 %! Mat_B
                r4 %! Mat_B
                g'8 %! Mat_B
                r8 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf8
            ~
            bqf4.
            ~
            bqf4
            g'8
            ~
            g'8
            bf4
            ~
            bf4
            bqf8
            ~
            bqf4.
            ~
            bqf4
            fs'4 %! Mat_A
            g'2 %! Mat_A
            \times 2/3 { %! Mat_B
                bqf8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r8
            r8
        } %! muda.score.instrument()
    } %! muda.score.instrument()
    \context Staff = "Viola_Staff" %! muda.score.instrument()
    {                              %! muda.score.instrument()
        \context Voice = "Viola_Voice_1" %! muda.score.instrument()
        {                                %! muda.score.instrument()
            bf2. %! Mat_A
            bqf4 %! Mat_A
            \times 4/5 { %! Mat_B
                fs'8 %! Mat_B
                r4. %! Mat_B
                g'8 %! Mat_B
            } %! Mat_B
            r4
            r2
            bqf2. %! Mat_A
            g'2 %! Mat_A
            bf4 %! Mat_A
            bqf2 %! Mat_A
            \times 8/9 { %! Mat_B
                fs'8 %! Mat_B
                r4. %! Mat_B
                g'8 %! Mat_B
                r4. %! Mat_B
                bqf8 %! Mat_B
            } %! Mat_B
            r2. %! Rests
            g'2. %! Mat_A
            bf2 %! Mat_A
            bqf4 %! Mat_A
            \times 8/9 { %! Mat_B
                fs'8 %! Mat_B
                r4. %! Mat_B
                g'8 %! Mat_B
                r4. %! Mat_B
                bqf8 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            g'2
            ~
            g'4
            bf4 %! Mat_A
            \times 8/9 { %! Mat_B
                bqf8 %! Mat_B
                r4. %! Mat_B
                fs'8 %! Mat_B
                r4. %! Mat_B
                g'8 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf2
            ~
            bqf4
            g'4 %! Mat_A
            \tweak text #tuplet-number::calc-fraction-text %! Mat_B
            \times 10/11 {                                 %! Mat_B
                bf8 %! Mat_B
                r4. %! Mat_B
                bqf8 %! Mat_B
                r4. %! Mat_B
                fs'8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            g'8
            ~
            g'4.
            ~
            g'4
            bqf8
            ~
            bqf4.
            g'4 %! Mat_A
            bf8
            ~
            bf4.
            ~
            bf4
            bqf2 %! Mat_A
            fs'4 %! Mat_A
            \times 2/3 { %! Mat_B
                g'8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r8
            r8
        } %! muda.score.instrument()
    } %! muda.score.instrument()
    \context Staff = "Cello_Staff" %! muda.score.instrument()
    {                              %! muda.score.instrument()
        \context Voice = "Cello_Voice_1" %! muda.score.instrument()
        {                                %! muda.score.instrument()
            bf8 %! Mat_A
            bqf8
            ~
            bqf4
            ~
            bqf8
            fs'16 %! Mat_A
            g'16
            ~
            g'16
            bqf8. %! Mat_A
            \times 4/5 { %! Mat_B
                g'8 %! Mat_B
                r2 %! Mat_B
            } %! Mat_B
            r4
            r2
            bf8 %! Mat_A
            bqf8
            ~
            bqf4.
            fs'16 %! Mat_A
            g'16
            ~
            g'16
            bqf8.
            ~
            bqf4
            ~
            bqf16
            g'16 %! Mat_A
            bf8 %! Mat_A
            bqf2 %! Mat_A
            \times 8/9 { %! Mat_B
                fs'8 %! Mat_B
                r2 %! Mat_B
                g'8 %! Mat_B
                r4. %! Mat_B
            } %! Mat_B
            r2. %! Rests
            bqf8 %! Mat_A
            g'8
            ~
            g'4.
            bf16 %! Mat_A
            bqf16
            ~
            bqf16
            fs'8.
            ~
            fs'4
            ~
            fs'16
            g'16 %! Mat_A
            bqf8 %! Mat_A
            \times 8/9 { %! Mat_B
                g'8 %! Mat_B
                r2 %! Mat_B
                bf8 %! Mat_B
                r4. %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf8 %! Mat_A
            fs'4.
            ~
            fs'8
            g'16 %! Mat_A
            bqf16
            ~
            bqf16
            g'8. %! Mat_A
            \times 8/9 { %! Mat_B
                bf8 %! Mat_B
                r2 %! Mat_B
                bqf8 %! Mat_B
                r4. %! Mat_B
            } %! Mat_B
            r4 %! Rests
            fs'8 %! Mat_A
            g'4.
            ~
            g'8
            bqf16 %! Mat_A
            g'16
            ~
            g'16
            bf8. %! Mat_A
            \tweak text #tuplet-number::calc-fraction-text %! Mat_B
            \times 10/11 {                                 %! Mat_B
                bqf8 %! Mat_B
                r2 %! Mat_B
                fs'8 %! Mat_B
                r2 %! Mat_B
                g'8 %! Mat_B
            } %! Mat_B
            r4 %! Rests
            bqf8 %! Mat_A
            g'4.
            ~
            g'8
            bf16 %! Mat_A
            bqf16
            ~
            bqf16
            fs'16
            ~
            fs'4.
            ~
            fs'16
            g'16 %! Mat_A
            bqf8 %! Mat_A
            g'8
            ~
            g'4.
            bf16 %! Mat_A
            bqf16
            ~
            bqf16
            fs'16
            ~
            fs'4
            ~
            fs'8.
            g'16 %! Mat_A
            bqf8 %! Mat_A
            g'8 %! Mat_A
            \times 2/3 { %! Mat_B
                bf8 %! Mat_B
                r4 %! Mat_B
            } %! Mat_B
            r8
            r8
        } %! muda.score.instrument()
    } %! muda.score.instrument()
>> %! muda.score.create_score()