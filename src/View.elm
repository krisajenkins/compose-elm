module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
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
    case story.url of
        Nothing ->
            h3 [] [ text story.title ]

        Just url ->
            a
                [ href url
                , target "blank"
                ]
                [ h3 [] [ text story.title ] ]
