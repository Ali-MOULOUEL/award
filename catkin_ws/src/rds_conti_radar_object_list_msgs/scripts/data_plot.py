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
    parser.add_argument("input_file_name", type=str, help="Input npz file name")
    return parser.parse_args()

def write_to_npz_file(file_name, data):
    """ Save points list in a compressed, binary .npz file. """
    np.savez_compressed(file_name, data=data)


if __name__ == "__main__":
    args = parse_args()
    INPUT_FILE = args.input_file_name
    HEADER=['foresight_obstacle_center', 'conti_obstacle_center']
    raw_data = np.load(INPUT_FILE, allow_pickle=True)
    foresight_IDs = np.unique(raw_data[HEADER[0]][:,2])
    conti_IDs = np.unique(raw_data[HEADER[1]][:,2])

    fig, ax_foresight = plt.subplots()
    fig, ax_conti = plt.subplots()
    
    for id in foresight_IDs:
        if id > 0:
            target_foresight = np.array(raw_data[HEADER[0]][raw_data[HEADER[0]][:,2]==id]) #take objects of unique ID 
            ax_foresight.scatter(target_foresight[:,0],target_foresight[:,1], s = 5, label=id) 
    
    for id in conti_IDs:
        target_conti = np.array(raw_data[HEADER[1]][raw_data[HEADER[1]][:,2]==id])
        ax_conti.scatter(target_conti[:,0],target_conti[:,1], s = 5, label=id)   

    ax_foresight.set_title('Top view of all foresight detected obstacles')
    ax_conti.set_title('Top view of all continental detected obstacles')
    ax_foresight.set_xlabel('X_position')
    ax_foresight.set_ylabel('Y_position')
    # ax_foresight.legend()
    ax_conti.set_xlabel('X_position')
    ax_conti.set_ylabel('Y_position')
    # ax_conti.legend()
    plt.show()
    exit()
   


