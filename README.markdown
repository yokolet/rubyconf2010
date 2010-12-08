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

``jruby -S rake clojure:dm``

``jruby -S rake clojure:uuid``


## Jython example

In the same way, install gems then run examples:

``jruby -S rake jython:gems``

``jruby -S rake jython:examples``

or

``jruby -S rake jython:cucumber``

``jruby -S rake jython:uuid``


## Scala example

Scala examples get run in a different way. You need scala installed. For example, I have scala in /Users/yoko/Tools/scala-2.8.0.final directory. In my case, twitter example will run by `/Users/yoko/Tools/scala-2.8.0.final/bin/scala -cp ./jruby-complete-1.5.5.jar scala/uuid_sample.scala`.

``jruby -S rake scala:gems``

``<path to scala>/bin/scala -cp ./jruby-complete-1.5.5.jar scala/redbridge_twitter.scala``

``<path to scala>/bin/scala -cp ./jruby-complete-1.5.5.jar scala/uuid_sample.scala``


## Groovy example

Groovy has two examples. Uuidtools example runs in the same way as clojure and jython. So, install gem, then run:

``jruby -S rake groovy:gems``

``jruby -S rake grooby:uuid``

Another example is a web app with rails. Install tomcat and make symbolic link to Hemlock or copy Hemlock into tomcat's webapp directory. Then, request url on the browser:

``http://localhost:8080/Hemlock/initializer.groovy``

``http://localhost:8080/Hemlock/dispatcher.groovy``


## JRuby example

Exactly the same as others:

``jruby -S rake jruby:gems``

``jruby -S rake jruby:uuid``
