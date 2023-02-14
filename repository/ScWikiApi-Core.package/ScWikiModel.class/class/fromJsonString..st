reading
fromJsonString: jsonString
  | dict |
  dict := STON fromString: jsonString.
  ^ self fromDictionary: dict