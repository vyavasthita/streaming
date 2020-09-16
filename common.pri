CONFIG += debug_and_release
CONFIG(debug, debug|release):BUILD = debug
else:BUILD = release

# Source directories
APPS_SRC = $${PWD}/apps
LIBS_SRC = $${PWD}/libs


streaming.depends = libnNetmicro

# For automatically setting up the sub-dirs
equals(TEMPLATE, subdirs) {
    # Set each target's subdir to the location of its project file
    for (dir, SUBDIRS) {
        contains(dir, ^nUnit.*) {
            $${dir}.subdir = tests/$${dir}
        } else {
            contains(dir, ^lib.*) {
                $${dir}.subdir = libs/$${dir}
            } else {
                $${dir}.subdir = apps/$${dir}
            }
        }
    }
    return()
}

QMAKE_LFLAGS_RPATH=
QMAKE_LFLAGS += "-Wl,-rpath,\'\$$ORIGIN\'" -Wl,-rpath,$$APPS_DIR

# C++17 support
CONFIG += c++17

# Default application include path
INCLUDEPATH *= include

# Output directories (set OUT_BASE env var to override)
#isEmpty(OUT_BASE):OUT_BASE=$${top_builddir}

#APPS_DIR       = $${OUT_BASE}/builds/$${SYS}/$${BUILD}
#LIBS_DIR       = $${OUT_BASE}/builds/$${SYS}/$${BUILD}
#MOC_DIR        = $${OUT_BASE}/builds/$${SYS}/cache/$${TARGET}/moc
#UI_DIR         = $${OUT_BASE}/builds/$${SYS}/cache/$${TARGET}/q_ui
#BUILD_DIR      = $${OUT_BASE}/builds/$${SYS}/cache/$${TARGET}/$${BUILD}
#OBJECTS_DIR    = $${BUILD_DIR}/obj
#RCC_DIR        = $${BUILD_DIR}/rcc

## Apps and libraries go into APPS_DIR for easier deployment
#LIBS = -L$$APPS_DIR $$LIBS
#win32:LIBS *= -L$$LIBS_DIR
#equals(TEMPLATE, lib) {
#    DESTDIR = $$LIBS_DIR
#} else {
#    DESTDIR = $$APPS_DIR
#}
# DESTDIR = $$APPS_DIR



