releasing
purge
  self forgetAppPages.
  self pages do: [ :each | self resetVersions ]