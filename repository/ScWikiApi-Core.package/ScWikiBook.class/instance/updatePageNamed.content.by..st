updating
updatePageNamed: pageName content: content by: updaterName
  | existingPage page |
  existingPage := self pageNamed: pageName.
  existingPage ifNil: [ ^ nil ].
  existingPage addVersion.
  self forgetPage: existingPage.
  page := ScWikiPage on: self name: pageName.
  page content: content.
  page updatedBy: updaterName.
  page number: existingPage number.
  self putPage: page.
  ^ page