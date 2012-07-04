# Curry
[![Build Status](http://travis-ci.org/dmitriy-kiriyenko/curry_for_ruby18.png)](http://travis-ci.org/dmitriy-kiriyenko/curry_for_ruby18) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/dmitriy-kiriyenko/curry_for_ruby18)

In mathematics and computer science, currying is the technique
of transforming a function that takes multiple arguments (or an n-tuple
of arguments) in such a way that it can be called as a chain of
functions each with a single argument (partial application).
[More](http://en.wikipedia.org/wiki/Currying)

# For Ruby
Ruby 1.9.x has currying already. For 1.8.7 use this gem. It
adds Proc#curry that does just its stuff. Warning - it does not affect arity.
[More](http://www.khelll.com/blog/ruby/ruby-currying/)

# Installation

In Gemfile:

```ruby
gem 'curry_for_ruby18', :platforms => [:ruby18]
```

# Usage

```ruby
a = lambda {|x, y, z| x + y + z}

a.call(1, 2, 3) # => 6
a.curry(1).call(2, 3) # => 6
```

# Credits

* Thank you very much, [khelll](http://www.khelll.com/blog/ruby/ruby-currying/).
