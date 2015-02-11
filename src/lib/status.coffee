'use strict'
fs   = require 'fs'
path = require 'path'

_      = require 'lodash'
github = require 'github'

exports.set = (token, msg, callback) ->
  api = new github
    version: '3.0.0'

  api.authenticate
    type: 'oauth'
    token: token

  api.statuses.create msg, callback
