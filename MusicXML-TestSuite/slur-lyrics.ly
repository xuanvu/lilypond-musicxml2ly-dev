
\version "2.17.3"
% automatically converted by musicxml2ly from slur-lyrics.xml

\header {
    texidoc = "middle syllables aligned to slurred notes are swallowed by musicxml2ly."
    title = "musicxml2ly swallows syllables"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  {
    \clef "treble" \key c \major \time 4/4 c''2 ( b'2 ) | % 2
    c''1 }

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

