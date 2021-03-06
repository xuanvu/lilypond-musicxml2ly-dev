
\version "2.15.24"
% automatically converted by musicxml2ly from 61b-MultipleLyrics.xml

\header {
    texidoc = "Multiple (simple) lyrics. The 
          order of the exported stanzas is relevant (identified by the number 
          attribute in this test case)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  {
    \clef "treble" \key c \major \time 4/4 g'4 g'4 g'4 g'4 | % 2
    g'4 g'4 g'4 g'4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "1.Tra" -- la -- "la," "ja! "
    __ \skip4 Tra -- \skip4 "ra..." }
PartPOneVoiceOneLyricsTwo =  \lyricmode { "2.tra" -- la -- "la," "ja! "
    __ \skip4 Tra -- \skip4 "ra." }
PartPOneVoiceOneLyricsThree =  \lyricmode { "3.TRA" -- LA -- "LA," "JA!
    " __ \skip4 TRA -- \skip4 "RA..." }

% The score definition
\score {
    <<
 <<
            <<
 \new Staff <<
 %                   \context Staff << 
                        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
                        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
                        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsThree
%                        >>
                    >>
                >>
            
            >>
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

