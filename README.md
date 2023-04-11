# scallion-wiki-api
Wiki API server build on GemStone/S.

## Installation

First, you should install [gsApplicationTools](https://github.com/GsDevKit/gsApplicationTools).

Just install and load the latest ZincHTTPComponents from your tODE shell. This will also load gsApplicationTools.
```
> project install
 --url=http://gsdevkit.github.io/GsDevKit_home/ZincHTTPComponents.ston
> project load ZincHTTPComponents
```

Then, from the tODE shell:
```
> project entry --baseline=ScWikiApi --repo=github://mumez/scallion-wiki-api:main/repository /sys/local/server/projects
> project load ScWikiApi
```

After loading, please register ports and delegate from Workspace.

```smalltalk
ZnNewGemServer register: 'zinc' on: #(9089 9088 9087 9086).
(GemServer gemServerNamed: 'zinc') delegate: ScWikiApi new.
```

Now you can start wiki server

```smalltalk
(GemServer gemServerNamed: 'zinc') restartGems.
```

## API

Draft API document is [here](https://softumeya-llc.stoplight.io/docs/scallion-wiki-api/branches/main/3tx0q260z82ve-scallion-wiki-api)