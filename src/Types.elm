module Types exposing (..)

import Http


type alias Story =
    { title : String
    }


type alias News =
    List Story


type alias Model =
    {}


type Msg
    = LoadedNews (Result Http.Error News)
