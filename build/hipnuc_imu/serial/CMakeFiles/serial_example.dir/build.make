# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amy/Desktop/outdoor_AGV/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amy/Desktop/outdoor_AGV/build

# Include any dependencies generated for this target.
include hipnuc_imu/serial/CMakeFiles/serial_example.dir/depend.make

# Include the progress variables for this target.
include hipnuc_imu/serial/CMakeFiles/serial_example.dir/progress.make

# Include the compile flags for this target's objects.
include hipnuc_imu/serial/CMakeFiles/serial_example.dir/flags.make

hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o: hipnuc_imu/serial/CMakeFiles/serial_example.dir/flags.make
hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o: /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/examples/serial_example.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/Desktop/outdoor_AGV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial_example.dir/examples/serial_example.cc.o -c /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/examples/serial_example.cc

hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial_example.dir/examples/serial_example.cc.i"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/examples/serial_example.cc > CMakeFiles/serial_example.dir/examples/serial_example.cc.i

hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial_example.dir/examples/serial_example.cc.s"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/examples/serial_example.cc -o CMakeFiles/serial_example.dir/examples/serial_example.cc.s

hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.requires:

.PHONY : hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.requires

hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.provides: hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.requires
	$(MAKE) -f hipnuc_imu/serial/CMakeFiles/serial_example.dir/build.make hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.provides.build
.PHONY : hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.provides

hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.provides.build: hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o


# Object files for target serial_example
serial_example_OBJECTS = \
"CMakeFiles/serial_example.dir/examples/serial_example.cc.o"

# External object files for target serial_example
serial_example_EXTERNAL_OBJECTS =

/home/amy/Desktop/outdoor_AGV/devel/lib/serial/serial_example: hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o
/home/amy/Desktop/outdoor_AGV/devel/lib/serial/serial_example: hipnuc_imu/serial/CMakeFiles/serial_example.dir/build.make
/home/amy/Desktop/outdoor_AGV/devel/lib/serial/serial_example: /home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so
/home/amy/Desktop/outdoor_AGV/devel/lib/serial/serial_example: hipnuc_imu/serial/CMakeFiles/serial_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amy/Desktop/outdoor_AGV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/amy/Desktop/outdoor_AGV/devel/lib/serial/serial_example"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hipnuc_imu/serial/CMakeFiles/serial_example.dir/build: /home/amy/Desktop/outdoor_AGV/devel/lib/serial/serial_example

.PHONY : hipnuc_imu/serial/CMakeFiles/serial_example.dir/build

hipnuc_imu/serial/CMakeFiles/serial_example.dir/requires: hipnuc_imu/serial/CMakeFiles/serial_example.dir/examples/serial_example.cc.o.requires

.PHONY : hipnuc_imu/serial/CMakeFiles/serial_example.dir/requires

hipnuc_imu/serial/CMakeFiles/serial_example.dir/clean:
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && $(CMAKE_COMMAND) -P CMakeFiles/serial_example.dir/cmake_clean.cmake
.PHONY : hipnuc_imu/serial/CMakeFiles/serial_example.dir/clean

hipnuc_imu/serial/CMakeFiles/serial_example.dir/depend:
	cd /home/amy/Desktop/outdoor_AGV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amy/Desktop/outdoor_AGV/src /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial /home/amy/Desktop/outdoor_AGV/build /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial/CMakeFiles/serial_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hipnuc_imu/serial/CMakeFiles/serial_example.dir/depend

