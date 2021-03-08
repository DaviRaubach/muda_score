\version "2.21.0"
\language "english"
#(set-global-staff-size 13)


#(ly:set-option 'relative-includes #t)
\include "/Users/Davi/github/my_venv_modules/abjad/docs/source/_stylesheets/abjad.ily"
\include "/Users/Davi/github/muda_score/muda_score/stylesheet.ily"

\score {
  {
    \include "/Users/Davi/github/muda_score/muda_score/segment_00.ly"
    \include "segment_01.ly"
  }
  \layout { }
  \midi { }

}
