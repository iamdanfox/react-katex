require '../lib/katex-0.1.1/katex.min.css'
React = require 'react'


module.exports = KaTeX = React.createClass
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
