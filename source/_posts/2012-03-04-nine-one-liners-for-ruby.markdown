---
layout: post
title: "Nine One-Liners for Ruby"
date: 2012-03-04 02:27
comments: true
categories: 
---

I just thought [this][on_scala] was an interesting post on Scala showcasing the
ease that some exists in many newer (and some older) languages for dealing with
complex operations on ordered data.

Multiply each item in a list by 2

``` ruby
(1..10).map { |n| n * 2 }
```

Magic.

Sum a list of numbers

``` ruby
(1..1000).inject(&:+)
(1..1000).inject { |r, n| r += n }
(1..1000).inject(0) { |r, n| r += n }
```

This takes advantage of Symbol#to_proc, which converts a symbol into a procedure. The above three
lines — I prefer the first — are semantically equivalent.

Verify if exists in a string

``` ruby
word_list = ["scala", "akka", "play framework", "sbt", "typesafe"]
tweet = "This is an example tweet talking about scala and sbt."
word_list.any? { |w| tweet.include?(w) }  # nice
!(tweet.split & word_list).empty?         # cute, but too cute by half
```

The latter certainly isn’t that efficient, but it’s nice to know.

Read in a file

``` ruby
file_text  = File.read("data.txt")
file_lines = File.read("data.txt").lines
```

The String#lines method applies to strings, not files, although there are other methods to work
through lines of files. Either way, working with strings is one of the easier things in Ruby. Many
other languages simplify this greatly, too, but I can speak of the pain of doing these things with
stuff like VBA and AppleScript.

Happy Birthday to You!

``` ruby
4.times { |n| puts "Happy Birthday #{n == 2 ? "dear NAME" : "to you"}" }
```

Not too difficult, although it does showcase the legibility of Ruby’s string interpolation.

Filter list of numbers

``` ruby
passed, failed = [49, 58, 76, 82, 88, 90].partition { |n| n > 60 }
```

This will split a list of grades into passing and failing camps. Without such functionality, you’d
likely go about this by initializing a passing and failing array, then iterating over the grades and
pushing them to the passing and failing arrays based on the outcome of an if statement. That’s not
horrible, but it’s a common enough operation where a bit of terseness is nice.

Fetch and parse an XML web service

``` ruby
require "nokogiri"
require "open-uri"
results = Nokogiri::XML(open("http://search.twitter.com/search.atom?&q=ruby"))
```

Okay, so this one’s not so straightforward as Ruby has two requirements. But Nokogiri is a very nice
thing. OpenURI monkey patches the open method to also open URIs.

Find minimum (or maximum) in a list

``` ruby
[14, 35, -7, 46, 98].min
[14, 35, -7, 46, 98].max
```

The nice thing here is that any object that can implements Enumerable and can compare its elements
with each other benefits from min and max.

Sieve of Eratosthenes

``` ruby
(a = (2..127).to_a).each { |n| a.reject! { |m| m > n && m % n == 0 } }
```

That’s hideous. It’s not what Ruby’s for, and it’s not as “exciting” as following through the
recursion of Lisp-y languages. But it works.

The other one listed involved parallel processing. You got me there.

  [on_scala]:http://mkaz.com/solog/scala/10-scala-one-liners-to-impress-your-friends.html
