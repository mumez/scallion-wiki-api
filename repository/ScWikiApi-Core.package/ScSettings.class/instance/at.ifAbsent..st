accessing-dictionary
at: key ifAbsent: aBlock
  ^ self settingsDict at: key ifAbsent: aBlock