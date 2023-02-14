testing
testGetLastVersionNumber
  | book req resp wikiUme wikiSqueak |
  book := self repository bookNamed: 'ume'.
  book updatePageNamed: 'welcome' content: 'updated content1' by: 'updater1'.
  book updatePageNamed: 'welcome' content: 'updated content2' by: 'updater2'.
  req := self
    getRequest: 'version'
    arguments:
      {('wiki' -> 'ume').
      ('page' -> 'welcome').
      ('field' -> 'lastVersionNumber')}.
  resp := self jsonResponseFor: req.
  self assert: resp = 2