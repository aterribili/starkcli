module Component.Tests (spec) where


import Component (newComponent)
import Test.Hspec

fileContents = "import React, { Component } from 'react';\nimport {\n  StyleSheet,\n} from 'react-native';\n\nexport default class {ComponentName} extends Component {\n  constructor(props) {\n    super(props);\n  }\n\n  render() {\n    return (\n\n    );\n  }\n}\n\nconst styles = StyleSheet.create({\n\n});\n\n{ComponentName}.propTypes = {\n\n};\n\n"

spec =
  describe "generating component with name" $ do
    it "when name is valid" $ do
      newComponent "stark" `shouldBe` fileContents

