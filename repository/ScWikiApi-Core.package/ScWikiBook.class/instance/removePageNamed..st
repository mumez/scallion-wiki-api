actions
removePageNamed: aPageName
  | removed |
  removed := self pages removeKey: aPageName ifAbsent: [  ].
  removed notNil
    ifTrue: [ self forgetPage: removed ].
  ^ removed notNil