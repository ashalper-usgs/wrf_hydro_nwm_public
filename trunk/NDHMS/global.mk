# make some Makefile conditional syntax easier to read
ifeq ($(findstring -DWRF_HYDRO_RAPID=1,$(DEFS)),"-DWRF_HYDRO_RAPID=1")
  WRF_HYDRO_RAPID = 1
else
  WRF_HYDRO_RAPID = 0
endif

ifeq ($(findstring -DWRF_HYDRO_NUDGING=1,$(DEFS)),"-DWRF_HYDRO_NUDGING=1")
  WRF_HYDRO_NUDGING = 1
else
  WRF_HYDRO_NUDGING = 0
endif
