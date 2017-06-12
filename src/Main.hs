{-# LANGUAGE QuasiQuotes #-}

module Main (
  main,
) where


import System.Environment (getArgs)
import System.Console.Docopt
import Control.Monad (when)
import Component (newComponent)

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
    name <- args `getArgOrExit` (argument "name")
    writeFile (name ++ ".js") (newComponent name)

