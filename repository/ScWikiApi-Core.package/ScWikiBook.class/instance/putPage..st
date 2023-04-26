actions
putPage: aPage
  self pages at: aPage name put: aPage.
  self pagesSet add: aPage.
  ^ aPage