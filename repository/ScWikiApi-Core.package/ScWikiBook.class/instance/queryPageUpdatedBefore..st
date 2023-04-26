queries
queryPageUpdatedBefore: dateAndTime
  ^ (GsQuery fromString: 'each.updatedAt < updated')
    bind: 'updated' to: dateAndTime;
    on: self pagesSet