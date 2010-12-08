// filename: redbridge_twitter.scala
import org.jruby.embed.{ScriptingContainer, PathType}
val c = new ScriptingContainer
val path = "ENV['GEM_PATH']='" + System.getProperty("user.dir") + "/scala/lib/jruby/1.8'"
c.runScriptlet(path)

val script = """require 'rubygems'
require 'twitter'
require 'pp'
pp Twitter::Search.new('#rubyconf').fetch.results.first"""
c.runScriptlet(script)
