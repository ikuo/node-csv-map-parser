expect = require('chai').use(require('chai-as-promised')).expect
parser = require('../src')

describe 'csv-map-parser', ->
  context '#single', ->
    context 'without quotes', ->
      context 'without spaces', ->
        it 'returns a map', ->
          expect(parser.single('key1:value1,key2:value2'))
            .to.eventually.deep.equal(key1: 'value1', key2: 'value2')

      context 'with a space', ->
        it 'returns a map', ->
          expect(parser.single('key1:value1, key2:value2'))
            .to.eventually.deep.equal(key1: 'value1', key2: 'value2')

      context 'with spaces', ->
        it 'returns a map', ->
          expect(parser.single(' key1: value1, key2 : value2 '))
            .to.eventually.deep.equal(key1: ' value1', 'key2 ': ' value2')

    context 'with quotes', ->
      context 'without spaces', ->
        it 'returns a map', ->
          expect(parser.single('"key1:value1","key2:value2"'))
            .to.eventually.deep.equal(key1: 'value1', key2: 'value2')

      context 'with spaces', ->
        it 'returns a map', ->
          expect(parser.single(' "key1: value1 ", "key2 : value2" '))
            .to.eventually.deep.equal(key1: ' value1 ', 'key2 ': ' value2')
