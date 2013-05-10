assert = require 'assert'
Hoge = require '../public/scripts/hoge'

describe 'Hogeのテスト', ->
  it 'greetメソッドを呼ぶと挨拶する', ->
    kensuke = new Hoge 'Kensuke'
    kensuke.greet()
    assert.equal -1, [1,2,3].indexOf 5
