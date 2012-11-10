## A JavaScript/CoffeeScript dependency injector container

```frappuccino-container``` is a lightweight dependency injection container for JavaScript and CoffeeScript apps.  This is a standalone version of the container implemented in the [frappuccino](http://jbrunton.github.com/frappuccino-core/) application framework.  However, while that framework is still in an experimental phase with an unstable codebase, the container is a little more mature, so I'm making it available separately.

## Installation / Usage

### Node.js

Install the latest version from master:

    npm install https://github.com/jbrunton/frappuccino-container/tarball/master

Then simply ```require``` it:

```coffeescript
frappuccino = require 'frappuccino-container'
container = new frappuccino.core.Container
# etc.
```

### Ruby on Rails

Add this repository as a gem:

### Vanilla Web

Download [frappuccino-container.js](https://raw.github.com/jbrunton/frappuccino-container/master/build/frappuccino-container.js).

#### Require.js

Frappuccino will add itself to the Require.js ```exports``` object so that it can be loaded as an AMD dependency.  It will, however, add itself to the global namespace &mdash; so you may wish to invoke the ```noConflict()``` method to return the ```core``` global variable to its previous owner:

```javascript
require([
    'frappuccino-container'
], function(frappuccino) {
    frappuccino.noConflict();
    container = new frappucino.core.Container();
    # etc.
});
```

#### Vanilla JavaScript

You'll need to have [Underscore.js](http://underscorejs.org/) loaded in your application.

Then, simply download the standalone [frappuccino-container.js](https://raw.github.com/jbrunton/frappuccino-container/master/build/frappuccino-container.js) file and use it in your app:

```html
<head>
    <script type="text/javascript" src="frappuccino-container.js"></script>
</head>
<body>
    <script>
        var container = new frappuccino.core.Container();
        // etc.
    </script>
</body>
```

## Documentation

For some example use cases, see:

* the [unit tests](https://github.com/jbrunton/frappuccino-core/blob/master/spec/javascripts/spec/container/container_spec.js.coffee) for the container
* the [frappuccino-demo app](https://github.com/jbrunton/frappuccino-demo), which shows it in use with the ```frappuccino``` framework
