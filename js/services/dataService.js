app.service('DataService', function() {
  var title = 'United States Bir Tikendrajit University';
  
  return {
    getTitle: function() {
      return title;
    },
    setTitle: function(newTitle) {
      title = newTitle;
    }
  };
  });
  
  