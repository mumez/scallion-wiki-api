building
buildPagesIndexesOn: setOfPages
  GsIndexSpec new
    equalityIndex: 'each.updatedAt' lastElementClass: DateAndTime;
    equalityIndex: 'each.id' lastElementClass: String;
    createIndexesOn: setOfPages