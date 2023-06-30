accessing
indexName
  ^ indexName ifNil: [ indexName := self defaultIndexName ]