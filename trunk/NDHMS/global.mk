# make some conditional syntax easier to read
ifeq ($(findstring -DWRF_HYDRO_RAPID=1,$(DEFS)),"-DWRF_HYDRO_RAPID=1")
  WRF_HYDRO_RAPID = 1
else
  WRF_HYDRO_RAPID = 0
endif
