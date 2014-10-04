
React = require 'react/addons'
require './Demo1.less'


module.exports = React.createClass
  displayName: 'Demo1'

  getInitialState: ->
    transitioned: false

  doAnimation: ->
    @setState transitioned: not @state.transitioned

  render: ->
    <div className='demo1'>
      <h1>Demo1</h1>
      <div className={if @state.transitioned then 'box transitioned' else 'box'} onClick={@doAnimation}>
      </div>
    </div>
