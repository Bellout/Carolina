set( CTEST_BUILD_NAME "dakota_pgin" )
set( DAKOTA_CTEST_PROJECT_TAG "Continuous" )
set( CTEST_BUILD_CONFIGURATION RelWithDebInfo )

set( DAKOTA_CTEST_REGEXP "dakota_*" )
set( DAKOTA_DEBUG OFF CACHE BOOL "debug OFF" FORCE)

# turn python on!
set (DAKOTA_PYTHON ON CACHE BOOL "python interface on" FORCE)

# Stop being in debug mode please - does nothing
set (MPI_DEBUG OFF CACHE BOOL "mpi debug off" FORCE)

### yes mpi
set( CMAKE_C_COMPILER "mpicc"
     CACHE FILEPATH "Use MPI compiler wrapper" FORCE)
set( DAKOTA_HAVE_MPI ON
     CACHE BOOL "Always build with MPI enabled" FORCE)
set( CMAKE_CXX_COMPILER "mpic++"
     CACHE FILEPATH "Use MPI compiler wrapper" FORCE)

set( CMAKE_Fortran_COMPILER "mpif90" 
     CACHE FILEPATH "MPI Fortran compiler wrapper" FORCE)


# Disable optional X graphics
set(HAVE_X_GRAPHICS OFF CACHE BOOL "Disable dependency on X libraries" FORCE)

##############################################################################
SET ( CMAKE_CXX_FLAGS "-D MPI_DEBUG=0" CACHE STRING "compile flags" FORCE)
set(LIBCXX -stdlib=libc++)
set (LIBSTDCXX -stdlib=libstdc++)
set ( Boost_COMPILER "mpic++" )

##########################################################################
# Set up Internal CMake paths first. Then call automated build file.
# DO NOT CHANGE!!
##########################################################################
#include( ${CTEST_SCRIPT_DIRECTORY}/utilities/DakotaSetupBuildEnv.cmake )
#include( common_build )
##########################################################################
