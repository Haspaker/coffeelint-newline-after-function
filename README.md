Coffeelint - Newline after Function
=================================

> Validate a newline policy after every function definition

## Description

This [CoffeeLint](http://www.coffeelint.org) plugin verifies whether or not your function definitions are followed by a newline. You can customise the number of newlines.

## Installation

```sh
[sudo] npm install -g coffeelint-newline-after-function
```
> ***Note:*** *Right now a Coffeelint plugin cannot be installed as a project dependency and must be installed globally. Perhaps this will be improved in a future version of Coffeelint. If you would like to track progress on this enhancement head [over here](https://github.com/clutchski/coffeelint/issues/210).*

## Usage

Insert the below configuration into *coffeelint.json* that you use for linting your scripts:

```js
"newline_after_function": {
    "module": "coffeelint-newline-after-function"
    "value": 1,
    "level": "error",
}
```
## Example

This code will lint without errors:

```
Class TestClass

  foo : ->

      @bar()

  bar : =>

      console.log("foo bar")
```

But this will fail:

```
Class TestClass

  foo : ->
    console.log("Oh no! I have linting errors.")
```

## Configuration

The only configuration option specific to this plugin is the **value** property. Change this to the number of newlines that you like to be inforced.

By default, Coffeelint will report errors if this rule is not satisfied. You may want to relax this by setting the **level** to **warn** in your configuration.



## License

MIT © [scalable minds](http://scm.io)
