# Rakefile for sample code        -*- ruby -*-
require 'ant'

task :default => [:all_examples]

BASE_PATH = File.dirname(__FILE__)

desc 'Run all examples (except Scala)'
task :all_examples => ["clojure:examples", "jython:examples", "groovy:examples", "jruby:examples"]

CLOJURE_GEMFILE = "clojure/Gemfile"
CLOJURE_GEM_PATH = "lib"               # relative path to Gemfile
CLOJURE_DM_SAMPLE = "clojure/redbridge_datamapper.clj"
CLOJURE_UUID_SAMPLE = "clojure/uuid_sample.clj"

namespace :clojure do
  desc 'Install uuidtools and DataMapper gems in "clojure/lib" directory'
  task :gems do
    exec "jruby -S bundle install --gemfile=#{CLOJURE_GEMFILE} --path=#{CLOJURE_GEM_PATH}"
  end

  desc 'Run Clojure examples'
  task :examples => ["dm", "uuid"]

  desc 'Run Datamapper example'
  task :dm do
    ant.java :fork => "true", :classname => "clojure.main" do
      arg :value => CLOJURE_DM_SAMPLE
      classpath do
        pathelement :location => "#{BASE_PATH}/clojure/lib/clojure.jar"
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar" 
        pathelement :location => "#{BASE_PATH}/clojure" 
      end
    end
  end

  desc 'Run uuidtools example'
  task :uuid do
    ant.java :fork => "true", :classname => "clojure.main" do
      arg :value => CLOJURE_UUID_SAMPLE
      classpath do
        pathelement :location => "#{BASE_PATH}/clojure/lib/clojure.jar"
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar" 
      end
    end
  end
end


SCALA_GEMFILE = "scala/Gemfile"
SCALA_GEM_PATH = "lib"               # relative path to Gemfile
SCALA_TWITTER_SAMPLE = "scala/redbridge_twitter.scala"
SCALA_UUID_SAMPLE = "scala/uuid_sample.scala"

namespace :scala do
  desc 'Install uuidtools and twitter gems in "scala/lib" directory'
  task :gems do
    exec "jruby -S bundle install --gemfile=#{SCALA_GEMFILE} --path=#{SCALA_GEM_PATH}"
  end

  desc "Run Scala examples (doesn't work)"
  task :examples => ["twitter", "uuid"]

  desc "Run twitter example (doesn't work)"
  task :twitter do
    ant.java :fork => "true", :classname => "scala.tools.nsc.MainGenericRunner" do
      sysproperty :key => "scala.home", :value => "#{BASE_PATH}/scala"
      jvmarg :value => "-Xmx256M"
      arg :value => SCALA_TWITTER_SAMPLE
      classpath do
        pathelement :location => "#{BASE_PATH}/scala/lib/scala-compiler.jar"
        pathelement :location => "#{BASE_PATH}/scala/lib/scala-library.jar"
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar" 
      end
    end
  end

  desc "Run uuidtools example (doesn't work)"
  task :uuid do
    ant.java :fork => "true", :classname => "scala.tools.nsc.MainGenericRunner" do
      sysproperty :key => "scala.home", :value => "#{BASE_PATH}/scala"
      jvmarg :value => "-Xmx256M"
      arg :value => SCALA_UUID_SAMPLE
      classpath do
        pathelement :location => "#{BASE_PATH}/scala/lib/scala-compiler.jar"
        pathelement :location => "#{BASE_PATH}/scala/lib/scala-library.jar"
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar" 
      end
    end
  end
end

JYTHON_GEMFILE = "jython/Gemfile"
JYTHON_GEM_PATH = "lib"               # relative path to Gemfile
JYTHON_CUCUMBER_SAMPLE = "jython/redbridge_cucumber.py"
JYTHON_UUID_SAMPLE = "jython/uuid_sample.py"

namespace :jython do
  desc 'Install uuidtools and cucumber gems in "jython/lib" directory'
  task :gems do
    exec "jruby -S bundle install --gemfile=#{JYTHON_GEMFILE} --path=#{JYTHON_GEM_PATH}"
  end

  desc 'Run Jython examples'
  task :examples => ["cucumber", "uuid"]

  desc 'Run cucumber example'
  task :cucumber do
    ant.java :fork => "true", :classname => "org.python.util.jython" do
      arg :value => JYTHON_CUCUMBER_SAMPLE
      arg :value => "#{BASE_PATH}/jython/features/fibonacci.feature"
      classpath do
        pathelement :location => "#{BASE_PATH}/jython/lib/jython.jar"
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar" 
      end
    end
  end

  desc 'Run uuidtools example'
  task :uuid do
    ant.java :fork => "true", :classname => "org.python.util.jython" do
      arg :value => JYTHON_UUID_SAMPLE
      classpath do
        pathelement :location => "#{BASE_PATH}/jython/lib/jython.jar"
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar" 
      end
    end
  end
end


GROOVY_GEMFILE = "groovy/Gemfile"
GROOVY_GEM_PATH = "lib"               # relative path to Gemfile
GROOVY_UUID_SAMPLE = "groovy/uuid_sample.groovy"

namespace :groovy do
  desc 'Run Groovy examples'
  task :examples => ["uuid"]

  desc 'Install uuidtools gem in "groovy/lib" directory'
  task :gems do
    exec "jruby -S bundle install --gemfile=#{GROOVY_GEMFILE} --path=#{GROOVY_GEM_PATH}"
  end

  desc 'Run uuidtools example'
  task :uuid do
    exec "ant -f groovy/build.xml"
  end

  desc "This is supposed to work but not. It can't load uuidtools gem via ant groovy task."
  task :uuid2 do
    ant.taskdef :name => "groovy", :classname => "org.codehaus.groovy.ant.Groovy" do
      classpath do
        pathelement :location => "#{BASE_PATH}/groovy/lib/groovy-all-1.7.5.jar"
      end
    end
    ant.groovy :src => "#{BASE_PATH}/groovy/uuid_sample.groovy" do
      classpath do
        pathelement :location => "#{BASE_PATH}/jruby-complete-1.5.5.jar"
      end
    end
  end
end

JRUBY_GEMFILE = "jruby/Gemfile"
JRUBY_GEM_PATH = "lib"               # relative path to Gemfile
JRUBY_UUID_SAMPLE = "jruby/uuid_sample.rb"

namespace :jruby do
  desc 'Run JRuby examples'
  task :examples => ["uuid"]

  desc 'Install uuidtools gem in "jruby/lib" directory'
  task :gems do
    exec "jruby -S bundle install --gemfile=#{JRUBY_GEMFILE} --path=#{JRUBY_GEM_PATH}"
  end

  desc 'Run uuidtools example'
  task :uuid do
    ant.java :fork => "true", :jar => "#{BASE_PATH}/jruby-complete-1.5.5.jar" do
      arg :value => JRUBY_UUID_SAMPLE
    end
  end
 end
