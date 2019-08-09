class Calculator
  constructor: () ->
    @operations = []
    @lastOperation = {}

  add: (a, b) ->
    @lastOperation =
      operation: 'add'
      x: a
      y: b
    @operations.push @lastOperation
    if a == 0
      return b
    if b == 0
      return a
    return a + b

  subtract: (a, b) ->
    @lastOperation =
      operation: 'subtract'
      x: a
      y: b
    @operations.push @lastOperation
    return a - b

  multiply: (a, b) ->
    @lastOperation =
      operation: 'multiply'
      x: a
      y: b
    @operations.push @lastOperation
    if a == 0 or b == 0
      return 0
    return a * b

  divide: (a, b) ->
    @lastOperation =
      operation: 'divide'
      x: a
      y: b
    @operations.push @lastOperation
    if b == 0
      throw new Error('Attempt to divide by zero')
    return a / b

  square: (a) ->
    @operations.push
      operation: 'square'
      x: a
    return a * a

  squareRoot: (a) ->
    @operations.push
      operation: 'squareRoot'
      x: a
    return Math.sqrt a

  pow: (a, b) ->
    @operations.push
      operation: 'pow'
      x: a
      y: b
    return a ** b

  min: (a, b) ->
    @operations.push
      operation: 'min'
      x: a
      y: b
    throw new Error('Not implemented')
    return

module.exports = Calculator
