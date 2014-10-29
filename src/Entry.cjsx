React = require 'react'

window.React = React


KaTeX = React.createClass
  displayName: 'KaTeX'

  propTypes:
    tex: React.PropTypes.string
    children: React.PropTypes.string

  getTex: ->
    @props.tex or @props.children

  componentDidMount: ->
    window.katex.render @getTex(), @refs.container.getDOMNode()

  render: ->
    <div className='katex-react-component' ref='container'></div>




App = React.createClass

  render: ->
    <div>
      <h1>KaTeX React Component</h1>
      <KaTeX tex="c = \\pm\\sqrt{a^2 + b^2}"></KaTeX>
      <KaTeX>y = x^2 + 2x + 1</KaTeX>
      <KaTeX>{'d = \\sqrt{x^2 + y^2 + z^2}'}</KaTeX>
    </div>

window.onload = ->
  React.renderComponent <App />, document.querySelector('#test')
