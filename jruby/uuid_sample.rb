# filename: uuid_sample.rb
require 'java'
import java.lang.System
import org.jruby.embed.ScriptingContainer
c = ScriptingContainer.new
path = "ENV['GEM_PATH']='" + System.getProperty("user.dir") + "/jruby/lib/jruby/1.8'"
c.run_scriptlet(path)
c.run_scriptlet("require 'rubygems'; require 'uuidtools'")
puts c.run_scriptlet("UUIDTools::UUID.timestamp_create")
