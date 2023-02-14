instance creation
allVersions
  keys := Published keys select: [ :each | each beginsWith: 'pageVersions' ].
  keys do: [ :each | Published removeKey: each ]