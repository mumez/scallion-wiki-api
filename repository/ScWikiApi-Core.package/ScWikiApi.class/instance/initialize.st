initialize-release
initialize
  super initialize.
  self
    map: 'wikis' to: #'wikisOn:';
    map: 'wiki' to: #'wikiOn:';
    map: 'page' to: #'pageOn:';
    map: 'pages' to: #'pagesOn:';
    map: 'versions' to: #'versionsOn:';
    map: 'version' to: #'versionOn:';
    map: 'updates' to: #'updatesOn:';
    map: 'search' to: #'searchOn:';
    yourself