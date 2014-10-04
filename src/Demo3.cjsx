
React = require 'react/addons'
require './Demo3.less'


{CSSTransitionGroup} = React.addons

module.exports = React.createClass
  displayName: 'Demo3'

  getInitialState: ->
    lines: [
      [10,10,30,40],
      [40,5,30,40]
    ]

  addOne: ->
    newLine = for i in [0...4]
      Math.random()*300
    @setState
      lines: @state.lines.concat [newLine]

  render: ->
    <div className='demo3'>
      <h1>Demo3</h1>
      <button onClick={@addOne}>Add one</button>
      <svg>
        { <line x1={x1} y1={y1} x2={x2} y2={y2} /> for [x1,y1,x2,y2] in @state.lines }
      </svg>
    </div>
