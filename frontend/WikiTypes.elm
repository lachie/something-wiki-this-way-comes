module WikiTypes exposing (..)

parseMaybe : String -> Maybe Text
parseMaybe input =
  Just (parse input)

parse : String -> Text
parse input =
  [ Text input ]

type alias Text =
    List Fragment


type Fragment
    = Text String
    | Link
    | FragmentImage Image

type Link
    = WikiLink
    { text : Maybe String
    , link : String
    }
    | ExternalLink
    { text : Maybe String
    , url : String
    }


type alias Image = { src : String
    , description : String
    }

