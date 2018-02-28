module Main exposing (..)

import Html exposing (text)


four =
    sqrt 100


eleven =
    max 2 11


twenty =
    max (sqrt 100) (4 * 5)


add x y =
    x + y


factorial n =
    List.product (List.range 1 n)


main =
    text (toString (add 1 (factorial 4)))
