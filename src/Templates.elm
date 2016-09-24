module Templates exposing (..)

import Html exposing (..)
import Foundation exposing (..)
import Routes

globalHeader : App -> Html Msg
globalHeader app =
  header []
    []

globalFooter : App -> Html Msg
globalFooter app =
  footer []
    []

-- skeleton : App -> Html Msg
skeleton view app =
  div []
    [ globalHeader app
    , view app
    , globalFooter app
    ]

