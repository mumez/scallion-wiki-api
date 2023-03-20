initialize-release
initialize
  super initialize.
  self
    map: 'wikis' to: #'wikisOn:';
    map: 'wiki' to: #'wikiOn:';
    map: 'page' to: #'pageOn:';
    map: 'versions' to: #'versionsOn:';
    map: 'version' to: #'versionOn:';
    yourself