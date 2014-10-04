Demo1 = require './Demo1.cjsx'
React = require 'react/addons'

window.React = React

App = React.createClass
  render: ->
    <div>
      <Demo1 />
    </div>

window.onload = ->
  React.renderComponent <App />, document.querySelector('body')
