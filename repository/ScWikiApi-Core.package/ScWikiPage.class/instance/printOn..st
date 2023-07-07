printing
printOn: aStream
  aStream nextPutAll: self className.
  aStream nextPutAll: '('.
  aStream
    space;
    nextPutAll: self fullKey.
  aStream
    space;
    nextPutAll: self id asString.
  aStream
    space;
    nextPutAll: self updatedAt asString.
  aStream
    space;
    nextPutAll: self name.
  aStream nextPutAll: ')'