reading
fromDictionary: aDictionary
  | inst |
  inst := self new.
  aDictionary
    keysAndValuesDo: [ :k :v | 
      [ inst perform: k asSymbol asMutator with: v ]
        on: MessageNotUnderstood
        do: [ :ignore |  ] ].
  ^ inst