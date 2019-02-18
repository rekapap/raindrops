# Raindrops

Raindrops Tech Test

## Approach
I chose Ruby as a programming language because it's the one I'm most familiar with. A complete list of the technologies that I've used for this project can be found in the "Technologies" section.

The task I was given consisted of implementing a single function, but I thought it would be best practice to write it inside a module, which I called "Raindrop".

Since the description says to test the expected range of inputs, I included different cases in my tests: negative integers, zero, large values.

I fully test-driven this project, but because of simplicity of the problem (it's  only a function), I used unit tests. Later on I added some feature tests with the given examples, but personally, I think unit tests would be sufficent on their own.

## Description
Write a function that takes as its input a number (n) and converts it to a string, the contents of which depend on the number's factors:
- if the number has a factor of 3, output 'Pling'
- if the number has a factor of 5, output 'Plang'
- if the number has a factor of 7, output 'Plong'
- if the number does not have any of the above as a factor simply return the numbers digits

## Structure
Folders:
- lib: implementation
- spec: tests
- doc: genereated documentation
- coverage: generated test coverage files

## Documentation
1. Generate Documentation:
```bash
rdoc
```
2. Open the the the index.html in your browser:
```text
doc/index.html
```
## Installation
Install bundle:
```bash
bundle install
```

## How to use
1. Require the `Raindrops` module in your file
```ruby
require_relative 'YOUR/PATH/TO/lib/raindrops.rb'
```
2. Call the `convert` function with a `number`:
```ruby
Raindrops.convert(number)
```

## How to run tests
In your project folder run this command from terminal:
```bash
rspec
```

## How to run linter
In your project folder run this command from terminal:
```bash
rubocop
```

## Test Coverage
```text
COVERAGE: 100.00% -- 70/70 lines in 3 files
```

## Technologies
### Languages
- Ruby

### Testing framework
- Rspec
- Capybara (capybara/rspec used in feature tests)

### Linter
- Rubocop

### Test Coverage
- Simplecov
- Simplecov console

### Documentation
- RDoc
