module Main exposing (..)

import Html exposing (li, text, ul)
import Html.Attributes exposing (class)


main =
    ul [ class "grocery-list" ]
        [ li [] [ text "one" ]
        , li [] [ text "two" ]
        , li [] [ text "three" ]
        , li [] [ text "four" ]
        , li [] [ text "five" ]
        ]
