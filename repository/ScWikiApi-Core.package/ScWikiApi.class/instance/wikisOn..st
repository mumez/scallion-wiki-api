api-wiki
wikisOn: aRequest
  | wikiSummaryDescriptions |
  "Published at: #'debug-req' put: aRequest."
  wikiSummaryDescriptions := self repository books
    collect: [ :e | e asDictionary ].
  ^ self returnJson: wikiSummaryDescriptions