module Rest exposing (..)

import Http
import Json.Decode exposing (..)
import Types exposing (..)

decodeStory : Decoder Story
decodeStory =

decodeNews : Decoder News
decodeNews = list decodeStory

loadNews : Cmd Msg
loadNews =
    Http.get decodeNews
        "https://hn.algolia.com/api/v1/search_by_date?tags=story&hitsPerPage=50"
