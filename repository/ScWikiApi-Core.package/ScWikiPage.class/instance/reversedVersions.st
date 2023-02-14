versions
reversedVersions
  | col |
  col := Array new.
  self versionsRepository versions reverseDo: [ :each | col add: each ].
  ^ col