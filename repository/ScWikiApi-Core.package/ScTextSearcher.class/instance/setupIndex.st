setup
setupIndex
  [ self index loaded ]
    on: MsError
    do: [ (self engine createIndex: self indexName primaryKey: 'id') waitEndedForAWhile ].
  self index
    applySettingsUsing: [ :opts | opts filterableAttributes: #('wiki') ]