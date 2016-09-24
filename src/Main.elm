module Main exposing (..)

import Application as App
import Navigation
import Routes

main : Program Never
main =
  Navigation.program
    Routes.urlParser
    { init = App.init 
    , view = App.view
    , update = App.update
    , urlUpdate = App.urlUpdate
    , subscriptions = App.subscriptions
    }
