building
buildPagesSet
  | setOfPages |
  setOfPages := Set new
    addAll: self pages values;
    yourself.
  self buildPagesIndexesOn: setOfPages.
  ^ setOfPages