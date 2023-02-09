 # PSEUDO CODE
 ## Question 1
This is a bonus question. Feel free to skip to the next challenge.

HackerRank is written in RoR and we have various classes defined in it. Some of them are

Hacker Submission TestCase Contest etc.

You have been given a function where an object which may or may not be of the above mentioned type is sent as an argument. You have to use the case control structure in Ruby to identify the class to which the object belongs and print the following output:

if Hacker, output "It's a Hacker!" if Submission, output "It's a Submission!" if TestCase, output "It's a TestCase!" if Contest, output "It's a Contest!" for any other object, output "It's an unknown model" Note

use case (switch statement of Ruby) use puts for printing Ruby Docs on case

 ## Question 2
In control structures tutorial, we learned about various methods to iterate over a collection like unless, loop and the most commonly used each method.

Ruby, however, provides an Enumerable module which packages a bunch of methods which can be used with any other class by including it (referred to as mixing in). That means that programmers don't have to write all those methods many different times for different objects. As long as the custom object defines an each method and includes Enumerable module, it can get access to all of its magic.

In this challenge, you have been provided with a custom object called colors that defines its own each method. You need to iterate over the items and return an Array containing the values.

 ## Question 3
In the previous challenge, we learned about each method being central to all of the methods provided by Enumerable class. One of such useful methods is each_with_index which allows you to iterate over items along with an index keeping count of the item.

For example,

colors = ['red', 'green', 'blue'] colors.each_with_index { |item, index| p "#{index}:#{item}" } "0:red" "1:green" "2:blue" As you can note, the counting of items starts from 0.

In this challenge, your task is to complete the skip_animals method that takes an animals array and a skip integer and returns an array of all elements except first skip number of items as shown in the example below.

For example,

skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2) => ["2:fox", "3:wolf"] It is guaranteed that number of items in animals array is greater than the value of skip.

 ## Question 4
Beside simple methods to iterate over objects, Ruby Enumerable provides a number of important higher order constructs that we shall explore in further challenges. One of such important methods is collect method, also known as map.

map as the name may suggest, takes a function and maps (applies) it to a collection of values one by one and returns the collection of result.

That is,

This single powerful method helps us to operate on a large number of values at once.

For example,

[1,2,3].map { |x| 2x } => [2, 4, 6] {:a=>1, :b=>2, :c=>3}.collect { |key, value| 2value } => [2, 4, 6] Note that these methods are different from each in the respect that these methods return a new collection while former returns the original collection, irrespective of whatever happens inside the block.

In this challenge, your task is to write a method which takes an array of strings (containing secret enemy message bits!) and decodes its elements using ROT13 cipher system; returning an array containing the final messages.

For example, this is how ROT13 algorithm works,

Original text:

Why did the chicken cross the road? Gb trg gb gur bgure fvqr! On application of ROT13,

Jul qvq gur puvpxra pebff gur ebnq? To get to the other side!

 ## Question 5
A common scenario that arises when using a collection of any sort, is to get perform a single type of operation with all the elements and collect the result.

For example, a sum(array) function might wish to add all the elements passed as the array and return the result.

A generalized abstraction of same functionality is provided in Ruby in the name of reduce (inject is an alias). That is, these methods iterate over a collection and accumulate the value of an operation on elements in a base value using an operator and return that base value in the end.

Let's take an example for better understanding.

(5..10).inject(1) {|product, n| product * n } => 151200 In above example, we have the following elements: a base value 1, an enumerable (5..10), and a block with expressions instructing how to add the calculated value to base value (i.e., multiply the array element to product, where product is initialized with base value)

So the execution follows something like this:

loop 1
n = 1 product = 1 return value = 1*1

loop 2
n = 2 product = 1 return value = 1*2

n = 3 product = 2 return value = 2*3

.. As you can notice, the base value is continually updated as the expression loops through the element of container, thus returning the final value of base value as result.

Other examples,

(5..10).reduce(1, :) # : is shorthand for multiplication => 151200 Consider an arithmetico-geometric sequence where the term of the sequence is denoted by . In this challenge, your task is to complete the sum method which takes an integer n and returns the sum to the n terms of the series.

 ## Question 6
Ruby offers various enumerables on collections that check for validity of the objects within it.

Consider the following example:

arr = [1, 2, 3, 4, 5, 6] => [1, 2, 3, 4, 5, 6] h = {"a" => 1, "b" => 2, "c" => 3} => {"a" => 1, "b" => 2, "c" => 3} The any? method returns true if the block ever returns a value other than false or nil for any element passed to it:

arr.any? {|a| a % 2 == 0} # checks if any number in the array is even => True h.any? {|key, value| value.is_a? String} # checks if any value of the Hash object is of the type String => False The all? method returns true if the block never returns false or nil for any element passed to it:

arr.all? {|a| a.is_a? Integer} # checks if all elements of the array are of the type Integer => True h.all? {|key, value| key.is_a? String} # checks if all keys of the Hash object are of the type String => True The none? method returns true if the block never returns true for any element passed to it:

arr.none? {|a| a.nil?} # Checks if none of the elements in the array are of nil type => True h.none? {|key, value| value < 3} # checks if all values of the Hash object are less than 3 => False The find method returns the first element for which block is not false:

arr.find {|a| a > 5} # returns the first element greater than 5 and nil if none satisfies the condition => 6 h.find {|key, value| key == "b"} # returns an Array of the first match [key, value] that satisfies the condition and nil otherwise => ["b", 2] Task Based on what you've learned above, complete the functions declared in your editor below.

 ## Question 7
Another function often used with data collections is one which groups the elements according to some evaluation result.

Consider the following example. Let's say you have a list of 100 integers and you want to group them according to their even and odd value.

In Ruby, you can easily do this by using group_by method provide by Enumerable module.

(1..5).group_by {|x| x%2} {1=>[1,3,5], 0=>[2, 4]} Of course this is a very simple example and its use can be very complicated in nature.

In this challenge, your task is to group the students into two categories corresponding to their marks obtained in a test. The list of students will be provided in a marks hash with student name as key and marks obtained (out of 100) as value pair, along with the pass_marks as argument.

The method group_by_marks must return a Hash containing an array of students who passed as value to Passed key, and those who failed as value to Failed key. If a particular key is empty, don't return that key.

For example,

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60} group_by_marks(marks, 30) => {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}

 ## Question 8
In the previous challenge, we learned to use methods to abstract similar computations into logical chunks of code that otherwise would be difficult to manage. Methods, in a way, behave like a black box. The programmer works mainly on 1) inputs, 2) expected output, and 3) how it works. We do not have to worry about method internals. In this set of tutorials, we will focus on understanding the three aspects described above.

The ability to pass arguments allows complexity to be hidden from the programmer. We have already seen straightforward cases of passing several values to methods as variables, but there is much more to Ruby's methods.

Consider a case where a method is invoked from different portions of code with a variation in only one of the arguments. All other arguments remain constant. In such cases, it is useful to assign default values to the variables. It allows us to avoid passing a value for every argument, decreasing the chance of error.

For example,

def prefix(s, len=1) s[0,len] end

prefix("Ruby", 3) # => "Rub" prefix("Ruby") # => "R" In this challenge, your task is to determine what the take method does. Study the examples below, then implement the method.

take([1,2,3], 1) [2, 3] take([1,2,3], 2) [3] take([1,2,3]) [2, 3] Note The method can be invoked as name('Foolan', 'Barik') or, without the parentheses, as name 'Foolan', 'Barik'. The latter convention can be confusing and is not recommended.

 ## Question 9
In our previous challenge, we explored one way to pass a variable number of arguments to our methods. While it may seem handy feature to have, except few circumstances, you are never going to use that many variables for your method. Also, if your are passing several different types of variables to the method which then will be assigned to the array, it can be difficult for the programmer invoking the method to remember the proper order for those arguments.

Ruby allows you to (partially) mitigate this problem by passing a Hash as an argument or one of the arguments. For example, you have a method that takes a URI to download a file and another argument containing a Hash of other named options (proxy, timeout, active-connections etc.,)

def fetch_file(uri, options) if options.has_key?(:proxy) # do something end end The main problem with this technique, however, is that you cannot easily set default value for arguments (Read more). Since this construct is highly useful, Ruby 2 introduced keyword arguments which allows you to write -

def foo(x, str: "foo", num: 424242) [x, str, num] end

foo(13) #=> [13, 'foo', 424242] foo(13, str: 'bar') #=> [13, 'bar', 424242] Also, introducing the double splat (**) which similar to it's counterpart collects all the extra named keywords as a hash parameter.

def foo(str: "foo", num: 424242, **options) [str, num, options] end

foo #=> ['foo', 424242, {}] foo(check: true) # => ['foo', 424242, {check: true}] In this challenge, your task is to write a method convert_temp that helps in temperature conversion. The method will receive a number as an input (temperature), a named parameter input_scale (scale for input temperature), and an optional parameter output_scale (output temperature scale, defaults to Celsius) and return the converted temperature. It should perform interconversion between Celsius, Fahrenheit and Kelvin scale.

For example,

convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin') => 273.15 convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit') => 32.0 Note that the input values are lowercase version of corresponding scales.