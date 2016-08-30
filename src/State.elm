module State exposing (..)

import Rest
import Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( { news = Ok [] }
    , Rest.loadNews
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LoadedNews response ->
            ( { model | news = response }
            , Cmd.none
            )
