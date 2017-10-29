module Main exposing (main)

import Html exposing (Html, h1, div, text)

main = Html.beginnerProgram { model = 0, view = view, update = \_ _ -> 0 }

view : a -> Html msg
view _ = div [] [h1 [] [text "Hello World!"]]
