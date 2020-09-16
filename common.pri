# Source directories
APPS_SRC = $${PWD}/apps
LIBS_SRC = $${PWD}/libs

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

# C++17 support
CONFIG += c++17

