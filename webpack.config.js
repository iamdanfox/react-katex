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
      { test: /\.(woff2|woff|eot|ttf)$/, loaders: ['file-loader?name=[name].[ext]?[hash]'] },
      { test: /\.css$/, loaders: ['style-loader', 'css-loader'] },
      { test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']},
      { test: /\.less$/, loaders: ['style-loader', 'css-loader', 'less-loader'] }
    ]
  }
};
