actions
resetVersionsFrom: wikiPage
  | versionsKey |
  versions := nil.
  versionsKey := self class versionsKeyFor: wikiPage.
  Published removeKey: versionsKey ifAbsent: [  ]