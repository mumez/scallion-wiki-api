private
returnJson: anObject
  | entity |
  entity := ZnEntity
    with: (STON toJsonString: anObject)
    type: ZnMimeType applicationJson.
  ^ ZnResponse ok: entity