utility
removeObsoleteVersions
  "self removeObsoleteVersions"

  | keys currentBookIds |
  keys := Published keys select: [ :each | each beginsWith: 'pageVersions' ].
  currentBookIds := ScWikiRepository default books collect: [ :e | e id ].
  keys := keys
    reject: [ :each | currentBookIds anySatisfy: [ :id | (each findString: id) > 0 ] ].
  keys do: [ :each | Published removeKey: each ]