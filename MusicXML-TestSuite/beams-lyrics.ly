
\version "2.17.3"
% automatically converted by musicxml2ly from beams-lyrics.xml

\header {
    texidoc = "Under some circumstances syllables aligned to notes 
      with manual beams are swallowed by musicxml2ly."
    title = "beams and lyrics"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  {
    \clef "treble" \key c \major \time 4/4 c'8. [ c'16 ] c'2. }

PartPOneVoiceOneLyricsOne =  \lyricmode { Syl -- ble }

% The score definition
\score {
    <<
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

