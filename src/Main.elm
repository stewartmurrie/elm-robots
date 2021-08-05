module Main exposing (main)

import Browser
import Element as El exposing (column, el, none, rgb255, row, text)
import Element.Background as Bg
import Element.Font as Font
import Html exposing (Html)



-- MODEL


type alias Robot =
    { x : Int
    , y : Int
    }


type alias Model =
    { robot : Robot
    }


type Msg
    = Msg1
    | Msg2



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg1 ->
            ( model, Cmd.none )

        Msg2 ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    El.layout [ Bg.color <| rgb255 34 34 56 ]
        (column
            [ Font.color <| rgb255 200 200 200 ]
            [ el [] <| text "elm-robots"
            , viewRobot model.robot
            ]
        )


viewRobot : Robot -> El.Element Msg
viewRobot robot =
    el [] <| text <| "🤖 @ (" ++ String.fromInt robot.x ++ ", " ++ String.fromInt robot.y ++ ")"



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model { x = 0, y = 0 }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
