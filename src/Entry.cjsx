Test = require './Test.cjsx'
React = require 'react'

window.React = React

React.renderComponent <Test />, document.getElementById('content')
