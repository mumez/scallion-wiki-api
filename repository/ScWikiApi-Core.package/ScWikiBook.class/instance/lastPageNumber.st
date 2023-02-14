accessing
lastPageNumber
  ^ lastPageNumber ifNil: [ lastPageNumber := RcCounter new ]