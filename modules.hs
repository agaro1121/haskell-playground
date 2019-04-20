import Data.Set -- imports everything
import qualified Data.Sequence -- imports only `Sequence`
import qualified Data.Sequence as Seq -- imports only and renames
import Data.Map (empty, size) -- specific things
import Data.Map hiding (singleton) -- hides specific things

-- no control over importing typeclass instances
import Data.Set () -- imports only typeclass instances
