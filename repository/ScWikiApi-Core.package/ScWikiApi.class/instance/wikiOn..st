api-wiki
wikiOn: aRequest
  | args |
  args := aRequest url query.
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  ^ self getWikiOn: aRequest arguments: args