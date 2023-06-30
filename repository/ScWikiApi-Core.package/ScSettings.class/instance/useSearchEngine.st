accessing
useSearchEngine
  ^ self at: #'useSearchEngine' ifAbsentPut: [ true ]