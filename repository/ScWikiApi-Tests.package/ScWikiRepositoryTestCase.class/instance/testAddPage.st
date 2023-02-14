testing
testAddPage
  | repos book page |
  repos := ScWikiRepository default.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'newPage' content: 'new content' by: 'tester1'.
  self assert: (page := book pageNamed: 'newPage') notNil.
  self assert: page name = 'newPage'.
  self assert: page content = 'new content'.
  self assert: page updatedBy = 'tester1'.
  self assert: page number = 1.
  book addPageNamed: 'newPage2' content: 'new content2' by: 'tester2'.
  self assert: (page := book pageNamed: 'newPage2') notNil.
  self assert: page name = 'newPage2'.
  self assert: page content = 'new content2'.
  self assert: page updatedBy = 'tester2'.
  self assert: page number = 2