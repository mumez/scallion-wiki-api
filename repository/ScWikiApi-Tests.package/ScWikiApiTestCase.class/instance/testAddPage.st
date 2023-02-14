testing
testAddPage
  | req resp wikiUme wikiSqueak |
  req := self
    postRequest: 'page'
    arguments:
      {('wiki' -> 'ume').
      ('name' -> 'hello').
      ('content' -> 'hello content').
      ('updatedBy' -> 'updater1')}.
  resp := self jsonResponseFor: req.
  self assert: (resp at: 'name') = 'hello'.
  self assert: (resp at: 'content') = 'hello content'.
  self assert: (resp at: 'updatedBy') = 'updater1'.
  self assert: (resp at: 'number') = 2