#!/bin/bash

trap 'kill $(jobs -p)' SIGINT
python3 generate_qmc_combinations_and_mpmath.py 0 200 &
python3 generate_qmc_combinations_and_mpmath.py 200 400 &
python3 generate_qmc_combinations_and_mpmath.py 400 600 &
python3 generate_qmc_combinations_and_mpmath.py 600 800 &
python3 generate_qmc_combinations_and_mpmath.py 800 1000 &
python3 generate_qmc_combinations_and_mpmath.py 1000 1200 &
python3 generate_qmc_combinations_and_mpmath.py 1200 1400 &
python3 generate_qmc_combinations_and_mpmath.py 1400 1600 &
python3 generate_qmc_combinations_and_mpmath.py 1600 1800 &
python3 generate_qmc_combinations_and_mpmath.py 1800 2000 &
python3 generate_qmc_combinations_and_mpmath.py 2000 2200 &
python3 generate_qmc_combinations_and_mpmath.py 2200 2400 &
python3 generate_qmc_combinations_and_mpmath.py 2400 2600 &
python3 generate_qmc_combinations_and_mpmath.py 2600 2800 &
python3 generate_qmc_combinations_and_mpmath.py 2800 3000 &
python3 generate_qmc_combinations_and_mpmath.py 3000 3200 &
python3 generate_qmc_combinations_and_mpmath.py 3200 3400 &
python3 generate_qmc_combinations_and_mpmath.py 3400 3600 &
python3 generate_qmc_combinations_and_mpmath.py 3600 3800 &
python3 generate_qmc_combinations_and_mpmath.py 3800 4000 &
python3 generate_qmc_combinations_and_mpmath.py 4000 4200 &
python3 generate_qmc_combinations_and_mpmath.py 4200 4400 &
python3 generate_qmc_combinations_and_mpmath.py 4400 4600 &
python3 generate_qmc_combinations_and_mpmath.py 4600 4800 &
python3 generate_qmc_combinations_and_mpmath.py 4800 5000 &
python3 generate_qmc_combinations_and_mpmath.py 5000 5200 &
python3 generate_qmc_combinations_and_mpmath.py 5200 5400 &
python3 generate_qmc_combinations_and_mpmath.py 5400 5600 &
python3 generate_qmc_combinations_and_mpmath.py 5600 5800 &
python3 generate_qmc_combinations_and_mpmath.py 5800 6000 &
python3 generate_qmc_combinations_and_mpmath.py 6000 6200 &
python3 generate_qmc_combinations_and_mpmath.py 6200 6400 &
python3 generate_qmc_combinations_and_mpmath.py 6400 6600 &
python3 generate_qmc_combinations_and_mpmath.py 6600 6800 &
python3 generate_qmc_combinations_and_mpmath.py 6800 7000 &
python3 generate_qmc_combinations_and_mpmath.py 7000 7200 &
python3 generate_qmc_combinations_and_mpmath.py 7200 7400 &
python3 generate_qmc_combinations_and_mpmath.py 7400 7600 &
python3 generate_qmc_combinations_and_mpmath.py 7600 7800 &
python3 generate_qmc_combinations_and_mpmath.py 7800 8000 &
python3 generate_qmc_combinations_and_mpmath.py 8000 8200 &
python3 generate_qmc_combinations_and_mpmath.py 8200 8400 &
python3 generate_qmc_combinations_and_mpmath.py 8400 8600 &
python3 generate_qmc_combinations_and_mpmath.py 8600 8800 &
python3 generate_qmc_combinations_and_mpmath.py 8800 9000 &
python3 generate_qmc_combinations_and_mpmath.py 9000 9200 &
python3 generate_qmc_combinations_and_mpmath.py 9200 9400 &
python3 generate_qmc_combinations_and_mpmath.py 9400 9600 &
python3 generate_qmc_combinations_and_mpmath.py 9600 9800 &
python3 generate_qmc_combinations_and_mpmath.py 9800 10000 &

wait

