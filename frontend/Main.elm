module Main exposing (..)

-- import Types

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Navigation
import Data exposing (mainThing)
import Types

main =
    Navigation.program Visit
    { init = init
    , view = view
    , update = update
    , subscriptions = (\_ -> Sub.none)
    }

type alias Model =
    { thing : Types.Thing
    }


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
  ( Model Data.mainThing,
  Cmd.none
  )


type Msg
  = Visit Navigation.Location

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Visit location ->
          ( { model | thing = Data.mainThing }
          , Cmd.none
          )

viewLink : String -> Html msg
viewLink name =
  a [ href ("#" ++ name) ] [ text name ]

viewLocation : Navigation.Location -> Html msg
viewLocation location =
  li [] [ text (location.pathname ++ location.hash) ]

view : Model -> Html Msg
view model =
    div []
        [ h2 [] [ text model.thing.name ]
        , viewLink "hello"
        ]
