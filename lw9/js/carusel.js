  let position = 0;
  const btnPrev = document.getElementById('btn-prev');
  const btnNext = document.getElementById('btn-next');
  let listFilms = document.querySelectorAll('.slider-item');

  btnNext.onclick = () => {
    runToTheLeft();
    position++;
    if (position >= listFilms.length)
    {
      position = 0;
    }
  }

  btnPrev.onclick = function() {
    if (position <= 0) {
      position = listFilms.length;
    }
    position--;
    runToTheRight(position);
  }

  function runToTheLeft() {
    let div = document.createElement('div');
    div = listFilms[position];
    div.remove;
    document.querySelector('#track').appendChild(div); 
  }

  function runToTheRight(position) {
    let div = document.createElement('div');
    div = listFilms[position];
    div.remove;
    document.querySelector('#track').prepend(div); 
  }