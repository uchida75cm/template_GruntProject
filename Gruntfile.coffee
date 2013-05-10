module.exports = (grunt) ->

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    coffee:
      compile:
        options:
          bare: true
        files:
          'public/scripts/hoge.js': 'src/scrpts/hoge.coffee'

    simplemocha:
      all:
        src: 'test/*_test.coffee'
      options:
        ui: 'bdd'
        reporter: 'spec'

    docco:
      index:
        src: ['src/**/*.coffee']
        options:
          output: 'docs/'

    watch:
      scripts:
        files: '**/*.coffee'
        tasks: ['coffee', 'simplemocha']
        options:
          interrupt: true

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-docco'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-simple-mocha'

  grunt.registerTask 'default', ['coffee', 'simplemocha']
