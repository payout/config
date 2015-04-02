[![Gem Version](https://badge.fury.io/rb/ribbon-config.svg)](http://badge.fury.io/rb/ribbon-config) [![Code Climate](https://codeclimate.com/github/ribbon/event_bus/badges/gpa.svg)](https://codeclimate.com/github/ribbon/event_bus) [![Test Coverage](https://codeclimate.com/github/ribbon/event_bus/badges/coverage.svg)](https://codeclimate.com/github/ribbon/event_bus) [![Build Status](https://semaphoreci.com/api/v1/projects/2767d765-748f-4b08-bddd-3b23d894e65c/389366/shields_badge.svg)](https://semaphoreci.com/ribbon/config)

# ribbon-config
A general purpose configuration utility to simplify and standardize configuration of ruby libraries.

## Installation

Add this to your Gemfile:

```
gem 'ribbon-config'
```

Then run

```
bundle
```

Or you can install it manually:

```
gem install ribbon-config
```

## Basic Usage

```ruby
config = Ribbon::Config.new {
  ##
  # Key-Values.
  # Must be namespaced.
  namespace.key = 'value'
  another_namespace.some_config_value = 'can be any object, including nil'
  
  ##
  # Arrays
  an_array 1
  an_array 2
  an_array 3
  
  proc_array { 'one' }
  proc_array { :two }
  proc_array { 3 }
  proc_array { |a| a }
}

config.namespace.key # => 'value'
config.another_namespace.some_config_value # => 'can be any object, including nil'
config.an_array # => [1, 2, 3]
config.proc_array.call('4') # => ['one', :two, 3, '4']
```
