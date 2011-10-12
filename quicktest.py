#!/usr/bin/python
import os, sys, signal
from PySide import QtGui, QtDeclarative

here = os.path.dirname(__file__)
qml_file = os.path.join(here, 'qml/TimeTracker/main.qml')

app = QtGui.QApplication(sys.argv)
view = QtDeclarative.QDeclarativeView(qml_file)

view.showFullScreen()

if __name__ == '__main__':
    signal.signal(signal.SIGINT, signal.SIG_DFL) # otherwise PySide ignores ^C
    if view.status == view.Ready:
        app.exec_()
    else:
        print "Could not load %s, exitting" % qml_file
