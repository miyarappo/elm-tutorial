module Main exposing (..)

import Html exposing (text)


isOver9000 powerLevel =
    if powerLevel > 9000 then
        "It`s over 9000!!!"
    else
        "meh"


assessments =
    [ isOver9000 5
    , isOver9000 1234
    , isOver9000 6789
    , isOver9000 9999
    ]


main =
    text (toString assessments)


assessPowerLevel powerLevel =
    if powerLevel > 9000 then
        "great!"
    else if powerLevel > 6000 then
        "good!"
    else if powerLevel > 1000 then
        "normal"
    else
        "one more!"
