#!/bin/bash

# WRF-Hydro compile time options

# This is a WRF environment variable. Always set to 1=On for compiling WRF-Hydro.
export WRF_HYDRO=1

# Enhanced diagnostic output for debugging: 0=Off, 1=On.
export HYDRO_D=1

# Spatially distributed parameters for NoahMP: 0=Off, 1=On.
export SPATIAL_SOIL=0  

# RAPID model: 0=Off, 1=On.
export WRF_HYDRO_RAPID=0

# Large netcdf file support: 0=Off, 1=On.
export WRFIO_NCD_LARGE_FILE_SUPPORT=1

# WCOSS file units: 0=Off, 1=On. 
export NCEP_WCOSS=0

# Streamflow nudging: 0=Off, 1=On.
export WRF_HYDRO_NUDGING=0

# if on Yeti cluster
if [ `hostname | grep '\.cr\.usgs\.gov'` ]; then
    # Instructions from Joseph Hughes from Jeff Falgout (see
    # https://usgs.slack.com/archives/GAHHHLN0L/p1526651785000069) for
    # compiling on Yeti.

    module load netcdf-parallel/4.4.1-intel intel/psxe-2018u1

    export NETCDF_INC=$NETCDF_F_INC
    export NETCDF_LIB=$NETCDF_F_LIB

    ./configure 3	    # 3 => ifort, Intel parallel (incl. Theia)
fi
