*scwikiapi-core
jwtPayload
  | authHeader bearer jwtParts payloadPart |
  authHeader := self headers at: 'Authorization' ifAbsent: [  ].
  authHeader isEmptyOrNil
    ifTrue: [ ^ nil ].
  (authHeader beginsWith: 'Bearer ')
    ifFalse: [ ^ Dictionary new ].
  bearer := (authHeader findTokens: ' ') last.
  jwtParts := bearer findTokens: '.'.
  jwtParts size = 3
    ifFalse: [ ^ nil ].
  payloadPart := jwtParts second.
  ^ STON fromString: payloadPart base64Decoded