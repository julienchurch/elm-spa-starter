module Routes exposing (..)

import UrlParser exposing (Parser, parse, format, int, oneOf, s, (</>))
import Navigation exposing (Location)
import String

type Route
  = HomeRoute
  | ProductRoute Int

urlParser : Navigation.Parser (Result String Route)
urlParser =
  Navigation.makeParser decode

routeParser : Parser (Route -> a) a
routeParser =
  oneOf
    [ format HomeRoute (s "")
    , format ProductRoute (s "product" </> int)
    ]

decode : Location -> Result String Route
decode location =
  parse identity routeParser (String.dropLeft 1 location.pathname)

encode : Route -> String
encode route =
  case route of
    HomeRoute ->
      "/"
    ProductRoute pid ->
      "/product/" ++ toString pid
