module Foundation exposing (..)

import Page.Home as HomePage
import Page.Product as ProductPage
import Routes

type alias App =
  { route : Routes.Route
  , homePageModel : HomePage.Model
  , productPageModel : ProductPage.Model
  }

type alias Path =
  String

type Msg
  = Go Path
  | HomePageMsg HomePage.Msg
  | ProductPageMsg ProductPage.Msg


