module App exposing (main)

import Html.App
import State


main : Program Never
main =
    Html.App.program
        { init = State.init
        , update = State.update
        , subscriptions = Sub.none
        , view = View.root
        }
