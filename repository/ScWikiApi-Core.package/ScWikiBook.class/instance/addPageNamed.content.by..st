adding
addPageNamed: pageName content: content by: updaterName
  | page newPageNumber |
  page := ScWikiPage on: self name: pageName.
  newPageNumber := self lastPageNumber increment value.
  page content: content.
  page updatedBy: updaterName.
  page number: newPageNumber.
  ^ self putPage: page