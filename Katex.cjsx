katex = require './lib/KaTeX/katex.js'
React = require 'react'


module.exports = KaTeX = React.createClass
  displayName: 'KaTeX'

  propTypes:
    tex: React.PropTypes.string
    children: React.PropTypes.string

  getTex: ->
    @props.tex or @props.children

  componentWillMount: ->
    require './lib/KaTeX/static/katex.less'

  componentDidMount: ->
    katex.render @getTex(), @refs.container.getDOMNode()

  render: ->
    <span className='react-katex-component' ref='container' />
