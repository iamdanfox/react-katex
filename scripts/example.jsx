/** @jsx React.DOM */

var Test = require('./Test'),
    React = require('react');

window.React = React;

React.renderComponent(
  <Test />,
  document.getElementById('content')
);
