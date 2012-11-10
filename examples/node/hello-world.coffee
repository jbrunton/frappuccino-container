core = require('frappuccino-container').core

container = new core.Container

container.register_instance "hello_message", "Hello World!"
console.log(container.resolve "hello_message")
