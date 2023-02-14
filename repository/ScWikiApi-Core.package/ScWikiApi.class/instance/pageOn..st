api-page
pageOn: aRequest
  | method |
  method := aRequest method.
  method = #'GET'
    ifTrue: [ ^ self getPageOn: aRequest arguments: aRequest url query ].
  method = #'POST'
    ifTrue: [ ^ self addPageOn: aRequest entity: aRequest entity ].
  method = #'PUT'
    ifTrue: [ ^ self updatePageOn: aRequest entity: aRequest entity ]