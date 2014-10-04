
React = require 'react'

require '../css/test'


module.exports = Test = React.createClass
  displayName: 'Test'

  getInitialState: ->
    timer: null
    clock: 0

  componentWillMount: ->
    @setState timer: setInterval (=>@doSomething()), 1000

  doSomething: ->
    @setState clock: @state.clock + 1

  render: ->
    <div>
      <h1>Test Class: {@state.clock}</h1>
    </div>
