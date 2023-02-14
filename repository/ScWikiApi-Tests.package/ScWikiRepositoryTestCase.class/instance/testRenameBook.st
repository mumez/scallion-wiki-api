testing
testRenameBook
  | repos result |
  repos := ScWikiRepository default.
  self assert: repos books size = 2.
  self assert: (repos bookNamed: 'ume') notNil.
  result := repos renameBookFrom: 'ume' to: 'ume2'.
  self assert: result value == true.
  self assert: (repos bookNamed: 'ume') isNil.
  self assert: (repos bookNamed: 'ume2') notNil.
  self assert: ((repos bookNamed: 'ume2') name = 'ume2') notNil