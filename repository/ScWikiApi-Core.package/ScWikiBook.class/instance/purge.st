releasing
purge
  self forgetAllPages.
  self pages do: [ :each | each resetVersions ]