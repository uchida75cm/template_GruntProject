var Hoge;

Hoge = (function() {
  function Hoge(name) {
    this.name = name;
  }

  Hoge.prototype.greet = function() {
    return console.log('こんにちは、わたしのなまえは ' + this.name + ' です。');
  };

  return Hoge;

})();

module.exports = Hoge;
