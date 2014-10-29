var webpack = require('webpack');

module.exports = {
  entry: './src/Entry.cjsx',
  output: {
    filename: 'bundle.js',
  },
  module: {
    loaders: [
      { test: /\.(woff2|woff|eot|ttf)$/, loaders: ['file-loader?name=build/fonts/[name].[ext]'] },
      { test: /katex\.min\.css$/, loaders: ['style-loader/url', 'file-loader?name=build/[name].[ext]?[hash]'] },
      // => add a <link rel="stylesheet"> to file.css to document - ensures fonts loaded as needed
      { test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']},
      { test: /katex\.less$/, loaders: ['style-loader/url', 'file-loader?name=build/[name].[ext]?[hash]', 'less-loader'] }
    ]
  }
};
