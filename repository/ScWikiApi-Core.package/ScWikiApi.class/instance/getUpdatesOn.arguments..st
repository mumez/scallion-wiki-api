api-update
getUpdatesOn: aRequest arguments: args
  | pageName wikiBookName wikiBook dateAndTimeMsecs dateAndTime size updatedPages |
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  (self validateRequiredFieldNames: #('wiki' 'from' 'size') in: args)
    ifFalse: [ ^ ZnResponse badRequest: aRequest ].
  wikiBookName := args at: 'wiki'.
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  dateAndTimeMsecs := (args at: 'from') asInteger
    ifNil: [ ^ ZnResponse badRequest: aRequest ].
  dateAndTime := DateAndTime
    posixSeconds: dateAndTimeMsecs // 1000
    offset: 0 seconds.
  size := args at: 'size'.
  updatedPages := Array new.
  wikiBook
    updatedPagesBefore: dateAndTime
    size: (size asInteger ifNil: [ ^ ZnResponse badRequest: aRequest ])
    do: [ :updatedPage | updatedPages add: updatedPage asDictionary ].
  ^ self returnJson: updatedPages