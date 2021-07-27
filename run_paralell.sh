#!/bin/bash

trap 'kill $(jobs -p)' SIGINT

python3 generate_qmc_combinations_and_mpmath.py 0 5 &
python3 generate_qmc_combinations_and_mpmath.py 5 10 &
python3 generate_qmc_combinations_and_mpmath.py 10 15 &
python3 generate_qmc_combinations_and_mpmath.py 15 20 &
python3 generate_qmc_combinations_and_mpmath.py 20 25 &
python3 generate_qmc_combinations_and_mpmath.py 25 30 &
python3 generate_qmc_combinations_and_mpmath.py 30 35 &
python3 generate_qmc_combinations_and_mpmath.py 35 40 &
python3 generate_qmc_combinations_and_mpmath.py 40 45 &
python3 generate_qmc_combinations_and_mpmath.py 45 50 &
python3 generate_qmc_combinations_and_mpmath.py 50 55 &
python3 generate_qmc_combinations_and_mpmath.py 55 60 &
python3 generate_qmc_combinations_and_mpmath.py 60 65 &
python3 generate_qmc_combinations_and_mpmath.py 65 70 &
python3 generate_qmc_combinations_and_mpmath.py 70 75 &
python3 generate_qmc_combinations_and_mpmath.py 75 80 &
python3 generate_qmc_combinations_and_mpmath.py 80 85 &
python3 generate_qmc_combinations_and_mpmath.py 85 90 &
python3 generate_qmc_combinations_and_mpmath.py 90 95 &
python3 generate_qmc_combinations_and_mpmath.py 95 100 &

wait

