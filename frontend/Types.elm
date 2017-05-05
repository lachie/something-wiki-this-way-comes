module Types exposing (..)

import Set exposing(Set(..))
import WikiTypes as Wiki


type alias Thing =
    { name : String
    , description : Wiki.Text
    , history : Maybe Wiki.Text
    , remindsMeOF : Maybe Wiki.Text
    , generalTags : TagSet
    , areaTags : TagSet
    , source : Source
    , area : Area
    , img : Maybe Wiki.Image
    }


type alias Area =
    { name : String
    }


type Source
    = SourcePerson Person
    | SourceSite Site


type alias Person =
    { name : String
    , blurb : Maybe String
    , twitter : Maybe String
    , img : Maybe Wiki.Image
    , met : Maybe String
    }


type alias Site =
    { name : String
    , url : Maybe String
    }


type alias Tag =
    String


type alias TagSet =
    Set Tag
