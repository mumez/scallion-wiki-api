actions
removePageNamed: aPageName
  self pages removeKey: aPageName ifAbsent: [ ^ false ].
  ^ true