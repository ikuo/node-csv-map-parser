_ = require('lodash')
Promise = require('bluebird')
csvParse = Promise.promisify(require('csv-parse'))

module.exports =
  single: (string, options) ->
    options ?= {}
    options.trim ?= true
    csvParse(_.trim(string), options).then (entries) ->
      _.chain(entries)
        .first()
        .map((entry) -> entry.split(":"))
        .reduce(
          ((obj, pair) -> obj.tap((e) -> e[_.trim(pair[0])] = _.trim(pair[1]))),
          _({})
        )
        .value()
        .value()
