#save Audit.log to collection

@Audit = new class
  defaultType: 'Info'
  constructor: (collectionName = 'AuditLog') ->
    @_collection = new Meteor.Collection collectionName

  _log: (type, message) ->
    unless message?
      message = type
      type = @defaultType

    @_collection.insert
      type: type
      message: message
      owner: Meteor?.user?().username?
      created_at: Date()

  Error: (message) ->
    @_log 'Error', message

  Info: (message) ->
    @_log 'Info', message

  Warn: (message) ->
    @_log 'Warning', message

  Fatal: (message) ->
    @_log 'Fatal', message

  Log: (message) ->
    @_log message
