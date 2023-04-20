private
validateRequiredFieldNames: fieldNames in: argDict
  ^ fieldNames allSatisfy: [ :each | argDict includesKey: each ]