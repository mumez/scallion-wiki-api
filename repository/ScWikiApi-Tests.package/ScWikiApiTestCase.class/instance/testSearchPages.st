testing
testSearchPages
  | book req resp page |
  ScTextSearcher resetIndex waitEndedForAWhile.
  ScWikiRepository populateExample2.	"Set up again after the search index was cleared"
  (Delay forMilliseconds: 10) wait.
  req := self
    getRequest: 'search'
    arguments:
      {('q' -> 'welcome').
      ('wiki' -> 'ume')}.
  resp := self jsonResponseFor: req.
  self assert: resp size = 1.
  page := resp first.
  self assert: (page at: 'name') = 'welcome'.
  req := self
    getRequest: 'search'
    arguments:
      {('q' -> 'squeak').
      ('wiki' -> 'ume')}.
  resp := self jsonResponseFor: req.
  self assert: resp size = 0.
  req := self
    getRequest: 'search'
    arguments:
      {('q' -> 'squeak!').
      ('wiki' -> 'squeak')}.
  resp := self jsonResponseFor: req.
  self assert: resp size = 1.
  page := resp first.
  self assert: (page at: 'content') = 'squeak!'