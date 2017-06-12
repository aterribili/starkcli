module Component (newComponent) where


import Data.List.Utils (replace)

newComponent :: String -> String
newComponent name =
  replace "{ComponentName}" name fileContents
  where fileContents = "import React, { Component } from 'react';\nimport {\n  StyleSheet,\n} from 'react-native';\n\nexport default class {ComponentName} extends Component {\n  constructor(props) {\n    super(props);\n  }\n\n  render() {\n    return (\n\n    );\n  }\n}\n\nconst styles = StyleSheet.create({\n\n});\n\n{ComponentName}.propTypes = {\n\n};\n\n"

