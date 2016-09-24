module Page.Product exposing (..)

import Html exposing (..)

type alias Model =
  { pid : Maybe Int
  }

initialModel =
  { pid = Nothing }

type Msg
  = NoOp

view : Model -> Html Msg
view model =
  div []
    [ text "This is the product view." ]
