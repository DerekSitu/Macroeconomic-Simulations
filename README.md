# Ramsey growth model
The social planner maximizes households' present discounted lifetime utility, solving

$$
\max_{C_{t}, K_{t+1}} \sum_{t=0}^{\infty} \beta^t u(c_t)
$$

subject to the resource constraint of the economy

$$
c_t + k_{t+1} - (1- \delta) k_t = f(A_t, k_t)
$$

where $\beta \in (0,1)$ is the discount factor, $u(c_t) = \frac{c_t^{1- \sigma}}{1- \sigma}$ is the household's utility from consuming $c_t$ at time $t$, $k_t$ is capital at time $t$, $\delta$ is the depreciation rate of capital, and $f(A_t, k_t) = (1 + A_t) k_t^{\alpha}$ is the production function. 

The Lagrangian is then 

$$
\mathcal{L} = \sum_{t=0}^{\infty} \beta^t u(c_t) + \sum_{t=0}^{\infty} \lambda_t [f(A_t,k_t) - c_t - k_{t+1} + (1- \delta) k_t]
$$

with first order conditions

$$
\begin{align}
\frac{\partial \mathcal{L}}{\partial c_t} &= \beta ^t u'(c_t) - \lambda_t = 0 \tag{1} \\
\frac{\partial \mathcal{L}}{\partial k_{t+1}} &= - \lambda_t + \lambda_{t+1} (f'(A_t, k_{t+1}) + (1- \delta)) = 0 \tag{2}
\end{align}
$$

From (1) we see

$$
\lambda_t = \beta^t u'(c_t).
$$

Plugging this into (2) yields

$$
\begin{align}
\beta^t u'(c_t) &= \beta^{t+1} u'(c_{t+1}) (f'(A_t, k_{t+1}) + (1- \delta)) \\
u'(c_t) &= \beta u'(c_{t+1}) (f'(A_t, k_{t+1}) + (1- \delta)) \\
c_t^{- \sigma} &= \beta c_{t+1}^{- \sigma} [(1+A_t) \alpha k_{t+1}^{\alpha - 1} + 1 - \delta ]
\end{align}
$$

In steady state, $c_t = c_{t+1} = c^{\*}$, and $k_t = k_{t+1} = k^{\*}$, so that the Euler equation is

$$
\frac{1}{\beta} = (1+A_t) \alpha (k^{\*})^{\alpha - 1} + 1 - \delta .
$$

From the Euler equation we see

$$
\left[ \frac{1}{\alpha (1+A_t)} \left( \frac{1}{\beta} - 1 + \delta \right) \right] ^{\frac{1}{\alpha - 1}} = k^{\*}.
$$

To get steady state consumption we can use the resource constraint:

$$
\begin{align}
f(A_t, k^{\*}) &= c^{\*} + k^{\*} - (1- \delta) k^{\*} \\
f(A_t, k^{\*}) - k^{\*} + (1 - \delta) k^{\*} &= c^{\*} \\
(1+A_t) (k^{\*})^{\alpha} - k^{\*} + (1- \delta) k^{\*} &= c^{\*} \\
(1+A_t) (k^{\*})^{\alpha} - \delta k^{\*} &= c^{\*}.
\end{align}
$$

Plugging in $k^{\*}$ gives

$$
(1+A_t) \left[ \frac{1}{\alpha (1+A_t)} \left( \frac{1}{\beta} - 1 + \delta \right) \right] ^{\frac{\alpha}{\alpha - 1}} - \delta \left[ \frac{1}{\alpha (1+A_t)} \left( \frac{1}{\beta} - 1 + \delta \right) \right] ^{\frac{1}{\alpha - 1}} = c^{\*}.
$$

The transversality condition is

$$
\lim_{t \to \infty} \beta ^t u'(c_t) k_{t+1} = \beta ^t c_t^{- \sigma} k_{t+1} = 0.
$$