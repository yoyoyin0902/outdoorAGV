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
CMAKE_SOURCE_DIR = /home/amy/Desktop/outdoorAGV/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amy/Desktop/outdoorAGV/build

# Utility rule file for serial_imu_gencpp.

# Include the progress variables for this target.
include hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/progress.make

serial_imu_gencpp: hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/build.make

.PHONY : serial_imu_gencpp

# Rule to build all files generated by this target.
hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/build: serial_imu_gencpp

.PHONY : hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/build

hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/clean:
	cd /home/amy/Desktop/outdoorAGV/build/hipnuc_imu/serial_imu && $(CMAKE_COMMAND) -P CMakeFiles/serial_imu_gencpp.dir/cmake_clean.cmake
.PHONY : hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/clean

hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/depend:
	cd /home/amy/Desktop/outdoorAGV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amy/Desktop/outdoorAGV/src /home/amy/Desktop/outdoorAGV/src/hipnuc_imu/serial_imu /home/amy/Desktop/outdoorAGV/build /home/amy/Desktop/outdoorAGV/build/hipnuc_imu/serial_imu /home/amy/Desktop/outdoorAGV/build/hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hipnuc_imu/serial_imu/CMakeFiles/serial_imu_gencpp.dir/depend

