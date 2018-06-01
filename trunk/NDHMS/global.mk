MPP_objects = $(addsuffix .o,\
   mpp_land CPL_WRF module_mpp_ReachLS module_mpp_GWBUCKET\
)

Data_Rec_objects = $(addsuffix .o,\
   module_namelist module_RT_data module_gw_gw2d_data\
)

Routing_objects = $(addsuffix .o,\
   Noah_distr_routing \
   module_GW_baseflow \
   module_HYDRO_io \
   module_HYDRO_utils \
   module_NWM_io \
   module_NWM_io_dict \
   module_RT \
   module_UDMAP \
   module_channel_routing \
   module_date_utilities_rt \
   module_gw_gw2d \
   module_lsm_forcing \
   module_noah_chan_param_init_rt \
)
