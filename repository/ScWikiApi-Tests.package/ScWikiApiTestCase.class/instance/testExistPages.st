testing
testExistPages
  | book req resp wikiUme wikiSqueak |
  book := self repository bookNamed: 'ume'.
  book addPageNamed: 'hello' content: 'hello content' by: 'adder1'.
  req := self
    getRequest: 'wiki'
    arguments:
      {('name' -> 'ume').
      ('exist-pages' -> 'welcome,hello,home')}.
  resp := self jsonResponseFor: req.
  self assert: resp = #(true true false)