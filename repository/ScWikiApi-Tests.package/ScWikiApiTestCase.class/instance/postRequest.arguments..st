private
postRequest: url arguments: args
  | req ent |
  req := ZnRequest post: url.
  ent := ZnStringEntity type: ZnMimeType applicationJson.
  ent string: args asDictionary asJson.
  req entity: ent.
  ^ req