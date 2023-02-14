utility
removeAllVersions
  "self removeAllVersions"

  | keys |
  keys := Published keys select: [ :each | each beginsWith: 'pageVersions' ].
  keys do: [ :each | Published removeKey: each ]