// filename: uuid_sample.groovy
println "Hello, Groovy"
import org.jruby.embed.ScriptingContainer
c = new ScriptingContainer()
path = [System.getProperty("user.dir") + "/groovy/lib/jruby/1.8/gems/uuidtools-2.1.1/lib"]
println path
c.setLoadPaths(path)
println c.getLoadPaths()
