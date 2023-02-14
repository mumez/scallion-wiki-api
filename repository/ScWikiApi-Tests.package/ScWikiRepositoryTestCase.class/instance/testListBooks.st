testing
testListBooks
  | repos |
  repos := ScWikiRepository default.
  self assert: repos books size = 2.
  self assert: (repos bookNamed: 'ume') notNil.
  self assert: (repos bookNamed: 'squeak') notNil