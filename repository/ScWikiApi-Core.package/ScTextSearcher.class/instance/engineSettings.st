accessing
engineSettings
  ^ engineSettings ifNil: [ engineSettings := MsSettings fromDefault ]