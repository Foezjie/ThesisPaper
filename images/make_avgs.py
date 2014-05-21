#!/usr/bin/env python3
import sys

#Get average of a list of numbers
def avg(numbers):
    return float((sum(numbers)/len(numbers)))

#get the average list length
def depl_l(deployments):
    return int(round(avg([len(list) for list in deployments])))

def avg_lists(deployments):
    avg_length = depl_l(deployments)
    avg_deployments = [depl for depl in deployments if len(depl) == avg_length]
    return avg_deployments

def avg_deployment(deployments):
    avg_deployments = avg_lists(deployments)
    avg_list = []
    for index in range(0,len(avg_deployments[0])):
        avg_list.append(avg([depl[index] for depl in avg_deployments]))
    return avg_list

t = [[446, 61]]

print("%s %s" % (' '.join(map(str,avg_deployment(t))), len(avg_deployment(t))))
