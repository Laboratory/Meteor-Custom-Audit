#save Audit.log to collection

@Audit = new class
  defaultType: 'Info'
  constructor: (collectionName = 'AuditLog') ->
    @_collection = new Meteor.Collection collectionName

  _log: (type, message, options = {}) ->
    @_collection.insert _.extend options,
      type: type
      message: message
      owner: Meteor?.user?()?.username
      created_at: Date()

  Error: (message, options) ->
    @_log 'Error', message, options

  Info: (message, options) ->
    @_log 'Info', message, options

  Warn: (message, options) ->
    @_log 'Warning', message, options

  Fatal: (message, options) ->
    @_log 'Fatal', message, options
