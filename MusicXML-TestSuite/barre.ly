
\version "2.15.37"
% automatically converted by musicxml2ly from barre.xml

\header {
    miscellaneous = "LilyPond v2.15.41 did not engrave a barre symbol. musicxml2ly threw the following error: \"indexerror: list index out of range python\""
    title = barre
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  {
  \override TextScript #'thickness = #'1.2
%  \override TextScript
%      #'(fret-diagram-details dot-color) = #'green
%\override TextScript
%      #'(fret-diagram-details barre-type) = #'straight

    \clef "treble" \key c \major \time 4/4 | % 1
    <e'' b' g' c'>1 ^\markup { %\override #'(size . 1.0) {
        \override #'(fret-diagram-details . (
                     (number-type . roman-upper)
                     (finger-code . in-dot)
                     (barre-type . straight))){
                     \fret-diagram
        #"p:0;s:1.5;d:0.5;h:7;w:7;c:5-1-8;5-8-1;4-10-3;3-9-2;2-10-4;1-8-1;" 
                      
%%{\markup 
%\fret-diagram-verbose
%  #'((mute 6) (mute 5) (open 4)
%     (place-fret 3 2) (place-fret 2 3) (place-fret 1 2)
%     (thickness 1.5)
%     )
     %}
                     }
      }
        
%        \bar "|."
c'1^\markup {
      \override #'(fret-diagram-details . (
                   (finger-code . below-string)
                   (number-type . arabic)
                   (label-dir . -1)
                   (mute-string . "M")
                   (orientation . landscape)
                   (barre-type . none)
                   (dot-color . black)
                   (xo-font-magnification . 0.4)
                   (xo-padding . 0.3))) {
        \fret-diagram-verbose #'((mute 6)
                                 (place-fret 5 3 1)
                                 (place-fret 4 5 2)
                                 (place-fret 3 5 3)
                                 (place-fret 2 5 4)
                                 (place-fret 1 3 1)
                                 (barre 5 1 3))
      }
    }
c'1^\markup {
      \override #'(fret-diagram-details . (
                   (finger-code . below-string)
                   (number-type . arabic)
                   (label-dir . -1)
                   (mute-string . "M")
                   (orientation . portrait)
                   (barre-type . straight)
                   (xo-font-magnification . 0.4)
                   (xo-padding . 0.3))) {
        \fret-diagram-verbose #'((mute 6)
                                 (place-fret 5 3 1)
                                 (place-fret 4 5 2)
                                 (place-fret 3 5 3)
                                 (place-fret 2 5 4)
                                 (place-fret 1 3 1)
                                 (barre 5 1 3))
      }
    }

    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    c1:maj7 \bar "|."
    }


% The score definition
\score {
    <<
 <<
            <<
 \context ChordNames = "PartPOneVoiceOneChords"
                \PartPOneVoiceOneChords
                \new Staff <<
                    \context Staff << 
                        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                        >>
                    >>
                >>
            
            >>
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100}
    }

