accessing
versionsReversedFrom: fromIndex size: size do: aBlock
  | sz adjustedFrom adjustedTo |
  sz := self versions size.
  adjustedFrom := fromIndex min: sz.
  adjustedTo := adjustedFrom - size + 1 max: 1.
  adjustedFrom to: adjustedTo by: -1 do: [ :each | aBlock value: (self versions at: each) ]