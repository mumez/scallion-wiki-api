actions
removePageNamed: aPageName
  | removed |
  removed := self pages removeKey: aPageName ifAbsent: [  ].
  self pagesSet remove: removed ifAbsent: [  ].
  ^ removed notNIl