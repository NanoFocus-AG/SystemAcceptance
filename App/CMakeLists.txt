
CMAKE_MINIMUM_REQUIRED(VERSION 3.1)
IF(COMMAND CMAKE_POLICY)
  CMAKE_POLICY(SET CMP0003 NEW)
ENDIF(COMMAND CMAKE_POLICY)

SET(THIRD_PARTY_DIR_SHORT $ENV{THIRD_PARTY_DIR_SHORT})
set(NFevalEnv $ENV{NFEVALENV})
SET(ProjectName "SystemAcceptance_${THIRD_PARTY_DIR_SHORT}")
PROJECT(${ProjectName})

IF(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set (CMAKE_INSTALL_PREFIX $ENV{NFEVAL_DIR} CACHE PATH "default install path" FORCE )
ENDIF(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

 IF(MSVC80)
  message(FATAL_ERROR "Visual Studio 2005 is not supported bySystemAcceptance!")
  ENDIF(MSVC80)

IF(CMAKE_CL_64)
  IF(MSVC10)
  SET(WIN64_VS2010 true)
  SET(THIRD_PARTY_DIR Win64_VS2010)
  MESSAGE(STATUS "Visual Studio 10 2010 64 Bit detected.")
  ENDIF(MSVC10)
  
  IF(MSVC14)
  SET(WIN64_VS2017 true)
  SET(THIRD_PARTY_DIR Win64_VS2017)
  MESSAGE(STATUS "Visual Studio 15 2017 64 Bit detected.")
  ENDIF(MSVC14)
  
ELSE(CMAKE_CL_64)  
  IF(MSVC10)
  SET(WIN32_VS2010 true)
  SET(THIRD_PARTY_DIR Win32_VS2010)
  MESSAGE(STATUS "Visual Studio 10 2010 32 Bit detected.")
  ENDIF(MSVC10)
  
  IF(MSVC14)
  SET(WIN32_VS2017 true)
  SET(THIRD_PARTY_DIR Win32_VS2017)
  MESSAGE(STATUS "Visual Studio 15 2017 32 Bit detected.")
  ENDIF(MSVC14)
  
ENDIF(CMAKE_CL_64)

SET(PROJECT_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
SET(PROJECT_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR})

FIND_PACKAGE(Subversion)
IF(Subversion_FOUND)
  Subversion_WC_INFO("${CMAKE_CURRENT_SOURCE_DIR}" SystemAcceptance)
  MESSAGE(STATUS "SystemAcceptance_WC_LAST_CHANGED_REV='${SystemAcceptance_WC_LAST_CHANGED_REV}'")
ELSE(Subversion_FOUND)
  Set(SystemAcceptance_WC_LAST_CHANGED_REV 0)
ENDIF(Subversion_FOUND)

SET( MAJOR_VERSION 	8)
SET( MINOR_VERSION 	5)
SET( BUILD_VERSION 	0)
SET( REVISION_VERSION ${SystemAcceptance_WC_LAST_CHANGED_REV})

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set (CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/install" CACHE PATH "default install path" FORCE )
endif()


IF(CMAKE_CL_64)
  SET(targetPlatform "Build_Win64.bat")

  if(MSVC14)
  SET(targetPlatform "Build_Win64.bat") 
  MESSAGE(STATUS "Building NFEvalGui Win64")
  endif(MSVC14)
  
  
else(CMAKE_CL_64)
  SET(targetPlatform "Build_Win64.bat")
 
  if(MSVC14)
  SET(targetPlatform "Build_Win64.bat")
  MESSAGE(STATUS "Building NFEvalGui Win32")
  endif(MSVC14)
  
endif(CMAKE_CL_64)

set(msBuildCmd ${CMAKE_CURRENT_SOURCE_DIR}/${targetPlatform})



#include(ExternalProject)

#ExternalProject_Add(NFEvalGui
#URL http://192.168.1.171/index.tar.gz
#CONFIGURE_COMMAND ""
#BUILD_COMMAND ${msBuildCmd}
#INSTALL_DIR "${DEPENDENCY_INSTALL_DIR}"
#INSTALL_COMMAND ""
#)


add_custom_target(BuildNFEvaluationGUI ALL ${msBuildCmd})

install(FILES ${empty} DESTINATION bin)

add_test(TestInstall  ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR}/.  --target Install --config Release )

# CTest						   
ENABLE_TESTING()
SET(BUILDNAME "trunk-${THIRD_PARTY_DIR}" CACHE STRING "Name of build on the dashboard")
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/CTestCustom.cmake ${CMAKE_CURRENT_BINARY_DIR}/CTestCustom.cmake)
INCLUDE(CTest)

 