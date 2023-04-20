api-page
putPageOn: aRequest entity: entity isNew: newPage
  | args pageName pageContent updaterName wikiBookName wikiBook page |
  entity ifNil: [ ^ ZnResponse badRequest: aRequest ].
  args := STON fromString: entity.
  (self
    validateRequiredFieldNames: #('name' 'wiki' 'content' 'updatedBy')
    in: args)
    ifFalse: [ ^ ZnResponse badRequest: aRequest ].
  wikiBookName := args at: 'wiki'.
  pageName := args at: 'name'.
  pageContent := args at: 'content'.
  updaterName := args at: 'updatedBy'.
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page := newPage
    ifTrue: [ wikiBook addPageNamed: pageName content: pageContent by: updaterName ]
    ifFalse: [ wikiBook updatePageNamed: pageName content: pageContent by: updaterName ].
  page ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page context: aRequest jwtPayload.
  args
    at: 'isLocked'
    ifPresent: [ :isLocked | self tryUpdateLockStatus: isLocked page: page in: wikiBook ].
  ^ self returnJson: page asDictionary