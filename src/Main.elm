module Main exposing (main)

import Browser
import Element as El exposing (column, el, none, rgb255, row, text)
import Element.Background as Bg
import Element.Font as Font
import Html exposing (Html)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    { property : Int
    , property2 : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model 0 "modelInitialValue2", Cmd.none )


type Msg
    = Msg1
    | Msg2


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg1 ->
            ( model, Cmd.none )

        Msg2 ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    El.layout [ Bg.color <| rgb255 34 34 56 ]
        (column
            [ Font.color <| rgb255 200 200 200 ]
            [ el [] <| text "elm-robot 🤖" ]
        )
