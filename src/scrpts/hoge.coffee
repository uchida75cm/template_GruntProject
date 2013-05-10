# * aaaaa
# * bbbbb
# * ccccc
class Hoge
  constructor: (@name) ->
  greet: ->
    console.log 'こんにちは、わたしのなまえは ' + @name + ' です。'

# * ddddd
# * eeeee
module.exports = Hoge
