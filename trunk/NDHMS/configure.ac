#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

AC_INIT([WRF-Hydro], [5.0.1],
	[https://github.com/NCAR/wrf_hydro_nwm_public/issues])

AC_CONFIG_SRCDIR([Land_models/Noah/HRLDAS_COLLECT_DATA/lib/cio.c])

# Checks for programs.
AC_PROG_CC
AC_PROG_FC([gfortran], [Fortran 90])
AC_LANG_PUSH([Fortran])
AX_MPI
AC_LANG_POP([Fortran])
AC_PROG_LN_S
AC_PROG_MAKE_SET

AC_DEFINE([MPP_LAND], [1], [Use parallel land model.])

m4_define(
  [DESCRIPTION],
  [A WRF environment variable. Always enabled for compiling WRF-Hydro.]
)
AC_ARG_ENABLE(
  [wrf-hydro],
  AS_HELP_STRING([--disable-wrf-hydro], [DESCRIPTION])
)
AS_IF([test "x$enable_wrf_hydro" != "xno"],
        [AC_DEFINE([WRF_HYDRO], [1], [DESCRIPTION])])

m4_define(
  [DESCRIPTION],
  [Disable enhanced diagnostic output for debugging.]
)
AC_ARG_ENABLE(
  [hydro-d],
  AS_HELP_STRING([--disable-hydro-d], [DESCRIPTION])
)
AS_IF([test "x$enable_hydro_d" != "xno"],
        [AC_DEFINE([HYDRO_D], [1], [DESCRIPTION])])

m4_define(
  [DESCRIPTION],
  [Enable spatially distributed parameters for NoahMP. This allows
  NoahMP to use spatially distributed parameters for the land surface
  model rather than parameter based on soil class and land use
  category look up tables.]
)
AC_ARG_ENABLE(
  [spatial-soil],
  AS_HELP_STRING([--enable-spatial-soil], [DESCRIPTION])
)
AS_IF([test "x$enable_spatial_soil" = "xyes"],
        [AC_DEFINE([SPATIAL_SOIL], [1], [DESCRIPTION])])

m4_define(
  [DESCRIPTION],
  [Disable large NetCDF file support. Do not allow NetCDF I/O of files
  larger than 2GiB.])
AC_ARG_ENABLE(
  [wrfio-ncd-large-file-support],
  AS_HELP_STRING(
    [--disable-wrfio-ncd-large-file-support], [DESCRIPTION])
)
AS_IF([test "x$enable_wrfio_ncd_large_file_support" != "xno"],
        [AC_DEFINE([WRFIO_NCD_LARGE_FILE_SUPPORT], [1], [DESCRIPTION])])

m4_define(
  [DESCRIPTION],
  [Enable WCOSS file units. Do not use unless working on the WCOSS
  machines.])
AC_ARG_ENABLE(
  [ncep-wcoss],
  AS_HELP_STRING([--enable-ncep-wcoss], [DESCRIPTION])
)
AS_IF([test "x$enable_ncep_wcoss" = "xyes"],
        [AC_DEFINE([NCEP_WCOSS], [1], [DESCRIPTION])])

m4_define(
  [DESCRIPTION],
  [Enable the streamflow nudging routines for Muskingum-Cunge
  Routing.]
)
AC_ARG_ENABLE(
  [wrf-hydro-nudging],
  AS_HELP_STRING([--enable-wrf-hydro-nudging], [DESCRIPTION])
)
AS_IF([test "x$enable_wrf_hydro_nudging" = "xyes"],
        [AC_DEFINE([WRF_HYDRO_NUDGING], [1], [DESCRIPTION])])

m4_define([DESCRIPTION], [Enable output channel connectivity.])
AC_ARG_ENABLE(
  [output-chan-conn],
  AS_HELP_STRING([--enable-output-chan-conn], [DESCRIPTION])
)
AS_IF([test "x$enable_output_chan_conn" = "xyes"],
        [AC_DEFINE([OUTPUT_CHAN_CONN], [1], [DESCRIPTION])])

m4_define([DESCRIPTION], [Double precipitation.])
AC_ARG_ENABLE(
  [precip-double],
  AS_HELP_STRING([--enable-precip-double], [DESCRIPTION])
)
AS_IF([test "x$enable_precip_double" = "xyes"],
        [AC_DEFINE([PRECIP_DOUBLE], [1], [DESCRIPTION])])

# Checks for libraries.

# TODO: libXext?
AC_CHECK_LIB([bz2], [BZ2_bzopen])
# TODO: libg2c?
AC_CHECK_LIB([hdf5], [H5Fopen])
AC_CHECK_LIB([hdf5_hl], [H5DOwrite_chunk])
AC_CHECK_LIB([m], [abs])
# TODO: libncarg?
# TODO: libncarg_c?
# TODO: libncarg_gks?
AX_LIB_NETCDF4
# TODO: replace with Fortran function vs. Fortran library
AC_CHECK_LIB([netcdf], [nc_inq_libvers])
# TODO: libpgc?
# TODO: libpgftnrtl?
# TODO: librapid?
# TODO: libsmda?
# TODO: libt?
AC_CHECK_LIB([z], [uncompress])

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h stdlib.h string.h sys/ioctl.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_INT64_T
AC_TYPE_OFF_T

# Checks for library functions.
AC_CHECK_FUNCS([pow strchr strstr])

# File prerequisites.
AC_MSG_CHECKING([for X11 color database])
AS_IF(
  [test -f "/usr/lib/X11/rgb.txt" -o -f "/usr/share/X11/rgb.txt"],
    [AC_MSG_RESULT([yes])],
    [AC_MSG_WARN(
      [X color database not found; modules under Land_models/Noah
       might not work properly]
     )]
)

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
                 Routing/Makefile
                 Routing/Overland/Makefile
                 nudging/Makefile])
AS_IF([test "x$enable_wrf_hydro_rapid" = "xyes"],
        [AC_CONFIG_FILES([Rapid_routing/Makefile])])
AC_OUTPUT
