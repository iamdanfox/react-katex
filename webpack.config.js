var webpack = require('webpack');

module.exports = {
  entry: {
    demo: './Demo.cjsx',
    vendor: ['react', './lib/KaTeX/katex.js'],
  },
  output: {
    filename: 'bundle.js',
  },
  plugins: [
    new webpack.optimize.CommonsChunkPlugin('vendor', 'vendor.bundle.js')
  ],
  module: {
    loaders: [
      { test: /\.(woff2|woff|eot|ttf)$/, loaders: ['file-loader?name=[path][name].[ext]'] },
      // { test: /katex\.min\.css$/, loaders: ['style-loader/url', 'file-loader?name=build/[name].[ext]?[hash]'] },
      // => add a <link rel="stylesheet"> to file.css to document - ensures fonts loaded as needed
      { test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']},
      { test: /\.less$/, loaders: ['style-loader', 'css-loader', 'less-loader'] }
      // This fails because `require` breaks with missing files.
    ]
  }
};
