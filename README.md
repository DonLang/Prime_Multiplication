# Prime Multiplication

Introduction
---
This program is a coding challenge to create a multiplication table of the first 10 prime numbers.
- The program must run from the command line and print one table to
STDOUT.
- The first row and column of the table should have the 10 primes, with each
cell containing the product of the primes for the corresponding row and
column.



Ruby and Dependencies
---
This application is currently running and tested on:
- Ruby 2.4.1

And is using the gems
- [Rspec (3.7.0)](https://rubygems.org/gems/rspec/versions/3.7.0) 
- [terminal-table (1.8.0)](https://rubygems.org/gems/terminal-table)


Getting Started
---
### Initial Setup

This app runs on Ruby, which can be installed and setup via the
[installation guide](https://www.ruby-lang.org/en/documentation/installation/),
and uses [Bundler](https://bundler.io/)


### Running Your Application

```
git clone https://github.com/DonLang/Prime_Multiplication.git
cd Prime_Multiplication
bundle install 
```

Finally, run 
```
$ ruby runner.rb
``` 
for a multiplication table of the first 10 primes, or 
```
$ ruby runner.rb 5
``` 
 with any positive integer in place of the `5` will get you a multiplication table of that size.

####Testing

For testing run `$ rspec` in the command line.

