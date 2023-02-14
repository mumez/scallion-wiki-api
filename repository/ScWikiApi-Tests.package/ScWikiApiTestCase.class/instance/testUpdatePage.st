testing
testUpdatePage
  | req resp wikiUme wikiSqueak |
  req := self
    putRequest: 'page'
    arguments:
      {('wiki' -> 'ume').
      ('name' -> 'welcome').
      ('content' -> 'updated content').
      ('updatedBy' -> 'updater2')}.
  resp := self jsonResponseFor: req.
  self assert: (resp at: 'name') = 'welcome'.
  self assert: (resp at: 'content') = 'updated content'.
  self assert: (resp at: 'updatedBy') = 'updater2'.
  self assert: (resp at: 'number') = 1