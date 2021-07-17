#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 16 19:15:26 2021

@author: swallan
"""

import sys



# usual imports
import numpy as np
import scipy.stats as stats


# mpmath imports
from mpmath import gamma, pi, sqrt, quad, inf, mpf, mp, almosteq
from mpmath import npdf as phi
from mpmath import ncdf as Phi

import time

c_lower, c_upper = int(sys.argv[1]), int(sys.argv[2]) + 1
all_combinations = np.load("all_combinations.npy")



header = np.asarray([["p-value", 'k', 'v', 'q', 'n_dps', f'count.. range {c_lower} to {c_upper-1} inclusive']], dtype=object)
np.save(f"combinations_q_{c_lower}_{c_upper-1}.npy", header)    

def cdf_mp(q, k, nu, dps):
    print(f"cdf_mp(q={q}, k={k}, nu={nu}, dps={dps})")
    # return temp_arr.pop(0)
    
    """Straightforward implementation of studentized range CDF"""
    mp.dps = dps
    q, k, nu = mpf(q), mpf(k), mpf(nu)

    def inner(s, z):
        return phi(z) * (Phi(z + q * s) - Phi(z)) ** (k - 1)

    def outer(s, z):
        return s ** (nu - 1) * phi(sqrt(nu) * s) * inner(s, z)

    def whole(s, z):
        return (sqrt(2 * pi) * k * nu ** (nu / 2)
                / (gamma(nu / 2) * 2 ** (nu / 2 - 1)) * outer(s, z))

    res = quad(whole, [0, inf], [-inf, inf],
               method="gauss-legendre", maxdegree=10)
    return res



t0 = time.time()

count = c_lower
# qmc + generation will run indefinitely.
while(True):

    p, k, v = all_combinations[count]
    k, v = int(k), int(v)
    q = stats.studentized_range.ppf(p, k, v)
    print(f"\niteration: {count}")

    
    n_dps = 20
    p_dps_n = cdf_mp(q, k, v, dps=n_dps)
    p_dps_n1 = cdf_mp(q, k, v, dps=(n_dps+1))
    
    # 10e-n: n-1 is the number of matching digits.
    abs_eps = 1e-4
    while(not almosteq(p_dps_n, p_dps_n1, abs_eps=1e-17)):
        print(f"n_dps: {n_dps}, n_dps+1:{n_dps+1}")
        print(p_dps_n, p_dps_n1)
        print(f"not match: {p_dps_n- p_dps_n1}")
        # iterate dps up one
        n_dps = n_dps + 1
        # p_dps_n1 becomes p_dps_n
        p_dps_n = p_dps_n1
        # generate new p_dps_n1
        p_dps_n1 = cdf_mp(q, k, v, dps=n_dps+1)
    print(f"n_dps: {n_dps}, n_dps+1:{n_dps+1}")
    
    print(p_dps_n, p_dps_n1)
    print("match.")
    print("Saving! Do not interrupt.")
    all_previous = np.load(f"combinations_q_{c_lower}_{c_upper-1}.npy", allow_pickle=True)
    all_previous_concat = np.concatenate((all_previous, [[p_dps_n1, k, v, q, n_dps, count]]))
    np.save(f"combinations_q_{c_lower}_{c_upper-1}.npy", all_previous_concat, allow_pickle=True)
    print("Done saving.")
    
    print(f"time elapsed: {time.time() - t0}")
    count=count+1   
    if count == c_upper:
        break

    
    
    
    
    
    
    