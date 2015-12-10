
[![Build Status](https://travis-ci.org/htw-imi-info3/rubylearning.png?branch=master)](https://travis-ci.org/htw-imi-info3/rubylearning)

# Rubylearning Project

This is a project that illustrates learning a programming language by writing unit tests.

There are rspec unit tests for all kinds of different aspects of ruby.

to run, simply type 

    rake


## Getting started

### Installation

You need ruby installed.

First, you need to install the necessary dependencies using [bundler](http://bundler.io/).
If you haven't already installed the bundler gem, run

    gem install bundler

Then, run

    bundle

once. This will install all gems listed in `Gemfile` and creates Gemfile.lock stating the actual versions of the installed gems.


### Calling the Tests

You can either run all tests with

	rake

(which calls rspec about/*.rb)

or individual files with

    rspec about/<filename>.rb

# Amend this project and share your changes!

Please make amendmends to this project if you work through the ruby examples. The task for 
WS2014 will be: add a link to the documentation for each topic. Also feel free to add things you find interesting, clarify things that were unclear to you etc. 

On your way through it, you also practice using git and github to exchange source code.

See and amend [git-commands.md](git-commands.md) for useful git commands.

Please make sure that all examples pass before pushing to github - otherwise Travis will bite you!
[https://travis-ci.org/htw-imi-info3/rubylearning](https://travis-ci.org/htw-imi-info3/rubylearning)

# Ruby Learning Resources

* [Differences when coming from Java](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)
* A neat little tutorial on a [command line app](http://neurogami.com/content/neurogami-10_minutes_to_your_first_Ruby_app/)
* (old Version of)[Pickaxe Book](http://ruby-doc.com/docs/ProgrammingRuby/)

Hi!
