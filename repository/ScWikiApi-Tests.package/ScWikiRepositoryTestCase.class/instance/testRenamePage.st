testing
testRenamePage
  | repos book result1 result2 result3 oldPage renamedPage versions |
  repos := ScWikiRepository default.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'page1' content: 'new content1' by: 'tester1'.
  book addPageNamed: 'page2' content: 'new content2' by: 'tester2'.
  book addPageNamed: 'page3' content: 'new content3' by: 'tester3'.
  book updatePageNamed: 'page1' content: 'updated content1' by: 'updater1'.
  book updatePageNamed: 'page2' content: 'updated content2' by: 'updater2'.
  result1 := book renamePageFrom: 'page1' to: 'renamedPage1' by: 'renamer1'.
  self assert: result1 value.
  result2 := book renamePageFrom: 'noSuchPage2' to: 'page2' by: 'renamer2'.
  self deny: result2 value.
  self assert: result2 key = #'noSuchPage'.
  result3 := book renamePageFrom: 'page3' to: 'page2' by: 'renamer3'.
  self deny: result3 value.
  self assert: result3 key = #'newNamePageExists'.
  oldPage := book pageNamed: 'page1'.
  self assert: oldPage isNil.
  renamedPage := book pageNamed: 'renamedPage1'.
  self assert: renamedPage content = 'updated content1'.
  versions := renamedPage versions.
  self assert: versions size = 1.
  self assert: versions first content = 'new content1'.
  renamedPage resetVersions.
  (book pageNamed: 'page2') resetVersions