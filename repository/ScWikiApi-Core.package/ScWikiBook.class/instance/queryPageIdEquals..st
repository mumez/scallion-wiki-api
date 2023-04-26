queries
queryPageIdEquals: idString
  ^ (GsQuery fromString: 'each.id = id')
    bind: 'id' to: idString;
    on: self pagesSet