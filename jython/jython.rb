require 'java'
require 'lib/jython.jar'

jython = org.python.util.PythonInterpreter.new

PYTHON_CODE = <<-END
for num in (x ** 2 for x in range(4)):
    print '%s, %s' % (num, num / 2.0)
END

jython.exec(PYTHON_CODE)
