*scwikiapi-core
jwtPayloadAt: key
  | jwtPayload |
  jwtPayload := self jwtPayload.
  jwtPayload ifNil: [ ^ nil ].
  ^ jwtPayload at: key ifAbsent: [  ]