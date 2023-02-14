private
jsonResponseFor: aRequest
  | resp |
  resp := self wikiApi handleRequest: aRequest.
  ^ STON fromString: resp entity contents