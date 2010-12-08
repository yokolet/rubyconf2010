# filename: uuid_sample.py
from java.lang import System
from org.jruby.embed import ScriptingContainer
c = ScriptingContainer()
paths = [System.getProperty("user.dir") + "/jython/lib/jruby/1.8/gems/uuidtools-2.1.1/lib"]
c.setLoadPaths(paths)
c.runScriptlet("require 'rubygems'; require 'uuidtools'")
print c.runScriptlet("UUIDTools::UUID.timestamp_create")
