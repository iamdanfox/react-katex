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
        <iframe src="http://ghbtns.com/github-btn.html?user=iamdanfox&repo=react-katex&type=watch&count=true" allowtransparency="true" scrolling="0" width="110" height="20"></iframe>
      </header>

      <div className='demo'>
        <KaTeX>
          y = x^2 + 2x + 1
        </KaTeX>
        <pre>{"""<KaTeX>
          y = x^2 + 2x + 1
        </KaTeX>"""}</pre>
      </div>

      <p>
      Embed maths in your <a href="http://facebook.github.io/react/">React
      components</a> with <a href="https://khan.github.io/KaTeX/">KaTeX</a>
      </p>

      <div className='demo'>
        <KaTeX tex="c = \\pm\\sqrt{a^2 + b^2}" />
        <pre>{'<KaTeX tex="c = \\pm\\sqrt{a^2 + b^2}" />'}</pre>
      </div>

      <p>Works awesomely with <a href="https://github.com/petehunt/webpack-howto">
      webpack</a>: only one <code>require</code> involved.</p>

      <p>(See my <code><a href="https://github.com/iamdanfox/react-katex/blob/master/webpack.config.js">webpack.config.js</a></code>)</p>

      <div className='demo'>
        <KaTeX>{'d = \\sqrt{x^2 + y^2 + z^2}'}</KaTeX>
        <pre>{'<KaTeX>{\'d = \\sqrt{x^2 + y^2 + z^2}\'}</KaTeX>'}</pre>
      </div>

      <p>Would you use this? <a href="https://twitter.com/iamdanfox">Tweet me</a> and I&apos;ll publish to npm</p>
    </div>

window.onload = ->
  React.renderComponent <Demo />, document.body
