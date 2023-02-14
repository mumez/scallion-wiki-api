testing
testGetVersions
  | book req versions version3 version2 |
  book := self repository bookNamed: 'ume'.
  book updatePageNamed: 'welcome' content: 'updated content1' by: 'updater1'.
  book updatePageNamed: 'welcome' content: 'updated content2' by: 'updater2'.
  book updatePageNamed: 'welcome' content: 'updated content3' by: 'updater3'.
  req := self
    getRequest: 'versions'
    arguments:
      {('wiki' -> 'ume').
      ('page' -> 'welcome').
      ('from' -> 3).
      ('size' -> 2)}.
  versions := self jsonResponseFor: req.
  self assert: versions size = 2.
  version3 := versions first.
  self assert: (version3 at: 'name') = 'welcome'.
  self assert: (version3 at: 'content') = 'updated content2'.
  self assert: (version3 at: 'updatedBy') = 'updater2'.
  version2 := versions last.
  self assert: (version2 at: 'name') = 'welcome'.
  self assert: (version2 at: 'content') = 'updated content1'.
  self assert: (version2 at: 'updatedBy') = 'updater1'