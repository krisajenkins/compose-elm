module Rest exposing (..)

import Http
import Types exposing (..)


decodeNews : Decoder News


loadNews : Cmd Msg
loadNews =
    Http.get decodeNews
        "https://hn.algolia.com/api/v1/search_by_date?tags=story&hitsPerPage=50"
