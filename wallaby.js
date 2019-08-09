module.exports = function(wallaby) {
  return {
    files: [{ pattern: 'src/**/*.coffee', load: false }],

    tests: [{ pattern: 'test/**/*Spec.coffee', load: false }],

    postprocessor: wallaby.postprocessors.webpack({
      module: {
        rules: [
          {
            test: /\.coffee$/,
            exclude: /node_modules/,
            use: {
              loader: 'coffee-loader'
            }
          }
        ]
      },
      resolve: {
        extensions: ['.coffee', '.js']
      }
    }),

    env: {
      kind: 'chrome'
    },

    setup: function() {
      window.__moduleBundler.loadTests();
    }
  };
};
