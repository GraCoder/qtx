cmake_minimum_required(VERSION 3.28)

add_definitions(-DQT_NO_DEBUG)

include_directories(${CMAKE_SOURCE_DIR}/src/3rd/zlib)
include_directories(${CMAKE_BINARY_DIR}/src/3rd/zlib)

add_subdirectory(3rd)

#function(moc_fun file)
#	cmake_path(GET file STEM base_name)
#	cmake_path(GET file PARENT_PATH parent_dir)
#	set(inputfile ${CMAKE_CURRENT_SOURCE_DIR}/${file})
#	set(outputfile ${CMAKE_CURRENT_BINARY_DIR}/moc/${parent_dir}/moc_${base_name}.cpp)
#	#file(MAKE_DIRECTORY ${outputfile}) 
#	execute_process(COMMAND ${QT_MOC_EXECUTABLE} -o ${outputfile} ${inputfile})
#	set(ret_moc ${outputfile} PARENT_SCOPE)
#endfunction()

set(CMAKE_DEBUG_POSTFIX "d")

add_subdirectory(corelib)
add_subdirectory(gui)
