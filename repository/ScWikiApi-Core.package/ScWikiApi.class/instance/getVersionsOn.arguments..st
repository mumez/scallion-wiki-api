api-version
getVersionsOn: aRequest arguments: args
  | pageName wikiBookName wikiBook page fromIndex size versions |
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  (self validateRequiredFieldNames: #('page' 'wiki' 'from' 'size') in: args)
    ifFalse: [ ^ ZnResponse badRequest: aRequest ].
  pageName := args at: 'page'.
  wikiBookName := args at: 'wiki'.
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page := wikiBook pageNamed: pageName.
  page ifNil: [ ^ ZnResponse notFound: aRequest url ].
  fromIndex := args at: 'from'.
  size := args at: 'size'.
  versions := Array new.
  page
    versionsReversedFrom:
      (fromIndex asInteger ifNil: [ ^ ZnResponse badRequest: aRequest ])
    size: (size asInteger ifNil: [ ^ ZnResponse badRequest: aRequest ])
    do: [ :version | versions add: version asDictionary ].
  ^ self returnJson: versions