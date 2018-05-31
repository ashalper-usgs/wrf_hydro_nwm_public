#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

AC_INIT([WRF-Hydro], [0.1],
	[https://github.com/NCAR/wrf_hydro_nwm_public/issues])

AC_CONFIG_SRCDIR([Land_models/Noah/HRLDAS_COLLECT_DATA/lib/cio.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC
CPP=cpp				# gcc -E doesn't work right now
AC_PROG_FC([gfortran], [Fortran 90])
AC_LANG_PUSH([Fortran])
AX_MPI				# MPI (Message Passing Interface) compiler
AC_LANG_POP([Fortran])
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
AC_CHECK_LIB([bz2], [main])
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
AX_LIB_NETCDF4
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

AC_ARG_ENABLE(
  [wrf-hydro],
  AS_HELP_STRING(
    [--disable-wrf-hydro],
    [A WRF environment variable. Always enabled for compiling WRF-Hydro.])
)
AS_IF([test "x$enable_wrf-hydro" != "xno"], [WRF_HYDRO=1], [WRF_HYDRO=0])
AC_SUBST([WRF_HYDRO])

AC_ARG_ENABLE(
  [hydro-d],
  AS_HELP_STRING(
    [--disable-hydro-d],
    [Disable enhanced diagnostic output for debugging.])
)
AS_IF([test "x$enable_hydro-d" != "xno"], [HYDRO_D=1], [HYDRO_D=0])
AC_SUBST([HYDRO_D])

AC_ARG_ENABLE(
  [spatial-soil],
  AS_HELP_STRING(
    [--enable-spatial-soil],
    [Enable spatially distributed parameters for NoahMP.]))
AS_IF([test "x$enable_spatial-soil" = "xyes"],
      [SPATIAL_SOIL=1],
      [SPATIAL_SOIL=0])
AC_SUBST([SPATIAL_SOIL])

AC_ARG_ENABLE(
  [wrf-hydro-rapid],
  AS_HELP_STRING(
    [--enable-wrf-hydro-rapid],
    [Enable RAPID model.]))
AS_IF([test "x$enable_wrf-hydro-rapid" = "xyes"],
      [WRF_HYDRO_RAPID=1],
      [WRF_HYDRO_RAPID=0])
AC_SUBST([WRF_HYDRO_RAPID])

AC_ARG_ENABLE(
  [wrfio-ncd-large-file-support],
  AS_HELP_STRING(
    [--disable-wrfio-ncd-large-file-support],
    [Disable large NetCDF file support.])
)
AS_IF([test "x$enable_wrfio-ncd-large-file-support" != "xno"],
      [WRFIO_NCD_LARGE_FILE_SUPPORT=1], [WRFIO_NCD_LARGE_FILE_SUPPORT=0])
AC_SUBST([WRFIO_NCD_LARGE_FILE_SUPPORT])

AC_ARG_ENABLE(
  [ncep-wcoss],
  AS_HELP_STRING([--enable-ncep-wcoss], [Enable WCOSS file units.])
)
AS_IF([test "x$enable_ncep-wcoss" = "xyes"], [NCEP_WCOSS=1], [NCEP_WCOSS=0])
AC_SUBST([NCEP_WCOSS])

AC_ARG_ENABLE(
  [wrf-hydro-nudging],
  AS_HELP_STRING([--enable-wrf-hydro-nudging], [Enable streamflow nudging.])
)
AS_IF([test "x$enable_wrf-hydro-nudging" = "xyes"],
      [WRF_HYDRO_NUDGING=1],
      [WRF_HYDRO_NUDGING=0])
AC_SUBST([WRF_HYDRO_NUDGING])

# TODO: un-hard-code these
CPPFLAGS="-P -xassembler-with-cpp -traditional -DMPP_LAND -DHYDRO_D -DWRFIO_NCD_LARGE_FILE_SUPPORT"

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
