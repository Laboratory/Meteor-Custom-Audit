Tinytest.add 'Save log to Mongo', (test) ->

  testTypeMessage = (type) ->
    message = "#{type} message - " + Math.random()
    Audit[type] message
    cursor = Audit._collection.find
      message: message

    m = cursor.fetch()[0]
    test.equal message, m.message
    test.isNotNull m.created_at
    test.isNotNull m.owner
    type = 'Warning' if type is 'Warn'
    type = 'Info' if type is 'Log'
    test.equal type, m.type

  testTypeMessage 'Error'
  testTypeMessage 'Info'
  testTypeMessage 'Warn'
  testTypeMessage 'Fatal'
  testTypeMessage 'Log'
