testing
testGetWiki
  | req resp |
  req := self getRequest: 'wiki' arguments: {('name' -> 'ume')}.
  resp := self jsonResponseFor: req.
  self assert: (resp at: 'title') = 'ume wiki'.
  self assert: (resp at: 'name') = 'ume'.
  self assert: (resp at: 'count') = 1.
  self assert: (resp at: 'ownedBy') = '4saYpbYbngfMl6N4YPLWn8kJHAC2'