{--
    You *can* load an external CSS file in Elm, but currently,
    in Pure Elm that means adding a style element to the body instead of the head.
    
    It does cause a flash of unstyled content, so I think it's only useful
    for testing in Reactor.
--}


module Main exposing (main, stylesheet)

import Html exposing (..)
import Html.Attributes exposing (..)


stylesheet =
    let
        tag =
            "link"

        attrs =
            [ attribute "rel" "stylesheet"
            , attribute "property" "stylesheet"
            , attribute "href" "https://kalz2q.github.io/elm-projects/css/styles.css"
            ]

        children =
            []
    in
    node tag attrs children


main =
    text "this is a pen"
