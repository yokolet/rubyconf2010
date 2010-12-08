// filename: uuid_sample.groovy
import org.jruby.embed.ScriptingContainer
c = new ScriptingContainer()
c.setClassLoader(c.getClass().getClassLoader())
paths = [System.getProperty("user.dir") + "/groovy/lib/jruby/1.8/gems/uuidtools-2.1.1/lib"]
c.setLoadPaths(paths)
c.runScriptlet("require 'rubygems'; require 'uuidtools'")
println c.runScriptlet("UUIDTools::UUID.timestamp_create")
