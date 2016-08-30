module View exposing (..)

import Html exposing (..)
import Types exposing (..)


root : Model -> Html Msg
root model =
    div []
        [ code []
            [ text (toString model) ]
        ]
