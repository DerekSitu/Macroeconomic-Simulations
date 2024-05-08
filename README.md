# Ramsey growth model
The social planner maximizes households' present discounted lifetime utility, solving

$$
\max_{C_{t}, K_{t+1}} \sum_{t=0}^{\infty} \beta^t u(c_t)
$$

subject to the resource constraint of the economy

$$
c_t + k_{t+1} - (1- \delta) k_t = f(A_t, k_t), \ \forall t
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

Plugging this into (2) yields the consumption evolution equation:

$$
\begin{align}
\beta^t u'(c_t) &= \beta^{t+1} u'(c_{t+1}) (f'(A_t, k_{t+1}) + (1- \delta)) \\
u'(c_t) &= \beta u'(c_{t+1}) (f'(A_t, k_{t+1}) + (1- \delta)) \\
c_t^{- \sigma} &= \beta c_{t+1}^{- \sigma} [(1+A_t) \alpha k_{t+1}^{\alpha - 1} + 1 - \delta ] \\
\left( \frac{c_{t+1}}{c_t} \right) ^{\sigma} &= \beta [(1+A_t) \alpha k_{t+1}^{\alpha - 1} + 1 - \delta ]
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

# Real business cycle model

The household maximizes their utility by choosing consumption $c_t$, labour to supply $n_t$, capital $k_{t+1}$, and bonds $b_{t+1}$, solving

$$
\max_\{c_t, n_t, k_{t+1}, b_{t+1}\} u_t = E_t \sum_{t=0}^{\infty} \beta^t \[(1- \sigma) \ln c_t + \sigma \ln (1- n_t) \]
$$

subject to a budget constraint

$$
w_t n_t + r_t k_t + (1 - \delta) k_t + R_t b_t = c_t + b_{t+1} + k_{t+1}, \ k_t \geq 0, \ \forall t
$$

where $w_t$ is wage at time $t$, $r_t$ is the rental rate of capital, $\delta$ is the depreciation rate of capital, and $R_t$ is the interest rate on bonds.

The Lagrangian is

$$
\mathcal{L} = E_t \sum_{t=0}^{\infty} \beta^t [(1- \sigma) \ln c_t + \sigma \ln (1-n_t)] + \sum_{t=0}^{\infty} \lambda_t [ w_t n_t + r_t k_t + (1- \delta) k_t + R_t b_t - c_t - b_{t+1} - k_{t+1} ]
$$

and the first order conditions are

$$
\begin{align}
\frac{\partial \mathcal{L}}{\partial c_t} &= \beta^t (1- \sigma) \frac{1}{c_t} - \lambda_t = 0 \tag{1} \\
\frac{\partial \mathcal{L}}{\partial n_t} &= - \beta^t \sigma \frac{1}{1-n_t} + w_t \lambda_t = 0 \tag{2} \\
\frac{\partial \mathcal{L}}{\partial k_{t+1}} &= - \lambda_t + E_t \lambda_{t+1} (r_{t+1} + 1 - \delta) = 0 \tag{3} \\
\frac{\partial \mathcal{L}}{\partial b_{t+1}} &= - \lambda_t + E_t \lambda_{t+1} R_{t+1} = 0. \tag{4}
\end{align}
$$

From (1) and (2),

$$
\lambda_t = \beta^t (1- \sigma) \frac{1}{c_t} = \beta^t \frac{\sigma}{1-n_t} \frac{1}{w_t},
$$

thus

$$
w_t = \frac{\sigma}{1- \sigma} \frac{c_t}{1-n_t} \hspace{2em} \text{or} \hspace{2em} 1-n_t = \frac{\sigma}{1- \sigma} \frac{c_t}{w_t},
$$

giving the intra-temporal tradeoff condition.

From (1) and (3) we get the Euler equation:

$$
\begin{align}
\lambda_t &= E_t \lambda_{t+1} (r_{t+1} + 1 - \delta) \\
\beta^t (1- \sigma) \frac{1}{c_t} &= E_t \beta^{t+1} (1- \sigma) \frac{1}{c_{t+1}} (r_{t+1} + 1 - \delta) \\
\frac{c_{t+1}}{c_t} &= E_t \beta (r_{t+1} + 1 - \delta).
\end{align}
$$

Also from (3) and (4) it is clear that

$$
R_{t+1} = r_{t+1} + 1 - \delta.
$$

In addition, the household cannot hold negative bond holdings at the end of life (No Ponzi condition):

$$
\lim_{t \to \infty} \prod_{t=0}^{\infty} \frac{1}{1+ r_{t+1}} b_{t+1} \geq 0.
$$

The firm has the production function

$$
Y_t = e^{Z_t} K_t^{\alpha} N_t^{1- \alpha}
$$

where $Z_t$ is production technology at time $t$. The firm maximizes profit, solving

$$
\max_{K_t, N_t} \pi_t = e^{Z_t} K_t^{\alpha} N_t^{1- \alpha} - W_t N_t - r_t K_t
$$

with first order conditions

$$
\begin{align}
\frac{\partial \pi_t}{\partial K_t} &= \alpha e^{Z_t} K_t^{\alpha - 1} N_t^{1- \alpha} - r_t = 0 \tag{1} \\
\frac{\partial \pi_t}{\partial N_t} &= (1- \alpha) e^{Z_t} K_t^{\alpha} N_t^{- \alpha} - W_t = 0. \tag{2} \\
\end{align}
$$

From (1),

$$
r_t = \alpha e^{Z_t} \left( \frac{K_t}{N_t} \right)^{\alpha - 1} = \alpha \frac{Y_t}{K_t}, \hspace{2em} \text{and}
$$

$$
\begin{align}
r_t N_t^{\alpha-1} &= \alpha e^{Z_t} K_t^{\alpha - 1} \\
\left( \frac{r_t N_t^{\alpha - 1}}{\alpha e^{Z_t}} \right) ^{\frac{1}{\alpha - 1}} &= K_t.
\end{align}
$$

And from (2),

$$
W_t = (1- \alpha) e^{Z_t} \left( \frac{K_t}{N_t} \right)^{\alpha} = (1- \alpha) \frac{Y_t}{N_t}, \hspace{2em} \text{and}
$$

$$
\begin{align}
N_t^{\alpha} &= \frac{1- \alpha}{W_t} e^{Z_t} K_t^{\alpha} \\
N_t &= \left( \frac{1- \alpha}{W_t} e^{Z_t} \right) ^{\frac{1}{\alpha}} K_t.
\end{align}
$$