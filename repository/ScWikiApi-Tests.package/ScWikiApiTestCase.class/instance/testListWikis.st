testing
testListWikis
  | req resp wikiUme wikiSqueak |
  req := self getRequest: 'wikis' arguments: #().
  resp := self jsonResponseFor: req.
  self assert: resp size = 2.
  wikiUme := resp detect: [ :each | each name = 'ume' ].
  self assert: (wikiUme at: 'name') = 'ume'.
  self assert: (wikiUme at: 'title') = 'ume wiki'.
  self assert: (wikiUme at: 'count') = 1.
  wikiSqueak := resp detect: [ :each | each name = 'squeak' ].
  self assert: (wikiSqueak at: 'name') = 'squeak'.
  self assert: (wikiSqueak at: 'title') = 'squeak wiki'.
  self assert: (wikiSqueak at: 'count') = 1