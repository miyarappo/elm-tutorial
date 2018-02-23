module Main exposing (..)

import Html exposing (Html, div, program, text)
import Keyboard
import Mouse


-- model


type alias Model =
    Int


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )



-- message


type Msg
    = MouseMsg Mouse.Position
    | KeyMsg Keyboard.KeyCode



-- view


view : Model -> Html Msg
view model =
    div []
        [ text (toString model) ]



-- update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MouseMsg position ->
            ( model + 1, Cmd.none )

        KeyMsg code ->
            ( model + 2, Cmd.none )



-- subscription


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Mouse.clicks MouseMsg
        , Keyboard.downs KeyMsg
        ]



-- main


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
