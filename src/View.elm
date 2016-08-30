module View exposing (..)

import Html exposing (..)
import Types exposing (..)


root : Model -> Html Msg
root model =
    div []
        (case model.news of
            Ok stories ->
                List.map storyView stories

            Err err ->
                [ text (toString err) ]
        )


storyView : Story -> Html Msg
storyView story =
    h3 [] [ text story.title ]
