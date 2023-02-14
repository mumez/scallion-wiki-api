testing
testGetPage
  | req resp wikiUme wikiSqueak |
  req := self
    getRequest: 'page'
    arguments:
      {('wiki' -> 'ume').
      ('name' -> 'welcome')}.
  resp := self jsonResponseFor: req.
  self assert: (resp at: 'name') = 'welcome'.
  self assert: (resp at: 'content') = 'new content'.
  self assert: (resp at: 'updatedBy') = 'tester1'.
  self assert: (resp at: 'number') = 1