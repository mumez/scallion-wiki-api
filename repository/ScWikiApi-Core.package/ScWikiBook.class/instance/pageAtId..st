actions
pageAtId: idString
  | query results |
  query := self queryPageIdEquals: idString.
  results := query asArray.
  results ifEmpty: [ ^ nil ].
  ^ results first