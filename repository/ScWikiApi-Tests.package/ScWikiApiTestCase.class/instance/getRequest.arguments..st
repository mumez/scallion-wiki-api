private
getRequest: url arguments: args
  | req |
  req := ZnRequest get: url.
  args asDictionary
    keysAndValuesDo: [ :k :v | req url queryAt: k add: v asString ].
  ^ req