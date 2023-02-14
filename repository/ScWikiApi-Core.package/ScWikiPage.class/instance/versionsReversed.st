versions
versionsReversed
  | col |
  col := Array new.
  self
    versionsReversedFrom: self lastVersionNumber
    size: self lastVersionNumber
    do: [ :each | col add: each ].
  ^ col