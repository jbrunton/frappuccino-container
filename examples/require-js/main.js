require([
	"https://raw.github.com/jbrunton/frappuccino-container/master/lib/assets/javascripts/frappuccino-container.js"
], function(frappuccino) {
	var container = new frappuccino.core.Container();
	container.register_instance("hello_message", "Hello World!");
	console.log(container.resolve, "hello_message");
});
