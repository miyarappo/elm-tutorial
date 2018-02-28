module Main exposing (..)

import Html exposing (text)


increment : Int -> Int
increment n =
    n + 1


inNear : Int -> Int -> Bool
inNear x y =
    -- 絶対値
    abs (x - y) < 10


main =
    text (toString (isNear 72 (incremnt 75)))
