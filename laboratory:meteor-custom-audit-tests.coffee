Tinytest.add 'Save log to Mongo', (test) ->

  testTypeMessage = (type) ->
    message = "#{type} message - " + Math.random()
    options = {}
    randomField = "Random: #{Math.floor(Math.random()*100)}"
    options[randomField] = randomField
    Audit[type] message, options
    cursor = Audit._collection.find
      message: message

    m = cursor.fetch()[0]
    test.equal message, m.message
    test.isNotNull m.created_at
    type = 'Warning' if type is 'Warn'
    type = 'Info' if type is 'Log'
    test.equal type, m.type
    test.equal randomField, m[randomField]

  testTypeMessage 'Error'
  testTypeMessage 'Info'
  testTypeMessage 'Warn'
  testTypeMessage 'Fatal'
