api-page
pagesOn: aRequest
  | args |
  args := aRequest url query.
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  (args includesKey: 'exist')
    ifTrue: [ ^ self existPagesOn: aRequest arguments: args ]