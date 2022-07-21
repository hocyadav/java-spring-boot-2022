JsOsaDAS1.001.00bplist00�Vscript_�// Applescript (Javascript)

function handleInput(str) {
  const re = /\$\{.*\}/;
  const [first, ...query] = str.split(" ");

  if(re.test(first)) {
    return query.join(" ");
  }

  return str;
}


function run(input) {

if (!input) input = "";

var evernote = Application('Evernote');
evernote.activate();


var newQuery = input ? "\'" + handleInput(input.toString()) + "\'" : "";

evernote.openCollectionWindow({ withQueryString: newQuery });

}                              �jscr  ��ޭ