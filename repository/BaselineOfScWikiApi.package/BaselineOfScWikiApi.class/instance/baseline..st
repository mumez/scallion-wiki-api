baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      self meilisearch: spec.
      spec
        package: 'ScWikiApi-Core';
        package: 'ScWikiApi-Tests' ]