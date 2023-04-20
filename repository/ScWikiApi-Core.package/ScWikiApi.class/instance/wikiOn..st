api-wiki
wikiOn: aRequest
  | args |
  args := aRequest url query.
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  (args includesKey: 'exist-pages')
    ifTrue: [ ^ self existPagesOn: aRequest arguments: args ].
  ^ self getWikiOn: aRequest arguments: args