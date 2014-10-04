React = require 'react'

window.React = React


katex = require '../lib/katex/katex.min.js'

KateX = React.createClass
  displayName: 'KaTeX'

  render: ->
    <div className='katex-react-component'>
      KATEX
    </div>




App = React.createClass
  render: ->
    <div>
      <h1>KaTeX React Component</h1>
      <KateX />
    </div>

window.onload = ->
  React.renderComponent <App />, document.querySelector('body')
