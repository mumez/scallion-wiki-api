actions
putPage: aPage
  self pages at: aPage name put: aPage.
  self pagesSet add: aPage.
  self settings useSearchEngine
    ifTrue: [ self searcher putPage: aPage on: self ].
  ^ aPage