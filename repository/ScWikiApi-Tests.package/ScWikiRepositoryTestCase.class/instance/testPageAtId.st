testing
testPageAtId
  | repos book pageAdded pageFound |
  repos := ScWikiRepository default.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'newPage' content: 'new content' by: 'tester1'.
  self assert: (pageAdded := book pageNamed: 'newPage') notNil.
  self assert: (pageFound := book pageAtId: pageAdded id) notNil.
  self assert: pageFound content = 'new content'.
  self assert: pageFound updatedBy = 'tester1'.
  self assert: pageFound number = 1.
  book addPageNamed: 'newPage2' content: 'new content2' by: 'tester2'.
  self assert: (pageAdded := book pageNamed: 'newPage2') notNil.
  self assert: (pageFound := book pageAtId: pageAdded id) notNil.
  self assert: pageFound name = 'newPage2'.
  self assert: pageFound content = 'new content2'.
  self assert: pageFound updatedBy = 'tester2'.
  self assert: pageFound number = 2.
  self assert: (pageFound := book pageAtId: 'unknown id') isNil