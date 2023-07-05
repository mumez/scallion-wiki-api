testing
testGetUpdates
  | nowSeconds book req updates welcome2LastPage welcomeLastPage |
  nowSeconds := (DateAndTime now asPosixSeconds * 1000) rounded.
  book := self repository bookNamed: 'ume'.
  book updatePageNamed: 'welcome' content: 'updated content1' by: 'updater1'.
  (Delay forMilliseconds: 10) wait.
  book updatePageNamed: 'welcome' content: 'updated content2' by: 'updater2'.
  (Delay forMilliseconds: 10) wait.
  book addPageNamed: 'welcome2' content: 'new content3' by: 'tester3'.
  (Delay forMilliseconds: 10) wait.
  book updatePageNamed: 'welcome2' content: 'updated content4' by: 'updater4'.
  req := self
    getRequest: 'updates'
    arguments:
      {('wiki' -> 'ume').
      ('from' -> (nowSeconds + 10000)).
      ('size' -> 3)}.
  updates := self jsonResponseFor: req.
  self assert: updates size = 2.
  welcome2LastPage := updates first.
  self assert: (welcome2LastPage at: 'name') = 'welcome2'.
  self assert: (welcome2LastPage at: 'content') = 'updated content4'.
  self assert: (welcome2LastPage at: 'updatedBy') = 'updater4'.
  welcomeLastPage := updates last.
  self assert: (welcomeLastPage at: 'name') = 'welcome'.
  self assert: (welcomeLastPage at: 'content') = 'updated content2'.
  self assert: (welcomeLastPage at: 'updatedBy') = 'updater2'