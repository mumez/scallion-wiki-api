versions
versionsReversedFrom: fromIndex size: size do: aBlock
  ^ self versionsRepository
    versionsReversedFrom: fromIndex
    size: size
    do: aBlock