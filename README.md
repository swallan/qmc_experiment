# Quasi Monte Carlo Experiment

This package generates two things:
1. Random `q`, `k`, and `\nu` values (using `qmc.Halton`)
2. The corresponding p-value from `mpmath` at a `mp.dps` of at least 20. The `mpmath` p-value will be recalculated until an integration at a `dps` is equal, within 16 digits, to the same integration at `dps + 1`.

To run:

1. Run `python generate_qmc_combinations_and_mpmath.py`. It will run until you interrupt it. Do not interrupt when it prints that it is saving.

