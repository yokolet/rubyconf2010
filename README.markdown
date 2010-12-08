# RubyConf 2010 / RubyGems to All JVM Languages

Here are examples used in my presentation at RubyConf 2010. You can see my slide at  [http://servletgarden-point.appspot.com/slideshow](http://servletgarden-point.appspot.com/slideshow).
Samples are modifed so that those won't relay on environment variables on my PC :)


## Prerequisite

To run examples, you need JRuby installed. Also, rake and bundler gems should be installed to your JRuby before you run. I tested on:

* JDK 1.6.0
* JRuby 1.5.5
* rake 0.8.7
* bundler 1.0.7

Other gems used in each example are installed when you run rake tasks.


## Clojure example

To run clojure examples, first, install Datamapper and uuidtools gems. These are installed by:

``jruby -S rake clojure:gems``

Then, run examples by:

``jruby -S rake clojure:examples``

This task runs two examples, DataMapper and uuidtools. If you want to run each example individually, type:

``jruby -S rake clojure:dm
jruby -S rake clojure:uuid``
