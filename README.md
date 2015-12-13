# hubot-httpcats

Gives you a cat from http.cat when an HTTP error code is mentioned.

See [`src/httpcats.coffee`](src/httpcats.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-httpcats --save`

Then add **hubot-httpcats** to your `external-scripts.json`:

```json
[
  "hubot-httpcats"
]
```

## Sample Interaction

```
user1>> Oh noes! App is returning a 500 error!
hubot>> https://http.cat/500
```
