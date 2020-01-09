
include(${CMAKE_CURRENT_LIST_DIR}/check-common.cmake)

message(STATUS "config=[${config}]")
check(test_0 "")
check(test_0_with_comma "")
check(test_1 "content")
check(test_1_with_comma "-Wl,--no-undefined")
check(test_and_0 "0")
check(test_and_0_0 "0")
check(test_and_0_1 "0")
check(test_and_1 "1")
check(test_and_1_0 "0")
check(test_and_1_1 "1")
check(test_and_0_invalidcontent "0")
check(test_config_0 "0")
check(test_config_1 "1")
foreach(c debug release relwithdebinfo minsizerel)
  if(NOT "${test_config_${c}}" MATCHES "^(0+|1+)$")
    message(SEND_ERROR "test_config_${c} is \"${test_config_${c}}\", not all 0 or all 1")
  endif()
endforeach()
check(test_not_0 "1")
check(test_not_1 "0")
check(test_or_0 "0")
check(test_or_0_0 "0")
check(test_or_0_1 "1")
check(test_or_1 "1")
check(test_or_1_0 "1")
check(test_or_1_1 "1")
check(test_or_1_invalidcontent "1")
check(test_bool_notfound "0")
check(test_bool_foo_notfound "0")
check(test_bool_true "1")
check(test_bool_false "0")
check(test_bool_on "1")
check(test_bool_off "0")
check(test_bool_no "0")
check(test_bool_n "0")
check(test_bool_empty "0")
check(test_strequal_yes_yes "1")
check(test_strequal_yes_yes_cs "0")
check(test_strequal_yes_no "0")
check(test_strequal_no_yes "0")
check(test_strequal_angle_r "1")
check(test_strequal_comma "1")
check(test_strequal_semicolon "1")
check(test_strequal_angle_r_comma "0")
check(test_strequal_both_empty "1")
check(test_strequal_one_empty "0")
check(test_angle_r ">")
check(test_comma ",")
check(test_semicolon ";")
check(test_colons_1 ":")
check(test_colons_2 "::")
check(test_colons_3 "Qt5::Core")
check(test_colons_4 "C:\\\\CMake")
check(test_colons_5 "C:/CMake")
