testing
testUpdatedPagesBefore
  | repos book current past pages page |
  repos := ScWikiRepository default.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'newPage' content: 'new content' by: 'tester1'.
  book addPageNamed: 'newPage2' content: 'new content2' by: 'tester2'.
  current := DateAndTime now.
  past := current - 100 seconds.
  self assert: (pages := book updatedPagesBefore: current size: 2) size = 2.
  self assert: (pages := book updatedPagesBefore: current size: 10) size = 2.
  self assert: (page := pages first) notNil.
  self assert: page name = 'newPage2'.
  self assert: page content = 'new content2'.
  self assert: page updatedBy = 'tester2'.
  self assert: page number = 2.
  self assert: (page := pages second) notNil.
  self assert: page name = 'newPage'.
  self assert: page content = 'new content'.
  self assert: page updatedBy = 'tester1'.
  self assert: page number = 1.
  self assert: (pages := book updatedPagesBefore: past size: 2) size = 0