actions
updatedPagesStreamBefore: dateAndTime
  | query results |
  query := self queryPageUpdatedBefore: dateAndTime.
  ^ query reversedReadStream