var webpack = require('webpack');

module.exports = {
  entry: './src/Entry.cjsx',
  output: {
    filename: 'bundle.js',
  },
  resolve: {
    extensions: ['', '.js', '.cjsx', '.css', '.less']
  },
  module: {
    loaders: [
      { test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']},
      { test: /\.less$/, loaders: ['style-loader', 'css-loader', 'less-loader'] },
      { test: /\.css$/, loaders: ['style-loader', 'css-loader'] }
    ]
  }
};
