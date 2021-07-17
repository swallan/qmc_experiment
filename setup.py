#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 16 21:36:40 2021

@author: swallan

This file sets up the .npy save file with header. 
"""
import numpy as np

header = np.asarray([["p-value", 'k', 'v', 'q', 'n_dps', 'count']], dtype=object)
np.save("combinations_q.npy", header)
