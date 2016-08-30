module Types exposing (..)

import Http


type alias Story =
    { title : String
    , url : Maybe String
    }


type alias News =
    List Story


type alias Model =
    { news : Result Http.Error News }


type Msg
    = LoadedNews (Result Http.Error News)
