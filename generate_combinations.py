#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jul 17 14:11:37 2021

@author: swallan
"""
import numpy as np
from scipy.stats.qmc import Halton
from scipy.stats.qmc import scale
seed = 3858595610

halton_qmc = Halton(3, seed=seed)

p_min, p_max = 0, 1
k_min, k_max = 2, 101
v_min, v_max = 1, 121


pkv_raw = halton_qmc.random(10000)
pvc_scaled = scale(pkv_raw, [p_min, k_min, v_min],[p_max, k_max, v_max])

np.save("all_combinations", pvc_scaled)