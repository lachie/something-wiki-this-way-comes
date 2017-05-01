module Types exposing (..)

import Set


type alias Thing =
    { name : String
    , description : String
    , history : String
    , remindsMeOF : String
    , generalTags : TagSet
    , areaTags : TagSet
    , source : Source
    , area : Area
    , img : Image
    }


type alias Image =
    { src : String
    , description : String
    }


type alias Area =
    { name : String
    }


type Source
    = Person
    | Publication


type alias Person =
    { name : String
    , blurb : String
    , twitter : String
    , img : Image
    , met : String
    }


type alias Publication =
    { name : String
    , url : String
    }


type alias Tag =
    String


type alias TagSet =
    Set Tag
