module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int

initialCount = 2

model : Model
model = initialCount


-- UPDATE


type Msg
    = Increment
    | Decrement
    | Reset

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1
        Reset ->
            initialCount
        Decrement ->
            model - 1


-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Reset ] [ text "Reset dat shizzz" ]
        , button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
