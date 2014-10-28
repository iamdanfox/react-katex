React = require 'react'

window.React = React


KaTeX = React.createClass
  displayName: 'KaTeX'

  propTypes:
    string: React.PropTypes.string.isRequired

  shouldComponentUpdate: (nextProps, nextState) ->
    return @props.string isnt nextProps.string

  render: ->
    console.log "'#{@props.string}'"
    rawMarkup = window.katex.renderToString @props.string
    <div className='katex-react-component' ref='container' dangerouslySetInnerHTML={{__html: rawMarkup}}></div>




App = React.createClass
  getInitialState: ->
    x: 0

  componentDidMount: ->
    setInterval =>
      @setState x: @state.x + 1
    , 1000

  render: ->
    <div>
      <h1>KaTeX React Component</h1>
      <KaTeX fake={@state.x} string="c = \\sqrt{a^2 + b^2}"></KaTeX>
    </div>

window.onload = ->
  # React.renderComponent <App />, document.querySelector('#test')

  window.katex.render "c = a^2 + b^2", document.querySelector('#test2')
