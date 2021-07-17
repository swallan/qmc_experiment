# Quasi Monte Carlo Experiment

This package generates two things:
1. Random `q`, `k`, and `\nu` values (using `qmc.Halton`)
2. The corresponding p-value from `mpmath` at a `mp.dps` of at least 20. The `mpmath` p-value will be recalculated until an integration at a `dps` is equal, within 16 digits, to the same integration at `dps + 1`.

To run:

1. Run `python generate_qmc_combinations_and_mpmath.py` with command line args for `upper` and `lower` bounds for which combinations you want to evaluate. It will run until you interrupt it. Do not interrupt when it prints that it is saving.

Ex:



`❯ python generate_qmc_combinations_and_mpmath.py 10 12`



generates: 

```np.load("combinations_q_10_12.npy", allow_pickle=True)
Out[39]: 
array([['p-value', 'k', 'v', 'q', 'n_dps',
        'count.. range 10 to 12 inclusive'],
       [2.0, 47.0, 8.0, 2.7747612200302862, 20.0, 10.0],
       [2.0, 87.0, 77.0, 4.955222201076998, 20.0, 11.0],
       [2.0, 21.0, 97.0, 3.3196438068957, 20.0, 12.0]], dtype=object)
```

