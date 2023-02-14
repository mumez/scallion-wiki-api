api-version
getVersionsOn: aRequest arguments: args
  | pageName wikiBookName wikiBook page fromIndex size versions |
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  pageName := args at: 'page' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBookName := args
    at: 'wiki'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page := wikiBook pageNamed: pageName.
  page ifNil: [ ^ ZnResponse notFound: aRequest url ].
  fromIndex := args at: 'from' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  size := args at: 'size' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  versions := Array new.
  page
    versionsReversedFrom:
      (fromIndex asInteger ifNil: [ ^ ZnResponse badRequest: aRequest ])
    size: (size asInteger ifNil: [ ^ ZnResponse badRequest: aRequest ])
    do: [ :version | versions add: version asDictionary ].
  ^ self returnJson: versions