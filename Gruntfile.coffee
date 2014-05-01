module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    compass:
      dist:
        options:
          config: 'config.rb'

    watch:
      css:
        files: ['src/sass/*.scss']
        tasks: ['compass']
        options:
          atBegin: true

  })

  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-clean')

  grunt.registerTask('default', ['compass'])