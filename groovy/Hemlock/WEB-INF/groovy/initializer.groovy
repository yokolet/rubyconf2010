// filename: initializer.groovy
import org.jruby.embed.ScriptingContainer

c = new ScriptingContainer()
base_path = context.getRealPath("/WEB-INF")
c.put("load_path", base_path + "/lib/blog")
c.put("gem_path", base_path + "/lib/jruby/1.8")
c.put("gemfile", base_path + "/lib/blog/Gemfile")
c.runScriptlet("\$LOAD_PATH << load_path; ENV['GEM_HOME'] = gem_path; ENV['BUNDLE_GEMFILE'] = gemfile");
c.runScriptlet("require 'config/environment'")
html.html {
  head { title("Rails Initializer") }
  body { p("Rails is up and running!") }
}
