# File - configure.ac
#
# Purpose - GNU Autoconf
#           (https://www.gnu.org/software/autoconf/autoconf.html)
#           input to produce "configure" script for WRF-Hydro. Process
#           this file with "autoconf" to produce the configure script.
#
# Author - Output from "autoscan" modified by Andy Halper
#          <ashalper@usgs.gov>
#

AC_PREREQ([2.63])
AC_INIT([WRF-Hydro], [0.1], [https://ral.ucar.edu/projects/wrf_hydro/contact])
AC_CONFIG_SRCDIR([Land_models/Noah/HRLDAS_COLLECT_DATA/lib/cio.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.

# C compiler
AC_PROG_CC

# Fortran compiler
AC_PROG_FC([mpif90 gfortran], [Fortran 90])
# MPI (Message Passing Interface). See acinclude.m4 and
# https://github.com/stevengj/mpb/blob/master/m4/ax_mpi.m4
AX_MPI
# TODO: these might not apply on all platforms
FCFLAGS="$FCFLAGS -w -c -ffree-form -ffree-line-length-none -fconvert=big-endian -frecord-marker=4"

AC_PROG_LN_S
AC_PROG_MAKE_SET

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lHYDRO':
AC_CHECK_LIB([HYDRO], [main])
# FIXME: Replace `main' with a function in `-lX11':
AC_CHECK_LIB([X11], [main])
# FIXME: Replace `main' with a function in `-lXext':
AC_CHECK_LIB([Xext], [main])
# FIXME: Replace `main' with a function in `-lbz2':
AC_CHECK_LIB([bz2], [BZ2_bzReadOpen])
# FIXME: Replace `main' with a function in `-lg2c':
AC_CHECK_LIB([g2c], [main])
# FIXME: Replace `main' with a function in `-lhdf5':
AC_CHECK_LIB([hdf5], [main])
# FIXME: Replace `main' with a function in `-lhdf5_hl':
AC_CHECK_LIB([hdf5_hl], [main])
# FIXME: Replace `main' with a function in `-lm':
AC_CHECK_LIB([m], [main])
# FIXME: Replace `main' with a function in `-lncarg':
AC_CHECK_LIB([ncarg], [main])
# FIXME: Replace `main' with a function in `-lncarg_c':
AC_CHECK_LIB([ncarg_c], [main])
# FIXME: Replace `main' with a function in `-lncarg_gks':
AC_CHECK_LIB([ncarg_gks], [main])
# https://www.gnu.org/software/autoconf-archive/ax_lib_netcdf4.html
AX_LIB_NETCDF4()
# FIXME: Replace `main' with a function in `-lnetcdf':
AC_CHECK_LIB([netcdf], [main])
# FIXME: Replace `main' with a function in `-lpgc':
AC_CHECK_LIB([pgc], [main])
# FIXME: Replace `main' with a function in `-lpgftnrtl':
AC_CHECK_LIB([pgftnrtl], [main])
# FIXME: Replace `main' with a function in `-lrapid':
AC_CHECK_LIB([rapid], [main])
# FIXME: Replace `main' with a function in `-lsmda':
AC_CHECK_LIB([smda], [main])
# FIXME: Replace `main' with a function in `-lt':
AC_CHECK_LIB([t], [main])
# FIXME: Replace `main' with a function in `-lz':
AC_CHECK_LIB([z], [main])

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h stdlib.h string.h sys/ioctl.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_INT64_T
AC_TYPE_OFF_T

# Checks for library functions.
AC_CHECK_FUNCS([pow strchr strstr])

# Compile options.

# This was hard-coded in the previous Make system, and "gcc -E"
# appears to be incompatible with $CPPFLAGS (see below) at the
# moment. Try to fix, if possible.
CPP=cpp

AC_ARG_ENABLE(
  [wrf-hydro],
  AS_HELP_STRING(
    [--disable-wrf-hydro],
    [set WRF_HYDRO environment variable to 0; always enable for
     compiling]
  )
)
AS_IF(
  [test "x$enable_wrf-hydro" != "xno"], [
    export WRF_HYDRO=0
  ], [
    export WRF_HYDRO=1
    # TODO: need to figure out where HYDRO_REALTIME gets set in the
    # legacy system
    CPPFLAGS="$CPPFLAGS -DWRF_HYDRO $HYDRO_REALTIME"
  ]
)

AC_ARG_ENABLE(
  [diagnostic],
  AS_HELP_STRING(
    [--disable-diagnostic],
    [disable enhanced diagnostic output]
  )
)
AS_IF(
  [test "x$enable_diagnostic" != "xno"], [
    export HYDRO_D=1
    CPPFLAGS="$CPPFLAGS -DHYDRO_D"
  ], [
    export HYDRO_D=0
  ]
)

AC_ARG_ENABLE(
  [spatial-soil],
  AS_HELP_STRING(
    [--enable-spatial-soil],
    [enable spatially distributed parameters for NoahMP]
  )
)
AS_IF(
  [test "x$enable_spatial-soil" = "xyes"], [
    export SPATIAL_SOIL=1
    CPPFLAGS="$CPPFLAGS -DSPATIAL_SOIL"
  ], [
    export SPATIAL_SOIL=0
  ]
)

AC_ARG_ENABLE(
  [wrf-hydro-rapid],
  AS_HELP_STRING(
    [--enable-wrf-hydro-rapid],
    [enable RAPID model]
  )
)
AS_IF(
  [test "x$enable_wrf-hydro-rapid" = "xyes"], [
    export WRF_HYDRO_RAPID=1
    WRF_HYDRO="-DWRF_HYDRO -DWRF_HYDRO_RAPID $HYDRO_REALTIME"
  ], [
    export WRF_HYDRO_RAPID=0
  ]
)

AC_ARG_ENABLE(
  [wrfio-ncd-large-file-support],
  AS_HELP_STRING(
    [--disable-wrfio-ncd-large-file-support],
    [disable large NetCDF file support]
  )
)
AS_IF(
  [test "x$enable_wrfio-ncd-large-file-support" != "xno"], [
    export WRFIO_NCD_LARGE_FILE_SUPPORT=1
    CPPFLAGS="$CPPFLAGS -DWRFIO_NCD_LARGE_FILE_SUPPORT"
  ], [
    export WRFIO_NCD_LARGE_FILE_SUPPORT=0
  ]
)

AC_ARG_ENABLE(
  [ncep-wcoss],
  AS_HELP_STRING(
    [--enable-ncep-wcoss], [enable WCOSS file units]
  )
)
AS_IF(
  [test "x$enable_ncep-wcoss" = "xyes"], [
    export NCEP_WCOSS=1
  ], [
    export NCEP_WCOSS=0
  ]
)

AC_ARG_ENABLE(
  [wrf-hydro-nudging],
  AS_HELP_STRING(
    [--enable-wrf-hydro-nudging], [enable streamflow nudging]
  )
)
AS_IF(
  [test "x$enable_wrf-hydro-nudging" = "xyes"], [
    export WRF_HYDRO_NUDGING=1
    CPPFLAGS="$CPPFLAGS -DWRF_HYDRO_NUDGING"
  ], [
    export WRF_HYDRO_NUDGING=0
  ]
)

# This has to be here for now, because if set on the command line at
# the time the configure script is run (preferable), the default C
# preprocessor (cpp) can't cope with running the configure tests
# associated with the code above, and the configure script will
# die. Try to remove eventually.
CPPFLAGS=\
"-P -xassembler-with-cpp -traditional -DMPP_LAND -I../Data_Rec $CPPFLAGS"

# Produce Makefiles.

AC_CONFIG_FILES([CPL/CLM_cpl/Makefile
                 CPL/LIS_cpl/Makefile
                 CPL/NUOPC_cpl/Makefile
                 CPL/NoahMP_cpl/Makefile
                 CPL/Noah_cpl/Makefile
                 CPL/WRF_cpl/Makefile
                 Data_Rec/Makefile
                 HYDRO_drv/Makefile
                 Land_models/Noah/GRAPHICS/HORIZ/Makefile
                 Land_models/Noah/GRAPHICS/TIME_SERIES/Makefile
                 Land_models/Noah/HRLDAS_COLLECT_DATA/Makefile
                 Land_models/Noah/HRLDAS_COLLECT_DATA/lib/Makefile
                 Land_models/Noah/HRLDAS_COLLECT_DATA/run/Makefile
                 Land_models/Noah/IO_code/Makefile
                 Land_models/Noah/Makefile
                 Land_models/Noah/Noah/Makefile
                 Land_models/Noah/Run/Makefile
                 Land_models/Noah/Utility_programs/Makefile
                 Land_models/Noah/Utility_programs/gcip_sw_to_grib/Makefile
                 Land_models/Noah/Utility_routines/Makefile
                 Land_models/Noah/VERIFICATION/Fluxes_statistics/Makefile
                 Land_models/Noah/VERIFICATION/OKMeso_statistics/Makefile
                 Land_models/NoahMP/HRLDAS_forcing/Makefile
                 Land_models/NoahMP/HRLDAS_forcing/lib/Makefile
                 Land_models/NoahMP/HRLDAS_forcing/run/Makefile
                 Land_models/NoahMP/IO_code/Makefile
                 Land_models/NoahMP/Makefile
                 Land_models/NoahMP/Utility_routines/Makefile
                 Land_models/NoahMP/phys/Makefile
                 Land_models/NoahMP/run/Makefile
                 MPP/Makefile
                 Makefile
                 Rapid_routing/Makefile
                 Routing/Makefile
                 nudging/Makefile])
AC_OUTPUT
