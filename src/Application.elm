module Application exposing (..)

import Html exposing (Html)
import Html.App

import Foundation exposing (..)
import Templates
import Page.Home as HomePage
import Page.Product as ProductPage
import Routes exposing (Route)

initialApp =
  { route = Routes.HomeRoute
  , homePageModel = HomePage.initialModel
  , productPageModel = ProductPage.initialModel
  }

init : Result String Route -> (App, Cmd Msg)
init result =
  urlUpdate result initialApp

view : App -> Html Msg
view app =
  -- Templates.skeleton (viewContentAs app.route) app
  viewContentAs app.route app

update : Msg -> App -> (App, Cmd Msg)
update msg app =
  case msg of
    HomePageMsg m ->
      (app, Cmd.none)
    ProductPageMsg m ->
      (app, Cmd.none)
    _ ->
      (app, Cmd.none)

urlUpdate : Result String Route -> App -> (App, Cmd Msg)
urlUpdate result app =
  case result of
    Err _ ->
      (app, Cmd.none)
    Ok Routes.HomeRoute ->
      (app, Cmd.none)
    Ok (Routes.ProductRoute pid) ->
      (app, Cmd.none)

subscriptions : App -> (Sub Msg)
subscriptions app =
  Sub.none

viewContentAs : Route -> App -> Html Msg
viewContentAs route app =
  case route of
    Routes.HomeRoute ->
      let subView =
        (HomePage.view app.homePageModel)
      in
        Html.App.map HomePageMsg subView
    Routes.ProductRoute pid ->
      Html.App.map ProductPageMsg (ProductPage.view app.productPageModel)
