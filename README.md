# Thinking with Types
Exercises and notes from the book ["Thinking with Types"](https://leanpub.com/thinking-with-types)

## See also

### Keep your types small
* [Matt Parsons: Keep your types small](https://www.parsonsmatt.org/2018/10/02/small_types.html) blog post

> When we restrict what we can do, it's easier to understand what we can do.

"Type safety Back and Forth" - pushing the responsibity in one of two directions:
* forwards: the caller of the function is responsible for handling possible errors (eg the function returns values wrapped in `Maybe`, `Either`)
* backwards: the caller of the function is required to provide the correct inputs (eg `NonZero Int`, `NonEmpty [Int]`)

> Pushing safety backwards - restricting the domain - makes things simpler; we take away the power to get it wrong.

### Parse, don’t validate
* [Alexis King: Parse, don’t validate](https://lexi-lambda.github.io/blog/2019/11/05/parse-don-t-validate/) blog post

Similar to Matt Parson's post.

### A Type of programming
* https://atypeofprogramming.com

### Other developers working through the book
* [Stephen](https://github.com/exeter-fp/thinking-with-types/tree/master/stephen)
* [Martin](https://github.com/martinrist/haskell-sandbox/tree/master/src/ThinkingWithTypes)
