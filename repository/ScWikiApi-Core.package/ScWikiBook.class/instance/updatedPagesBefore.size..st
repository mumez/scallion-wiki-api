actions
updatedPagesBefore: dateAndTime size: size
  | results |
  results := Array new.
  self
    updatedPagesBefore: dateAndTime
    size: size
    do: [ :page | results add: page ].
  ^ results