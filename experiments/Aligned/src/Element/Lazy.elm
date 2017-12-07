module Element.Lazy exposing (lazy)

{-| -}

import Internal.Model exposing (..)
import VirtualDom


{-| -}
lazy : (a -> Element msg) -> a -> Element msg
lazy fn a =
    Unstyled <| VirtualDom.lazy3 embed fn a



-- {-| -}
-- lazy2 : (a -> b -> Element msg) -> a -> b -> Element msg
-- lazy2 fn a b =
--     Unstyled <| VirtualDom.lazy3 embed2 fn a b
