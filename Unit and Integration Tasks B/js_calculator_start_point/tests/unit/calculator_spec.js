var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function () {
    assert.equal(true, true)
  });

  it('should add numbers', function () {
    calculator.previousTotal = 10;
    calculator.add(2);
    const actual = calculator.runningTotal;
    assert.equal(12, actual);
  });

  it('should subtract numbers', function () {
    calculator.previousTotal = 10;
    calculator.subtract(2);
    const actual = calculator.runningTotal;
    assert.equal(8, actual);
  });

  it('should multiply numbers', function () {
    calculator.previousTotal = 10;
    calculator.multiply(2);
    const actual = calculator.runningTotal;
    assert.equal(20, actual);
  });

  it('should divide numbers', function () {
    calculator.previousTotal = 10;
    calculator.divide(2);
    const actual = calculator.runningTotal;
    assert.equal(5, actual);
  });

  it('should display multiple numbers', function () {
    calculator.runningTotal = 0;
    calculator.numberClick(1);
    calculator.numberClick(2);
    calculator.numberClick(3);
    const actual = calculator.runningTotal;
    assert.deepStrictEqual(123, actual);
  });

  it('should do multiple operations', function () {
    calculator.runningTotal = 0;
    calculator.numberClick(1);
    calculator.operatorClick("+");
    calculator.numberClick(2);
    calculator.operatorClick("-");
    calculator.numberClick(3);
    calculator.operatorClick("=");
    const actual = calculator.runningTotal;
    assert.deepStrictEqual(0, actual);
  });

});
