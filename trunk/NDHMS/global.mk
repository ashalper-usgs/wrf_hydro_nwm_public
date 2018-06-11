# make some Makefile conditional syntax easier to read

# TODO: all of this could be shorter as a Make function with
# (CPP_FLAGS,WRF_HYDRO) parameters.

ifeq ($(findstring -DWRF_HYDRO,$(DEFS)),-DWRF_HYDRO)
  WRF_HYDRO = 1
else
  WRF_HYDRO = 0
endif

ifeq ($(findstring -DHYDRO_D,$(DEFS)),-DHYDRO_D)
  HYDRO_D = 1
else
  HYDRO_D = 0
endif

ifeq ($(findstring -DSPATIAL_SOIL,$(DEFS)),-DSPATIAL_SOIL)
  SPATIAL_SOIL = 1
else
  SPATIAL_SOIL = 0
endif

ifeq ($(findstring -DWRF_HYDRO_RAPID,$(DEFS)),-DWRF_HYDRO_RAPID)
  WRF_HYDRO_RAPID = 1
else
  WRF_HYDRO_RAPID = 0
endif

ifeq ($(findstring \
        -DWRFIO_NCD_LARGE_FILE_SUPPORT,$(DEFS)),-DWRFIO_NCD_LARGE_FILE_SUPPORT)
  WRFIO_NCD_LARGE_FILE_SUPPORT = 1
else
  WRFIO_NCD_LARGE_FILE_SUPPORT = 0
endif

ifeq ($(findstring -DNCEP_WCOSS,$(DEFS)),-DNCEP_WCOSS)
  NCEP_WCOSS = 1
else
  NCEP_WCOSS = 0
endif

ifeq ($(findstring -DWRF_HYDRO_NUDGING,$(DEFS)),-DWRF_HYDRO_NUDGING)
  WRF_HYDRO_NUDGING = 1
else
  WRF_HYDRO_NUDGING = 0
endif
