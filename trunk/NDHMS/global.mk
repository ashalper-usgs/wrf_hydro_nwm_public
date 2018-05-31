MPP_objects = $(addsuffix .o,\
   mpp_land CPL_WRF module_mpp_ReachLS module_mpp_GWBUCKET\
)

Data_Rec_objects = $(addsuffix .o,\
   module_namelist module_RT_data module_gw_gw2d_data\
)

Routing_objects = $(addsuffix .o,\
   module_date_utilities_rt \
   module_UDMAP \
   module_HYDRO_utils \
   module_noah_chan_param_init_rt \
   module_GW_baseflow \
   module_gw_gw2d \
   module_HYDRO_io \
   module_RT \
   Noah_distr_routing \
   module_channel_routing \
   module_lsm_forcing \
   module_date_utilities_rt \
   module_NWM_io_dict \
   module_NWM_io \
)

HYDRO_drv_objects = $(addsuffix .o,module_HYDRO_drv)
