instance creation
forPage: wikiPage
  ^ Published at: (self versionsKeyFor: wikiPage) ifAbsentPut: [ self new ]