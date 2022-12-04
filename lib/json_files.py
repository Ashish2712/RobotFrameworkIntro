"""
This module contains code to over come the robot framework short commings
"""
import time
import json


def read_a_json_file(fileName):
    with open(fileName) as f:
        data = json.load(f)
    return data


def adding_n_numbers(*agrs):
    total = 0
    for i in agrs:
        total += int(i)
    return total