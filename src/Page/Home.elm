module Page.Home exposing (..)

import Html exposing (..)

type alias Model =
  ()

initialModel =
  ()

type Msg
  = NoOp

view : Model -> Html Msg
view model =
  div []
    [ text "This is the home page." ]
