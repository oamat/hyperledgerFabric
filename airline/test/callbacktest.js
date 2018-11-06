function greeting(word) {
    console.log(word + ' in greeting function');
  }
  
  function processUserInput(callback) {
    var word = 'word';
    console.log(word + ' in processUserInput function');
    callback(word);
  }

  processUserInput(greeting);