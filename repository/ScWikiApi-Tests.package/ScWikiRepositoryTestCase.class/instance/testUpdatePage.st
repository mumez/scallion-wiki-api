testing
testUpdatePage
  | repos book page updatedAt1 updatedAt2 oldVersion |
  repos := ScWikiRepository default.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'newPage' content: 'new content' by: 'tester1'.
  self assert: (page := book pageNamed: 'newPage') notNil.
  self assert: page number = 1.
  updatedAt1 := page updatedAt asSeconds asFloat.
  (Delay forMilliseconds: 100) wait.
  book updatePageNamed: 'newPage' content: 'updated content' by: 'tester2'.
  self assert: (page := book pageNamed: 'newPage') notNil.
  self assert: page content = 'updated content'.
  self assert: page updatedBy = 'tester2'.
  self assert: page number = 1.
  updatedAt2 := page updatedAt asSeconds asFloat.
  self assert: updatedAt2 - updatedAt1 > 0.
  self assert: page versions size = 1.
  oldVersion := page versions first.
  self assert: oldVersion content = 'new content'.
  self assert: oldVersion updatedBy = 'tester1'.
  page resetVersions.
  self assert: page versions size = 0.
  page resetVersions