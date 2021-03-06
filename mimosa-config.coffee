exports.config =
  modules: ["server","browserify","lint","live-reload","bower"]
  template:
    wrapType: 'common'
    commonLibPath: 'dust'
  browserify:
    bundles:
      [
        entries: ['javascripts/main.js']
        outputFile: 'bundle.js'
      ]
    shims:
      jquery:
        path: 'javascripts/vendor/jquery/jquery'
        exports: '$'
    aliases:
      dust: 'javascripts/vendor/dust'
      templates: 'javascripts/templates'