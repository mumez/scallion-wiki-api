api-page
putPageOn: aRequest entity: entity isNew: newPage
  | args pageName pageContent updaterName wikiBookName wikiBook page |
  entity ifNil: [ ^ ZnResponse badRequest: aRequest ].
  args := STON fromString: entity.
  pageName := args at: 'name' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  pageContent := args
    at: 'content'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  updaterName := args
    at: 'updatedBy'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBookName := args
    at: 'wiki'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page := newPage
    ifTrue: [ wikiBook addPageNamed: pageName content: pageContent by: updaterName ]
    ifFalse: [ wikiBook updatePageNamed: pageName content: pageContent by: updaterName ].
  page ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page context: aRequest jwtPayload.
  ^ self returnJson: page asDictionary