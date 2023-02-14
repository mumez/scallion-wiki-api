accessing
versionsReversedFrom: fromIndex size: size do: aBlock
  fromIndex to: fromIndex - size + 1 by: -1 do: [ :each | aBlock value: (self versions at: each) ]