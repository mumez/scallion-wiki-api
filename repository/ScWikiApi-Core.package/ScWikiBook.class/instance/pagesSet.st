accessing
pagesSet
  ^ pagesSet ifNil: [ pagesSet := self buildPagesSet ]