# hubot-conomi-morphological-analysis

A Hubot script that extracts keywords from text using mecab(Japanese morphological analyzer) and responds the result.

See [`src/conomi-morphological-analysis.coffee`](src/conomi-morphological-analysis.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-conomi-morphological-analysis --save`

Then add **hubot-conomi-morphological-analysis** to your `external-scripts.json`:

```json
[
  "hubot-conomi-morphological-analysis"
]
```

## Sample Interaction

```
user1>> hubot hello
hubot>> hello!
```
