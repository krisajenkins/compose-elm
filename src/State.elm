module State exposing (..)

import Rest
import Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( {}, Rest.loadNews )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LoadedNews _ ->
            ( model, Cmd.none )
