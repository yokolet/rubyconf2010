# filename: redbridge_cucumber.py
import sys
from java.io import StringWriter
from java.lang import System
from org.jruby.embed import ScriptingContainer, PathType, EvalFailedException
c = ScriptingContainer()
feature = [sys.argv[1]]
c.setArgv(feature)
errors = StringWriter()
c.setError(errors)
path = "ENV['GEM_PATH']='" + System.getProperty("user.dir") + "/jython/lib/jruby/1.8'"
c.runScriptlet(path)
try:
    c.runScriptlet(PathType.ABSOLUTE, System.getProperty("user.dir") + "/jython/lib/jruby/1.8/bin/cucumber")
except EvalFailedException, err:
    print "Oops, Cuke did ", errors 
