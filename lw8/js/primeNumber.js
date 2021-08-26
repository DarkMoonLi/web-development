let numb = null;

function checkPrimeOrNot(numb) {
  let isNotPrime = false;
  for (let i = 2; i < numb; i++) {
    if (numb % i == 0)
      isNotPrime = true;
  }
  if (typeof numb === 'number') {
    if (isNotPrime == true) 
      console.log(numb, 'is not prime number')
    else
      console.log(numb, 'is prime number');
  } else {
    console.log('Parametr it not number or array.');
  }
}

function isPrimeNumber(numb) {
  if (typeof numb === 'number') {
    checkPrimeOrNot(numb)
  }
  else if (Array.isArray(numb)) {
    for (let i of numb)
    {
      checkPrimeOrNot(i)
    }
  }
  else 
    console.log('Parametr it not number or array.');
} 