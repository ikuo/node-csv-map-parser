# csv-map-parser

A parser of key value pairs encoded into CSV.

## Installation

Install with [npm](https://www.npmjs.com/):

```shell
npm install csv-map-parser --save
```

## Example

```coffeescript
parser = require('csv-map-parser')
parser.parse('key1:value1, key2:value2')
# => { key1: 'value1', key2: 'value2' }
```

See more examples in [./test/*_test.coffee](./test)
