// filename: uuid_sample.scala
import scala.collection.JavaConversions._
import scala.collection.mutable.ListBuffer
import org.jruby.embed.ScriptingContainer

val c = new ScriptingContainer
val dirs = List(System.getProperty("user.dir") + "/scala/lib/jruby/1.8/gems/uuidtools-2.1.1/lib")
val paths: java.util.List[String] = ListBuffer(dirs: _*)
c.setLoadPaths(paths)
c.runScriptlet("require 'rubygems'; require 'uuidtools'")
println(c.runScriptlet("UUIDTools::UUID.timestamp_create"))
