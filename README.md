# Oabp - Optimization Algorithm Benchmark Problems (OABP)

## Simple problems

Supported Dimensions: any.

| name       | Definition                                                                                                                                           | Solution         | Optima           |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ---------------- |
| sphere     | $f(x) = \sum_{i=1}^n x_i^2$                                                                                                                          | $x_i = 0$        | 0                |
| sphere64   | $f(x) = \sum_{i=1}^n (x_i - 64)^2$                                                                                                                   | $x_i = 64$       | 0                |
| rosenbrok  | $f(x) = \sum_{i=1}^{n-1} \left( 100(x_{i+1} - x_i^2)^2 + (x_i - 1)^2 \right)$                                                                        | $x_i = 1$        | 0                |
| ackley     | $f(x) = -20 \exp \left( -0.2 \sqrt{\frac{1}{n} \sum_{i=1}^n x_i^2} \right) - \exp \left( \frac{1}{n} \sum_{i=1}^n \cos(2\pi x_i) \right) + 20 + e$   | $x_i = 0$        | 0                |
| rastrigin  | $f(x) = 10n + \sum_{i=1}^n \left( x_i^2 - 10 \cos(2\pi x_i) \right)$                                                                                 | $x_i = 0$        | 0                |
| griewank   | $f(x) = \frac{1}{4000} \sum_{i=1}^n x_i^2 - \prod_{i=1}^n \cos \left( \frac{x_i}{\sqrt{i}} \right) + 1$                                              | $x_i = 0$        | 0                |
| schwefel   | $f(x) = 418.9829n - \sum_{i=1}^n x_i \sin \left( \sqrt{\vert x_i \vert} \right)$                                                                     | $x_i = 0$        | 0                |
| zakharov   | $f(x) = \sum_{i=1}^n x_i^2 + \left( \sum_{i=1}^n 0.5ix_i \right)^2 + \left( \sum_{i=1}^n 0.5ix_i \right)^4$                                          | $x_i = 0$        | 0                |
| levy*      | $f(x) = \sin^2(\pi w_1) + \sum_{i=1}^{n-1} (w_i - 1)^2 \left( 1 + 10 \sin^2(\pi w_i + 1) \right) + (w_n - 1)^2 \left( 1 + \sin^2(2 \pi w_n) \right)$ | $x_i = 1$        | 0                |
| stybtang** | $f(x) = \sum_{i=1}^n \left( x_i^4 - 16x_i^2 + 5x_i \right)$                                                                                          | $x_i = 2.903534$ | -39.16599n       |
| trid***    | $f(x) = \sum_{i=1}^{d} [ (x_i - 1)^2 - \sum_{j=1}^{i-1} x_j x_{j+1} ]$                                                                               | $x_i = i(n+1-i)$ | $-n(n+4)(n-1)/6$ |

\* $w_i = 1 + \frac{x_i - 1}{4}$

\*\*, \*\*\* optima modified to 0


## CEC2020 Benchmark Problems from [HardTestProblems.jl](https://github.com/jmejia8/HardTestProblems.jl)

Supported Dimensions: 10, 30, and 50.

| name        | Name                                       | Optima |
| ----------- | ------------------------------------------ | ------ |
| cec2020_f1  | Shifted and Rotated Bent Cigar             | 100    |
| cec2020_f2  | Shifted and Rotated Schwefel               | 1100   |
| cec2020_f3  | Shifted and Rotated Lunacek bi-Rastrigin   | 700    |
| cec2020_f4  | Expanded Extended Griewank plus Rosenbrock | 1900   |
| cec2020_f5  | Hybrid Function 1 (N=3)                    | 1700   |
| cec2020_f6  | Hybrid Function 2 (N=4)                    | 1600   |
| cec2020_f7  | Hybrid Function 7 (N=5)                    | 2100   |
| cec2020_f8  | Composition Function 1 (N=3)               | 2200   |
| cec2020_f9  | Composition Function 2 (N=4)               | 2400   |
| cec2020_f10 | Composition Function 3 (N=5)               | 2500   |
