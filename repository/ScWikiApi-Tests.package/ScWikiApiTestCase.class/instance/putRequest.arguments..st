private
putRequest: url arguments: args
  | req ent |
  req := ZnRequest put: url.
  ent := ZnStringEntity type: ZnMimeType applicationJson.
  ent string: args asDictionary asJson.
  req entity: ent.
  ^ req