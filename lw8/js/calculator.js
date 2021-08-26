let row = '';
const operation = ['+', '-', '/', '*'];
const digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
const stackOperations = [];
const stackNumbers = [];
let rowUpgrade = '';
let number = 0;

function calc(row)  
{
  for (let i = 0; i < row.length; i++) {
    if (row[i] != '(' && row[i] != ')') {
      rowUpgrade = rowUpgrade + row[i];
    }
  }
  console.log(operation);

  for (let i = 0; i < rowUpgrade.length; i++) {
    if (rowUpgrade[i] in operation) {
      stackOperations.push(rowUpgrade[i]);
    }

    if (rowUpgrade[i] in digits) {
      console.log(rowUpgrade[i]);
    }

    if (rowUpgrade[i] in operation) {
      console.log(rowUpgrade[i]);
    }
    if (rowUpgrade[i] in digits) {
      number = number * 10 + Number(rowUpgrade[i]);
      if (rowUpgrade[i] == ' ') {
        stackNumbers.push(6);
        number = 0;
      }
      number = number * 10 + Number(rowUpgrade[i]);
    }
  }

    console.log(stackOperations);
    console.log(stackNumbers);
    rowUpgrade = '';
}
  

function multiplication(numberOne, numberTwo)
{
  return result = numberOne * numberTwo;
}

function Sum(numberOne, numberTwo)
{
  return result = numberOne + numberTwo;
}

function division(numberOne, numberTwo)
{
  return result = numberOne / numberTwo;
}

function subtraction(numberOne, numberTwo)
{
  return result = numberOne - numberTwo;
}