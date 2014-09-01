chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'motivate', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/motivate')(@robot)

  it 'registers a hear listener for !m', ->
    expect(@robot.hear).to.have.been.calledWith(/!m (.*)$/i)
