## A JavaScript/CoffeeScript dependency injector container

```frappuccino-container``` is a lightweight dependency injection container for JavaScript and CoffeeScript apps.  This is a standalone version of the container implemented in the [frappuccino](http://jbrunton.github.com/frappuccino-core/) application framework.  However, while that framework is still in an experimental phase with an unstable codebase, the container is a little more mature, so I'm making it available separately.

### Requirements

You'll need to have [Underscore.js](http://underscorejs.org/) loaded in your application.

Then, simply download the standalone [frappuccino-container.js](https://raw.github.com/jbrunton/frappuccino-container/master/build/frappuccino-container.js) file and use it in your app.

### Usage

For some example use cases, see:

* the [unit tests](https://github.com/jbrunton/frappuccino-core/blob/master/spec/javascripts/spec/container/container_spec.js.coffee) for the container
* the [frappuccino-demo app](https://github.com/jbrunton/frappuccino-demo), which shows it in use with the ```frappuccino``` framework
