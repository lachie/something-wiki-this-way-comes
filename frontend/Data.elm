module Data exposing (..)

import Types
import WikiTypes as Wiki
import Set


myself =
    Types.SourcePerson (Types.Person "Lachie" (Just "its me!") Nothing Nothing Nothing)


mainArea =
    Types.Area "main"


mainThing : Types.Thing
mainThing =
    Types.Thing "main" (Wiki.parse "desc main thing") (Wiki.parseMaybe "history") (Wiki.parseMaybe "reminds me of") Set.empty Set.empty myself mainArea Nothing



-- { name : String
-- , description : Wiki.Text
-- , history : Maybe Wiki.Text
-- , remindsMeOF : Maybe Wiki.Text
-- , generalTags : TagSet
-- , areaTags : TagSet
-- , source : Source
-- , area : Area
-- , img : Wiki.Image
