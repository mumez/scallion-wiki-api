actions
populateAllWikiBooks
  "ScTextSearcher populateAllWikiBooks"

  | tasks repos |
  tasks := Array new.
  repos := ScWikiRepository default.
  repos books valuesDo: [ :book | tasks addAll: (self default putBook: book) ].
  ^ tasks