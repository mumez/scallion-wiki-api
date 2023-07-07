releasing
forgetPage: aPage
  self pagesSet remove: aPage ifAbsent: [  ].
  self settings useSearchEngine
    ifTrue: [ self searcher deletePage: aPage on: self ].
  ^ aPage