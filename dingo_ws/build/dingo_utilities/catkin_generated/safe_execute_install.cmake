execute_process(COMMAND "/home/dingo/DingoQuadruped/dingo_ws/build/dingo_utilities/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dingo/DingoQuadruped/dingo_ws/build/dingo_utilities/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
