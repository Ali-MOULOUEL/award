#!/usr/bin/env python
"""
Collect and save data coming from a bag into a .npz file
"""
import os
import numpy as np
from rosbag import Bag
import matplotlib.pyplot as plt
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("bag", type=str, help="Input bag")
    parser.add_argument("output_file_name", type=str, help="Output file name")
    return parser.parse_args()

def write_to_npz_file(file_name, data):
    """ Save points list in a compressed, binary .npz file. """
    np.savez_compressed(file_name, data=data)


if __name__ == "__main__":
    args = parse_args()
    BAG_FILE = args.bag
    OUTPUT_FILE = args.output_file_name
    TIME_ARRAY = []
    FORESIGHT_OBST_CENTER = [] # In 2D (top view)
    CONTI_OBST_CENTER = [] # In 2D (top view)
    TOPICS = ["/foresight_obstacles", "/conti_radar_objects_deserialized"]
    # Extract bag name : basename() give the file name from a full path
	#                    filename[:-4] remove the last 4 character ('.bag') 
    bag_name = os.path.basename(args.bag)[:-4]
    print("Selected bag: ", bag_name)
    bag_data = Bag(BAG_FILE)

    for topic, msg, t in bag_data.read_messages(topics=TOPICS[0]):
        TIME_ARRAY.append(t)
        if len(msg.obstacles_array):
            obstacles_array = np.array(list(vis_object for vis_object in msg.obstacles_array if msg.Sensor == "Vis"))
            """
            #Work on single obstacle detection later by looking for a target ID within the foresight object list

            target_dynamic_car = np.array(list(car for index, car in enumerate(obstacles_array) if ((obstacles_array[index].RelativeSpeed <= -0.8 or obstacles_array[index].RelativeSpeed >= 0.8) and obstacles_array[index].Class == "Car")))
            print(len(target_dynamic_car))
            if len(target_dynamic_car):
                print(target_dynamic_car[0])
            print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
            """
            for obstacle in obstacles_array: 
                x = obstacle.PositionZ
                y = -obstacle.PositionX
                id = obstacle.ID
                FORESIGHT_OBST_CENTER.append((x, y, id))
                print(obstacle.ID)
    for topic, msg, t in bag_data.read_messages(topics=TOPICS[1]):
        conti_obj_array = np.array(list(msg.RadarObjectArray))
        conti_non_zero_obj_array = np.array(list(conti_obj for conti_obj_counter, conti_obj in enumerate(conti_obj_array) if conti_obj_counter < msg.NofUsedObjects))
        # print(len(conti_non_zero_obj_array))
        for obstacle in conti_non_zero_obj_array:
            P_x = obstacle.DistX
            P_y = obstacle.DistY
            PL_x = obstacle.LDeltaX_left
            PL_y = obstacle.LDeltaY_left
            PM_x = obstacle.LDeltaX_mid
            PM_y = obstacle.LDeltaY_mid
            PR_x = obstacle.LDeltaX_right
            PR_y = obstacle.LDeltaY_right
            L_x = P_x + PL_x
            L_y = P_y + PL_y
            # print("L coords = (", L_x, ", ", L_y, ")")
            M_x = P_x + PM_x
            M_y = P_y + PM_y
            # print("M coords = (", M_x, ", ", M_y, ")")
            R_x = P_x + PR_x
            R_y = P_y + PR_y
            # print("R coords = (", R_x, ", ", R_y, ")")
            T_x = L_x + (R_x - M_x)
            T_y = L_y + (R_y - M_y)
            # print("T coords = (", T_x, ", ", T_y, ")")
            x = (L_x + R_x )/2
            y = (L_y + R_y)/2
            id = obstacle.InternalId
            CONTI_OBST_CENTER.append((x, y, id))    

    f_c = np.array(FORESIGHT_OBST_CENTER)  
    C_c = np.array(CONTI_OBST_CENTER) 
    np.savez_compressed(OUTPUT_FILE, foresight_obstacle_center=f_c, conti_obstacle_center=C_c)       
            
            
            


