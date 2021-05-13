---
layout: none
---
// Methods and jQuery UI for Wax search box
function excerptedString(str) {
  str = str || ''; // handle null > string
  if (str.length < 240) {
    return str;
  }
  else {
    return `${str.substring(0, 240)} ...`;
  }
}

function displayResult(item, fields) {
  var id        = item.id;
  var title     = item.title || 'Untitled';
  var link      = item.url;
  var category  = `${item.category}: ` || ''
  var content   = excerptedString(item.content);

  return `<div class="result"><a href="${link}"><span class="title">${category}${title}</span><br>${content}</p></a></div>`;
}

function startSearchUI(fields, indexFile) {
  $.getJSON(indexFile, function(store) {
    var index  = new elasticlunr.Index;
    index.saveDocument(false);
    index.setRef('id');

    for (i in fields) { index.addField(fields[i]); }
    for (i in store)  { index.addDoc(store[i]); }

    $('input#search').on('keyup', function() {
      var results_div = $('#results');
      var query       = $(this).val();
      var results     = index.search(query, {  expand: true });

      results_div.empty();
      results_div.append(`<p class="results-info">Displaying ${results.length} results</p>`);

      for (var r in results) {
        var ref    = results[r].ref;
        var item   = store[ref];
        var result = displayResult(item, fields);

        results_div.append(result);
      }
    });
  });
}
