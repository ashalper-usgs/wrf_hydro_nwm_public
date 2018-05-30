#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

AC_INIT([WRF-Hydro], [0.1],
	[https://github.com/NCAR/wrf_hydro_nwm_public/issues])

AC_CONFIG_SRCDIR([Land_models/Noah/HRLDAS_COLLECT_DATA/lib/cio.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC
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
