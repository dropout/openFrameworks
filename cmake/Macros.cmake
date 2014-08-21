# set option helper
macro(OF_option var default type docstring)
	if(NOT DEFINED ${var})
		set(${var} ${default})
	endif()
	set(${var} ${${var}} CACHE ${type} ${docstring} FORCE)
endmacro()

# print variable value
macro(OF_print_var _variableName)
	message(STATUS "${_variableName}=${${_variableName}}")
endmacro()

# get platform string
macro(of_get_platform_string)

endmacro(of_get_platform_string)








# copy file if changed
MACRO(OF_copy_file_if_changed in_file out_file target)
    IF(${in_file} IS_NEWER_THAN ${out_file})
    #    message("COpying file: ${in_file} to: ${out_file}")
        ADD_CUSTOM_COMMAND (
            TARGET     ${target}
            POST_BUILD
            COMMAND    ${CMAKE_COMMAND}
            ARGS       -E copy ${in_file} ${out_file}
        )
    ENDIF(${in_file} IS_NEWER_THAN ${out_file})
ENDMACRO(OF_copy_file_if_changed)

# copy file into directory if changed
MACRO(OF_copy_file_into_directory_if_changed target in_file out_dir )
    GET_FILENAME_COMPONENT(file_name ${in_file} NAME)
    OF_copy_file_if_changed(${in_file} ${out_dir}/${file_name}
${target})
ENDMACRO(OF_copy_file_into_directory_if_changed)

# copy all files from file list to output directory
# sub-trees are ignored, flat hiearchy created
MACRO(OF_copy_files_into_directory_if_changed in_file_list out_dir target)
    FOREACH(in_file ${in_file_list})
        OF_copy_file_into_directory_if_changed(${in_file}
${out_dir} ${target})
    ENDFOREACH(in_file)
ENDMACRO(OF_copy_files_into_directory_if_changed)

# Copy all files and directories in in_dir to out_dir.
# Subtrees remain intact.
MACRO(OF_copy_directory_if_changed target in_dir out_dir)
    #message("Copying directory ${in_dir}")
    FILE(GLOB_RECURSE in_file_list ${in_dir}/*)
    FOREACH(in_file ${in_file_list})
        if(NOT ${in_file} MATCHES ".*/CVS.*")
            STRING(REGEX REPLACE ${in_dir} ${out_dir} out_file
${in_file})
            OF_copy_file_if_changed(${in_file} ${out_file} ${target})
        endif(NOT ${in_file} MATCHES ".*/CVS.*")
    ENDFOREACH(in_file)
ENDMACRO(OF_copy_directory_if_changed)
