searching
basicSearch: keyword bookNamed: aWikiBookName
  | filterString |
  filterString := 'wiki = "{1}"' format: {(aWikiBookName asString)}.
  ^ self index
    search: keyword
    optionsUsing: [ :opts | 
      opts
        limit: 30;
        attributesToRetrieve: #('id');
        filter: filterString ]