examples
populateExample1
  "self populateExample1"

  | repos |
  repos := self default.
  #('ume' 'squeak')
    do: [ :each | 
      repos
        putBook:
          (ScWikiBook
            name: each
            title: each , ' wiki'
            ownedBy: '4saYpbYbngfMl6N4YPLWn8kJHAC2') ].
  ^ repos