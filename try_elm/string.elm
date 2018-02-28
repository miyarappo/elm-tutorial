module Main exposing (..)

import Html exposing (Html, li, ol, text)
import Html.Attributes exposing (style)
import String


main =
    viewStrings
        [ "hello"
        , "ho" ++ "la"
        , String.reverse "desserts"
        , String.right 4 "foxlove"
        , String.left 20 "All happy families are alike; each unhappy family is unhappy in its own way."
        ]


viewStrings : List String -> Html msg
viewStrings strings =
    ol [ style [ ( "font-size", "20px" ) ] ] (List.map viewString strings)


viewString : String -> Html msg
viewString string =
    li [] [ text (toString string) ]
