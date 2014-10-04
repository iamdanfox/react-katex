React = require 'react/addons'

window.React = React

App = React.createClass
  render: ->
    <div>
      <h1>KaTeX React Component</h1>
    </div>

window.onload = ->
  React.renderComponent <App />, document.querySelector('body')
