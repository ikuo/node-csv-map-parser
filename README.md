# node-lcsv-parser

A parser of key value pairs encoded into CSV (Labeled CSV).

## Installation

Install with [npm](https://www.npmjs.com/):

```shell
npm install coffee-script -g
npm install lcsv-parser --save
```

## Example

```coffeescript
parser = require('lcsv-parser')
parser.single('key1:value1, key2:value2')
# => { key1: 'value1', key2: 'value2' }
```

See more examples in [./test/*_test.coffee](./test)
