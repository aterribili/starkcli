{-# LANGUAGE QuasiQuotes #-}
import System.Environment (getArgs)
import System.Console.Docopt
import Control.Monad (when)
import Data.List.Utils

usageText :: Docopt
usageText = [docopt|
Usage:
  rn new <name>...

Options:
  -h, --help Print this help message
|]

getArgOrExit = getArgOrExitWith usageText

main :: IO ()
main = do
  args <- parseArgsOrExit usageText =<< getArgs

  when (args `isPresent` (command "new")) $ do
    file <- args `getArgOrExit` (argument "name")
    contents <- readFile "component"
    writeFile (file ++ ".js") (replace "{ComponentName}" file contents)

