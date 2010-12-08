// filename: dispatcher.groovy
import org.jruby.embed.ScriptingContainer

c = new ScriptingContainer()
env = ["rack.input":"", REQUEST_METHOD:"get"]
c.put("env", env)
response = c.runScriptlet("res = HomeController.action('index').call(env); res[2].body")

println response
