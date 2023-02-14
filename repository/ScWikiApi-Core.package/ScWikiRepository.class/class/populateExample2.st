examples
populateExample2
  "self populateExample2"

  | repos book |
  repos := self populateExample1.
  book := repos bookNamed: 'ume'.
  book addPageNamed: 'welcome' content: 'new content' by: 'tester1'.
  book := repos bookNamed: 'squeak'.
  book addPageNamed: 'squeak' content: 'squeak!' by: 'tester2'.
  ^ repos