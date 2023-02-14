actions
renamePageFrom: oldPageName to: newPageName by: updaterName
  | existingPage |
  existingPage := self pageNamed: oldPageName.
  existingPage ifNil: [ ^ #'noSuchPage' -> false ].
  (self pageNamed: newPageName) ifNotNil: [ ^ #'newNamePageExists' -> false ].
  self removePageNamed: oldPageName.
  existingPage name: newPageName.
  existingPage updatedBy: updaterName.
  self putPage: existingPage.
  ^ #'renamed' -> true