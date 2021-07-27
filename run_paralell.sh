#!/bin/bash

trap 'kill $(jobs -p)' SIGINT

cd qmc_experiment &
conda activate scipydev &
python3 generate_qmc_combinations_and_mpmath.py 0 625 &
python3 generate_qmc_combinations_and_mpmath.py 625 1250 &
python3 generate_qmc_combinations_and_mpmath.py 1250 1875 &
python3 generate_qmc_combinations_and_mpmath.py 1875 2500 &
python3 generate_qmc_combinations_and_mpmath.py 2500 3125 &
python3 generate_qmc_combinations_and_mpmath.py 3125 3750 &
python3 generate_qmc_combinations_and_mpmath.py 3750 4375 &
python3 generate_qmc_combinations_and_mpmath.py 4375 5000 &
python3 generate_qmc_combinations_and_mpmath.py 5000 5625 &
python3 generate_qmc_combinations_and_mpmath.py 5625 6250 &
python3 generate_qmc_combinations_and_mpmath.py 6250 6875 &
python3 generate_qmc_combinations_and_mpmath.py 6875 7500 &
python3 generate_qmc_combinations_and_mpmath.py 7500 8125 &
python3 generate_qmc_combinations_and_mpmath.py 8125 8750 &
python3 generate_qmc_combinations_and_mpmath.py 8750 9375 &
python3 generate_qmc_combinations_and_mpmath.py 9375 10000 &

wait

