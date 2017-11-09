decodeContent : Decoder String
decodeContent =
  at [ "id", "title", "body" ] string

type alias Model =
  { title : String
  }

module Main exposing (..)

import Html exposing (text)

main : Program Never Model Msg
main =
  Html.program
    { init          = init
    , update        = update
    , view          = view
    , subscriptions = always Sub.none
    }
