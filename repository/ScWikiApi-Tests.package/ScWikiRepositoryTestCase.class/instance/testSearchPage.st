testing
testSearchPage
  | repos pages |
  ScSettings default useSearchEngine
    ifFalse: [ ^ self ].
  ScTextSearcher resetIndex waitEndedForAWhile.
  ScWikiRepository populateExample2.	"Set up again after the search index was cleared"
  repos := ScWikiRepository default.
  pages := repos search: 'welcome' bookNamed: 'ume'.
  self assert: pages size = 1.
  self assert: pages first name equals: 'welcome'.
  pages := repos search: 'welcome' bookNamed: 'squeak'.
  self assert: pages size = 0.
  pages := repos search: 'ume' bookNamed: 'ume'.
  self assert: pages size = 0.
  pages := repos search: 'squeak' bookNamed: 'squeak'.
  self assert: pages size = 1.
  self assert: pages first name equals: 'squeak'