
React = require 'react/addons'
require './Demo2.less'


{CSSTransitionGroup} = React.addons

module.exports = React.createClass
  displayName: 'Demo2'

  getInitialState: ->
    length: 5

  addOne: ->
    @setState length: @state.length + 1

  removeOne: ->
    @setState length: Math.max (@state.length - 1), 0

  render: ->
    <div className='demo2'>
      <h1>Demo2</h1>
      <button onClick={@addOne}>Add one</button>
      <button onClick={@removeOne}>Remove one</button>
      <ul>
        <CSSTransitionGroup transitionName='example'>
        { <li key={i}></li> for i in [0...@state.length] }
        </CSSTransitionGroup>
      </ul>
    </div>
