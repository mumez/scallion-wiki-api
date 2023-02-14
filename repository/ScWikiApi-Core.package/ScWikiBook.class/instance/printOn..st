printing
printOn: aStream
  aStream nextPutAll: self className.
  aStream nextPutAll: '('.
  aStream
    space;
    nextPutAll: self id.
  aStream
    space;
    nextPutAll: self name.
  aStream
    space;
    nextPutAll: self title.
  aStream nextPutAll: ')'