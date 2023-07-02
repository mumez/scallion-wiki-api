api-search
searchOn: aRequest
  | args queryString wikiBookName wikiPages |
  args := aRequest url query.
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  (self validateRequiredFieldNames: #('q' 'wiki') in: args)
    ifFalse: [ ^ ZnResponse badRequest: aRequest ].
  queryString := args at: 'q'.
  wikiBookName := args at: 'wiki'.
  wikiPages := self repository search: queryString bookNamed: wikiBookName.
  ^ self returnJson: (wikiPages collect: [ :each | each asDictionary ])