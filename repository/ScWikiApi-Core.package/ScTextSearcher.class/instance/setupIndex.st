setup
setupIndex
  [ self index loaded ]
    on: MsError
    do: [ (self engine createIndex: self indexName) waitEndedForAWhile ].
  self index
    applySettingsUsing: [ :opts | opts filterableAttributes: #('wikiName') ]