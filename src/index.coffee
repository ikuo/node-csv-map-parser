_ = require('lodash')
Promise = require('bluebird')
csv = Promise.promisify(require('csv-parse'))
ltsv = require('ltsv')

module.exports =
  single: (string, options) ->
    options ?= {}
    options.trim ?= true
    csv(_.trim(string), options).then (entries) ->
      line = entries[0].join("\t")
      ltsv.parseLine(line)
