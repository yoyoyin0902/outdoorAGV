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
include hipnuc_imu/serial/CMakeFiles/serial.dir/depend.make

# Include the progress variables for this target.
include hipnuc_imu/serial/CMakeFiles/serial.dir/progress.make

# Include the compile flags for this target's objects.
include hipnuc_imu/serial/CMakeFiles/serial.dir/flags.make

hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o: hipnuc_imu/serial/CMakeFiles/serial.dir/flags.make
hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o: /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/serial.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/Desktop/outdoor_AGV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/serial.cc.o -c /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/serial.cc

hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/serial.cc.i"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/serial.cc > CMakeFiles/serial.dir/src/serial.cc.i

hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/serial.cc.s"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/serial.cc -o CMakeFiles/serial.dir/src/serial.cc.s

hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.requires:

.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.requires

hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.provides: hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.requires
	$(MAKE) -f hipnuc_imu/serial/CMakeFiles/serial.dir/build.make hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.provides.build
.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.provides

hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.provides.build: hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o


hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o: hipnuc_imu/serial/CMakeFiles/serial.dir/flags.make
hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o: /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/unix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/Desktop/outdoor_AGV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/impl/unix.cc.o -c /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/unix.cc

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/impl/unix.cc.i"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/unix.cc > CMakeFiles/serial.dir/src/impl/unix.cc.i

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/impl/unix.cc.s"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/unix.cc -o CMakeFiles/serial.dir/src/impl/unix.cc.s

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires:

.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires
	$(MAKE) -f hipnuc_imu/serial/CMakeFiles/serial.dir/build.make hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides.build
.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides.build: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o


hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o: hipnuc_imu/serial/CMakeFiles/serial.dir/flags.make
hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o: /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/list_ports/list_ports_linux.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amy/Desktop/outdoor_AGV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o -c /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/list_ports/list_ports_linux.cc

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/list_ports/list_ports_linux.cc > CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial/src/impl/list_ports/list_ports_linux.cc -o CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires:

.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires
	$(MAKE) -f hipnuc_imu/serial/CMakeFiles/serial.dir/build.make hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides.build
.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides

hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides.build: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o


# Object files for target serial
serial_OBJECTS = \
"CMakeFiles/serial.dir/src/serial.cc.o" \
"CMakeFiles/serial.dir/src/impl/unix.cc.o" \
"CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o"

# External object files for target serial
serial_EXTERNAL_OBJECTS =

/home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so: hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o
/home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o
/home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o
/home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so: hipnuc_imu/serial/CMakeFiles/serial.dir/build.make
/home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so: hipnuc_imu/serial/CMakeFiles/serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amy/Desktop/outdoor_AGV/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so"
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hipnuc_imu/serial/CMakeFiles/serial.dir/build: /home/amy/Desktop/outdoor_AGV/devel/lib/libserial.so

.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/build

hipnuc_imu/serial/CMakeFiles/serial.dir/requires: hipnuc_imu/serial/CMakeFiles/serial.dir/src/serial.cc.o.requires
hipnuc_imu/serial/CMakeFiles/serial.dir/requires: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires
hipnuc_imu/serial/CMakeFiles/serial.dir/requires: hipnuc_imu/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires

.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/requires

hipnuc_imu/serial/CMakeFiles/serial.dir/clean:
	cd /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial && $(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean.cmake
.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/clean

hipnuc_imu/serial/CMakeFiles/serial.dir/depend:
	cd /home/amy/Desktop/outdoor_AGV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amy/Desktop/outdoor_AGV/src /home/amy/Desktop/outdoor_AGV/src/hipnuc_imu/serial /home/amy/Desktop/outdoor_AGV/build /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial /home/amy/Desktop/outdoor_AGV/build/hipnuc_imu/serial/CMakeFiles/serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hipnuc_imu/serial/CMakeFiles/serial.dir/depend

