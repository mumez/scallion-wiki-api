api-page
existPagesOn: aRequest arguments: args
  | pageNames wikiBookName wikiBook results |
  pageNames := (args at: 'exist' ifAbsent: [ '' ]) findTokens: ','.
  wikiBookName := args
    at: 'wiki'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  results := pageNames
    collect: [ :pageName | wikiBook existsPageNamed: pageName ].
  ^ self returnJson: results asArray