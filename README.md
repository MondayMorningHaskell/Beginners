# Haskell Liftoff Beginners Series

Welcome to the companion Github repository for our [Liftoff](https://www.mmhaskell.com/liftoff) series on Monday Morning
Haskell! This code is meant to accompany the series so you can have hands-on examples to work with! 

## Using this Repository

The [first article](https://www.mmhaskell.com/liftoff/install) is done entirely within GHCI, the Haskell interpreter.
So to follow along with the examples in that part, you'll just need to open the interpreter like so:

```bash
>> stack ghci
```

Then for the second two articles, you'll be working with some code examples. Each article has modules in this
repository: the normal module, and the "complete" module. The latter contains all the code examples from the article
already specified. The former contains mostly stubbed and `undefined` definitions, so that you can follow along with
the article and fill out the different definitions.

In general, you should just work by confirming your code compiles by building it:

```bash
>> stack build
```

Though you can also examine the output of the various expressions by using GHCI and loading the modules:

```bash
>> stack ghci
...
> :l Syntax
> myIfStatement 1
3
```

In the article itself, you can also find some instructions for running the `main` function of the module as an
executable.

### Basic Syntax

For [part 2](https://www.mmhaskell.com/liftoff/syntax) of the series, you'll want to use the
[Syntax](https://www.github.com/MondayMorningHaskell/Beginners/tree/master/src/Syntax.hs) module if you're
following along, or the
[SyntaxComplete](https://www.github.com/MondayMorningHaskell/Beginners/tree/master/src/SyntaxComplete.hs) module if
you're just looking for the reference.

And for the [third](https://www.mmhaskell.com/liftoff/data-types) part, you should look at
[DataTypes](https://www.github.com/MondayMorningHaskell/Beginners/tree/master/src/DataTypes.hs)
and [DataTypesComplete](https://www.github.com/MondayMorningHaskell/Beginners/tree/master/src/DataTypesComplete.hs)!