module MainSpec where

import Component.Tests (spec)
import Test.Framework (defaultMain)

main :: IO()
main = defaultMain
  [ Component.Tests.spec ]

