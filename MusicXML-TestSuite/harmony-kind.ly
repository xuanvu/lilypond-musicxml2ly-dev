
\version "2.15.24"
% automatically converted by musicxml2ly from harmony-kind.xml

\header {
    texidoc = "Test file for all values of the <kind> element in which all (supported) types of chords are defined. "
    title = "chord types"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 | % 1
    c1 ^\markup{ \bold {Triads} } | % 2
    c1 | % 3
    c1 | % 4
    c1 \bar "||"
    \break | % 5
    c1 ^\markup{ \bold {Sevenths} } | % 6
    c1 | % 7
    c1 | % 8
    c1 | % 9
    c1 | \barNumberCheck #10
    c1 \bar "||"
    \break | % 11
    c1 ^\markup{ \bold {Sixths} } | % 12
    c1 \bar "||"
    \break | % 13
    c1 ^\markup{ \bold {Ninths} } | % 14
    c1 | % 15
    c1 \bar "||"
    \break | % 16
    c1 ^\markup{ \bold {11ths} } | % 17
    c1 | % 18
    c1 \bar "||"
    \break | % 19
    c1 ^\markup{ \bold {13ths} } | \barNumberCheck #20
    c1 | % 21
    c1 \bar "||"
    \break | % 22
    c1 ^\markup{ \bold {Suspended} } | % 23
    c1 \bar "||"
    \break | % 24
    c1 ^\markup{ \bold {Functional sixths} } | % 25
    c1 | % 26
    c1 | % 27
    c1 \bar "||"
    \break | % 28
    c1 ^\markup{ \bold {Other} } | % 29
    c1 | \barNumberCheck #30
    c1 \bar "||"
    \break | % 31
    c1 ^\markup{ \bold {None} } \bar "||"
    c1 ^\markup{ \bold {other} } \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    c1:5 | % 2
    c1:m5 | % 3
    c1:aug5 | % 4
    c1:dim5 \bar "||"
    c1:7 | % 6
    c1:maj7 | % 7
    c1:m7 | % 8
    c1:dim7 | % 9
    c1:aug7 | \barNumberCheck #10
    c1:maj7m5 \bar "||"
    c1:6 | % 12
    c1:m6 \bar "||"
    c1:9 | % 14
    c1:maj9 | % 15
    c1:m9 \bar "||"
    c1:11 | % 17
    c1:maj11 | % 18
    c1:m11 \bar "||"
    c1:13.11 | \barNumberCheck #20
    c1:maj13.11 | % 21
    c1:m13 \bar "||"
    c1:sus2 | % 23
    c1:sus4 \bar "||"
    s1 | % 25
    s1 | % 26
    s1 | % 27
    s1 \bar "||"
    s1 | % 29
    c1:1.5 | \barNumberCheck #30
    s1 \bar "||"
    s1 \bar "||"
    c1:1 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { major minor augmented
    diminished dominant "major-seventh" "minor-seventh"
    "diminished-seventh" "augmented-seventh" "major-minor" "major-sixth"
    "minor-sixth" "dominant-ninth" "major-ninth" "minor-ninth"
    "dominant-11th" "major-11th" "minor-11th" "dominant-13th"
    "major-13th" "minor-13th" "suspended-second" "suspended-fourth"
    Neapolitan Italian French German pedal power Tristan none other }

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
                        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
                        >>
                    >>
                >>
            
            >>
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

