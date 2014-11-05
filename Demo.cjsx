require './Demo.less'
React = require 'react'
KaTeX = require './Katex.cjsx'

window.React = React

Demo = React.createClass
  displayName: 'Demo'

  render: ->
    <div className='app'>
      <header>
        <h1><KaTeX tex='\\KaTeX' /> React Component</h1>
      </header>

      <div className='demo'>
        <KaTeX tex="c = \\pm\\sqrt{a^2 + b^2}" />
        <pre>{'<KaTeX tex="c = \\pm\\sqrt{a^2 + b^2}" />'}</pre>
      </div>

      <div className='demo'>
        <KaTeX>
          y = x^2 + 2x + 1
        </KaTeX>
        <pre>{"""<KaTeX>
          y = x^2 + 2x + 1
        </KaTeX>"""}</pre>
      </div>

      <div className='demo'>
        <KaTeX>{'d = \\sqrt{x^2 + y^2 + z^2}'}</KaTeX>
        <pre>{'<KaTeX>{\'d = \\sqrt{x^2 + y^2 + z^2}\'}</KaTeX>'}</pre>
      </div>
    </div>

window.onload = ->
  React.renderComponent <Demo />, document.body
