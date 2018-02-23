module Main exposing (main)

import Html exposing (Attribute, Html, div, input, li, program, text, ul)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)
import String


-- model


type alias Model =
    { task : String
    , todos : List String
    }


init =
    ( { todos = [], task = "" }, Cmd.none )


type Msg
    = InputText String
    | AddTask



-- update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg ({ task, todos } as model) =
    case msg of
        InputText text ->
            ( { model | task = text }, Cmd.none )

        AddTask ->
            ( { model | todos = task :: todos, task = "" }, Cmd.none )



-- view


view : Model -> Html Msg
view { task, todos } =
    let
        todoList =
            List.map (\task -> ul [] [ text task ]) todos
    in
    div []
        [ input [ placeholder "NewTask", value task, onInput InputText ] []
        , input [ type_ "button", value "add", onClick AddTask ] []
        , ul [] todoList
        ]


main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
