# node-lcsv-parser

A parser of key value pairs encoded in 'labeled' CSV format.

## Installation

Install with [npm](https://www.npmjs.com/):

```shell
npm install coffee-script -g
npm install lcsv-parser --save
```

## Example

```javascript
var parser = require('lcsv-parser');
parser.single('key1:value1, key2:value2')
  .then(function (obj) { console.log(obj) });
# => { key1: 'value1', key2: 'value2' }
```

See more examples in [./test/*_test.coffee](./test)
