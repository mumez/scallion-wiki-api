searching
search: keyword bookNamed: aWikiBookName on: aWikiRepository
  | wikiBook resp pageIds pages |
  wikiBook := aWikiRepository bookNamed: aWikiBookName.
  wikiBook ifNil: [ ^ #() ].
  resp := self basicSearch: keyword bookNamed: aWikiBookName.
  pageIds := resp hits collect: [ :dict | dict at: 'id' ifAbsent: [ '' ] ].
  pages := Array new.
  pageIds
    do: [ :each | 
      | page |
      page := wikiBook pageAtId: each.
      page ifNotNil: [ pages add: page ] ].
  ^ pages