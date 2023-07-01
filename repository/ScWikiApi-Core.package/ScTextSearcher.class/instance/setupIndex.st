setup
setupIndex
  [ self index loaded ]
    on: MsError
    do: [ (self engine createIndex: self indexName primaryKey: 'id') waitEndedForAWhile ].
  self index
    applySettingsUsing: [ :opts | 
      opts
        searchableAttributes: #('name' 'title' 'content');
        filterableAttributes: #('wiki') ]