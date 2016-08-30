module Types exposing (..)


type alias Story =
    { title : String
    }


type alias News =
    List Story


type alias Model =
    {}


type Msg
    = Noop
