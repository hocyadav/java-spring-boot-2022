JsOsaDAS1.001.00bplist00?Vscript_?// Applescript (Javascript)

function run(input) {

  if (!input) input = "";

  var evernote = Application('Evernote');
  evernote.activate();

  var query = input[0];
  
  console.log(query)

  const hasSpecialBracket = /\$\{.*\}/;

  if(hasSpecialBracket.test(query)) {
    query = input[1];
  }

  var note = evernote.findNote(query);
  evernote.openNoteWindow({ with: note });

}                              ?jscr  ??ޭ