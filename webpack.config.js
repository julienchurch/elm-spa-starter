var path = require("path");

module.exports = {
  entry: "./src/main.js",
  output: {
    path: path.resolve(__dirname + "/build"),
    filename: "[name].js"
  },
  module: {
    loaders: [
      {
        test: /\.(css|sass)$/,
        loaders: [
          "style-loader",
          "css-loader",
          "sass-loader"
        ]
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node-modules/],
        loader: "elm-webpack"
      }
    ],
    noParse: /\.elm$/,
  }
}
