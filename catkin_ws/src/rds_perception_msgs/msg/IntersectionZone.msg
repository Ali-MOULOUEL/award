uint8 PROVIDER_PERCEPTION = 1
uint8 PROVIDER_ADS_B = 2
uint8 provider

#geometry_msgs/Polygon area

# Filled only when provider is perception based
rds_perception_msgs/label[] ignored_blind_obstacles
