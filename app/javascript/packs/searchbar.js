function initializeSearchBar() {
  var client = algoliasearch('AVGP7PHOB1', '62527b94d645090cf312a2a0dbcfb9ad');
  var index = client.initIndex('Car');

  console.log(index);
  //initialize autocomplete on search input (ID selector must match)
  autocomplete('#aa-search-input',
  { hint: false }, {
      source: autocomplete.sources.hits(index, {hitsPerPage: 5}),
      //value to be displayed in input control after user's suggestion selection
      displayKey: 'brand',
      //hash of templates used when rendering dataset
      templates: {
          //'suggestion' templating function used to render a single suggestion
          suggestion: function(suggestion) {
            console.log(suggestion._highlightResult);
            return '<span>' +
              suggestion._highlightResult.brand.value + '</span><span>' +
              suggestion._highlightResult.model.value + '</span><span>' +
              suggestion._highlightResult.category.value + '</span>';
          }
      }
  });
}


export { initializeSearchBar };
