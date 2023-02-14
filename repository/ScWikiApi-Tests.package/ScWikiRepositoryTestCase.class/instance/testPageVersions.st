testing
testPageVersions
  | repos book page version reversedVersions |
  repos := ScWikiRepository default.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'newPage' content: 'content1' by: 'tester1'.
  self assert: (page := book pageNamed: 'newPage') notNil.
  book updatePageNamed: 'newPage' content: 'content2' by: 'tester2'.
  book updatePageNamed: 'newPage' content: 'content3' by: 'tester3'.
  book updatePageNamed: 'newPage' content: 'content4' by: 'tester4'.
  self assert: (page := book pageNamed: 'newPage') notNil.
  self assert: page content = 'content4'.
  self assert: page updatedBy = 'tester4'.
  self assert: page number = 1.
  version := page versionAt: 2.
  self assert: version content = 'content2'.
  reversedVersions := page versionsReversed.
  self assert: reversedVersions size = 3.
  self assert: reversedVersions first content = 'content3'.
  self assert: reversedVersions last content = 'content1'.
  page resetVersions