# make some Makefile conditional syntax easier to read

# TODO: all of this could be shorter as a Make function with
# (CPP_FLAGS,WRF_HYDRO) parameters.

ifeq ($(findstring -DWRF_HYDRO=1,$(DEFS)),"-DWRF_HYDRO=1")
  WRF_HYDRO = 1
else
  WRF_HYDRO = 0
endif

ifeq ($(findstring -DHYDRO_D=1,$(DEFS)),"-DHYDRO_D=1")
  HYDRO_D = 1
else
  HYDRO_D = 0
endif

ifeq ($(findstring -DSPATIAL_SOIL=1,$(DEFS)),"-DSPATIAL_SOIL=1")
  SPATIAL_SOIL = 1
else
  SPATIAL_SOIL = 0
endif

ifeq ($(findstring -DWRF_HYDRO_RAPID=1,$(DEFS)),"-DWRF_HYDRO_RAPID=1")
  WRF_HYDRO_RAPID = 1
else
  WRF_HYDRO_RAPID = 0
endif

ifeq ($(findstring \
        -DWRFIO_NCD_LARGE_FILE_SUPPORT=1,$(DEFS)),"-DWRFIO_NCD_LARGE_FILE_SUPPORT=1")
  WRFIO_NCD_LARGE_FILE_SUPPORT = 1
else
  WRFIO_NCD_LARGE_FILE_SUPPORT = 0
endif

ifeq ($(findstring -DNCEP_WCOSS=1,$(DEFS)),"-DNCEP_WCOSS=1")
  NCEP_WCOSS = 1
else
  NCEP_WCOSS = 0
endif

ifeq ($(findstring -DWRF_HYDRO_NUDGING=1,$(DEFS)),"-DWRF_HYDRO_NUDGING=1")
  WRF_HYDRO_NUDGING = 1
else
  WRF_HYDRO_NUDGING = 0
endif
