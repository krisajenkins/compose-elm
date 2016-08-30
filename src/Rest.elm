module Rest exposing (..)

import Http
import Json.Decode exposing (..)
import Task
import Types exposing (..)


decodeStory : Decoder Story
decodeStory =
    object2 Story
        ("title" := string)
        ("url" := maybe string)


decodeNews : Decoder News
decodeNews =
    "hits" := list decodeStory


loadNews : Cmd Msg
loadNews =
    Cmd.map LoadedNews
        (Task.perform Err
            Ok
            (Http.get decodeNews url)
        )


url : String
url =
    "https://hn.algolia.com/api/v1/search_by_date?tags=story&hitsPerPage=50"
