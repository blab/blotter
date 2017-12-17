<pre>
---
<div id="noisy spin demo"></div>

---

## Conclusions

- Equal `$\omega_i$`: singlet correlations persist
- Differing `$\omega_i$` leads to decay with rate `$\Delta_\omega^2/\text{noise}$`
- Dynamics:  integrable _Richardson--Gaudin model_

---

## Noisy Spins and the Richardson--Gaudin Model

arXiv:1711.00828

Austen Lamacraft and Daniel Rowlands

University of Cambridge

---

# The Model

----

![](assets/scgp_noisy_spins-df41782d.png)

----

## Atoms in a cavity

![](assets/scgp_noisy_spins-4b2c0b0e.png)

----

## Model Hamiltonian

-

$$
H = H\_\text{S} + H\_\text{B} + H\_\text{int}
$$

$$
H_\text{int} = \sum_j s_j B_j
$$

----

## Bloch--Redfeld equations

`
$$
\begin{aligned}
\dot \rho = i\left[\rho, H_\text{S}\right] + \sum_{j,k}\left[-s_j q_{jk}\rho + q_{jk} \rho s_j-\rho q_{jk} s_j + s_j\rho q_{jk}  \right]
\end{aligned}
$$
`

$$
q\_{jk} = \frac{1}{2}\langle n\rvert s\_l\lvert m\rangle g\_{jk}(\omega\_m-\omega\_n)
$$

$$
g_{jk}(\omega) = \int dt e^{i\omega t}\langle B_j(\tau)B_k(0) \rangle
$$

See e.g. Jeske & Cole, PRA 87, 052138 (2013)

----

- Applied to a system of spins with $H_\text{S}=\sum_j \left[\Omega+\omega_j\right]\sigma_j^z$

`$$
\begin{aligned}
  \dot\rho = -i[H_\text{S},\rho] &+ \sum_{j,k} g(2\Omega,\mathbf{r}_j,\mathbf{r}_k)\left[\sigma^-_k\rho\sigma^+_j-\frac{1}{2}\{\sigma^+_j\sigma^-_k,\rho\}\right]\\
  &+ \sum_{j,k} g(-2\Omega,\mathbf{r}_j,\mathbf{r}_k)\left[\sigma^+_k\rho\sigma^-_j-\frac{1}{2}\{\sigma^-_j\sigma^+_k,\rho\}\right]\\
  &+ \sum_{j,k} g(0,\mathbf{r}_j,\mathbf{r}_k)\left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right].
\end{aligned}
$$
`

----


- Infinite spatial correlation `$g(\pm 2\Omega,\mathbf{r}_j,\mathbf{r}_k)=g_\pm$`

`$$
\begin{aligned}
  \dot\rho = -i[H_\text{S},\rho] &+ \sum_{j,k} g_{+}\left[\sigma^-_k\rho\sigma^+_j-\frac{1}{2}\{\sigma^+_j\sigma^-_k,\rho\}\right]\\
  &+ \sum_{j,k} g_-\left[\sigma^+_k\rho\sigma^-_j-\frac{1}{2}\{\sigma^-_j\sigma^+_k,\rho\}\right]\\
  &+ \sum_{j,k} g_0\left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right].
\end{aligned}
$$`

----


`$$
\begin{aligned}
  \dot\rho = -i[H_\text{S},\rho] &+ \sum_{j,k} g_{+}\left[\sigma^-_k\rho\sigma^+_j-\frac{1}{2}\{\sigma^+_j\sigma^-_k,\rho\}\right]\\
  &+ \sum_{j,k} g_{-}\left[\sigma^+_k\rho\sigma^-_j-\frac{1}{2}\{\sigma^-_j\sigma^+_k,\rho\}\right]\\
  &+ \sum_{j,k} g_0\left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right].
\end{aligned}
$$
`
- Any $SU(2)$ _singlet_ states `$\lvert \varnothing_\alpha \rangle$` of total spin `$S_\text{tot}^a=\frac{1}{2}\sum_j \sigma^a_j$` forms a _decoherence free subspace_.

- `$$\rho = \sum_{\alpha,\beta} \varrho_{\alpha,\beta}\lvert \varnothing_\alpha \rangle \langle \varnothing_\beta \rvert
$$` is decoupled.

----

`$k_\text{B}T\gg \Omega$`: _symmetric_ noise `$g_+=g_-$`

`$$
\begin{aligned}
  \dot\rho = -i[H_\text{S},\rho] &+ g_{+}\sum_{j,k} \left[\sigma^-_k\rho\sigma^+_j+\sigma^+_k\rho\sigma^-_j-\frac{1}{2}\{\sigma^+_j\sigma^-_k+\sigma^-_j\sigma^+_k,\rho\}\right]\\
  &+ g_0\sum_{j,k} \left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right].
\end{aligned}
$$
`
or

`$$
\begin{aligned}
  \dot\rho = -i[H_\text{S},\rho] &+ g_{+}\sum_{j,k} \left[\sigma^x_k\rho\sigma^x_j+\sigma^y_k\rho\sigma^y_j-\frac{1}{2}\{\sigma^x_j\sigma^x_k+\sigma^y_j\sigma^y_k,\rho\}\right]\\
  &+ g_0\sum_{j,k} \left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right].
\end{aligned}
$$`

----

## Correlation functions

- 1 spin density matrix has form

`$$
\rho^{(1)} = \frac{1}{2}\left[\mathbb{1} + \mathbf{c}\cdot \sigma\right],\qquad |\mathbf{c}|<1.
$$
`
- $N$ spins
`$$
\rho^{(N)} = \sum_{\mu_i} c_{\mu_1\cdots \mu_N} \sigma^{\mu_1}_{1}\cdots \sigma^{\mu_N}_{N}\qquad \mu=0,x,y,z
$$`
`$$
c_{\mu_1\cdots \mu_N} = \frac{1}{2^N} \text{tr}\left[\rho\, \sigma^{\mu_1}_{1}\cdots \sigma^{\mu_N}_{N}\right]
$$`

- Note that $c_{0\ldots 0}=1$


----

## Evolution of Correlations


`$$
\begin{aligned}
    &\sum_{k,j}\text{tr}\left[\sigma_k^a\rho\sigma_j^a(\cdots)-\frac{1}{2}\{\sigma_k^a\sigma_j^a,\rho\}(\cdots)\right] \\&=\frac{1}{2} \sum_{k,j}\text{tr}\left[\rho\left(\sigma_j^a(\cdots)\sigma_k^a +\sigma_k^a(\cdots)\sigma_j^a- (\cdots)\sigma_j^a\sigma_k^a -\sigma_j^a\sigma_k^a (\cdots)\right)\right].
\end{aligned}
$$`

`$$
\begin{aligned}
\sigma_j^a\sigma_j^{a_j}\sigma_k^{a_k}\sigma_k^a +\sigma_k^a\sigma_j^{a_j}\sigma_k^{a_k}\sigma_j^a &- \sigma_j^{a_j}\sigma_k^{a_k}\sigma_j^a\sigma_k^a -\sigma_j^a\sigma_k^a \sigma_j^{a_j}\sigma_k^{a_k} \\&= -[\sigma_j^a,\sigma_j^{a_j}][\sigma_k^a,\sigma_k^{a_k}]\\
&=(\mathsf{L}^a \sigma_j)^{a_j}(\mathsf{L}^a \sigma_k)^{a_k},
\end{aligned}
$$`

where `$(\mathsf{L}^a)_{bc}=-\epsilon_{abc}$` are usual generators of $SO(3)$.

----

## Equation of motion

`$$
\begin{aligned}
\partial_t \mathsf{C} = i[H_\text{S},\mathsf{C}] + g_{+}\sum_{j,k} \left(\mathsf{L}^x_j \mathsf{L}^x_k+\mathsf{L}^y_j \mathsf{L}^y_k\right)\mathsf{C} + g_{0}\sum_{j,k} \mathsf{L}^z_j \mathsf{L}^z_k\mathsf{C}.
\end{aligned}
$$`

$\mathsf{C}$ is the tensor with components $c_{\mu_1\cdots \mu_N}$.

----

## Richardson--Gaudin model

- Noting that $[H_\text{S},\mathsf{C}]=-i\sum_j \left[\Omega+\omega_j\right]\mathsf{L}^z_j\mathsf{C}$

-
`$$
  \partial_t \mathsf{C} = \mathcal{L} \mathsf{C},
$$`
`$$
  \mathcal{L} = -\sum_j\left[\Omega+\omega_j\right]\mathsf{L}^z_j+ g_+\sum_{j,k} \left(\mathsf{L}^x_j \mathsf{L}^x_k+\mathsf{L}^y_j \mathsf{L}^y_k\right) + g_{0}\sum_{j,k} \mathsf{L}^z_j \mathsf{L}^z_k.
$$`

- `$\mathsf{S}^a_j = i \mathsf{L}^a_j$` gives (non-Hermitian) __Richardson--Gaudin__ model for __spin 1__.

`$$
  \mathcal{L} = i\sum_j\left[\Omega+\omega_j\right]\mathsf{S}^z_j- g_+\sum_{j,k} \left(\mathsf{S}^x_j \mathsf{S}^x_k+\mathsf{S}^y_j \mathsf{S}^y_k\right) - g_{0}\sum_{j,k} \mathsf{S}^z_j \mathsf{S}^z_k.
$$
`

----

## (Higher spin $s$)

- Density matrix is a convex combination of spherical tensors $T^{(k)}_q$, with $k=0,1,\ldots 2s$.

- Richardson--Gaudin with spins $k_j$.

----

## Integrable Quantum Master Equations?

- ![](assets/scgp_noisy_spins-2d611049.png)

- See also Banchi _et al._, arXiv:1704.03041, where Gaudin Hamiltonian appears.

----

## $k_\text{B}T\gg \Omega$ equivalent to stochastic evolution

- Spins evolve in presence of noise: `$H(t) = \sum_j h_j(t)$`
`$$
h_j(t) = \omega_j \sigma^z_j + \eta_-(t)\sigma^+ + \eta_+(t)\sigma^-+ \eta_z(t)\sigma^z
$$`

- Find equation of motion for
`$$
\rho(t)\equiv \mathbb{E}_\eta \left[\mathcal{T} e^{-i\int_0^t H(t') dt'}\rho(0)\mathcal{T}e^{i\int_0^t H(t') dt'}\right]
$$`


- `$$
\begin{aligned}
  \dot\rho = &i\sum_j\omega_j\left[\rho, \sigma^z_j\right] +g_0\sum_{j,k} \left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right] \\
  &+g_+\sum_{j,k} \left[\sigma^-_k\rho\sigma^+_j+\sigma^+_k\rho\sigma^-_j-\frac{1}{2}\{\sigma^+_j\sigma^-_k+\sigma^-_j\sigma^+_k,\rho\}\right].
\end{aligned}
$$`

----

## Moment precesses in fluctuating field

`$$
\rho_j = \frac{1}{2}\left[\mathbb{1} + \mathbf{c}_j\cdot \sigma_j\right],\qquad |\mathbf{c}|<1.
$$`
`$$
h_j = \omega_j \sigma^z_j + \eta_-\sigma^+ + \eta_+\sigma^-+ \eta_0\sigma^z
$$`
`$$
\dot{\mathbf{c}}_j = \mathbf{h}_j\times \mathbf{c}_j,\qquad \mathbf{h}_j=2(\text{Re}\, \eta_+,\text{Im}\, \eta_+,\eta_0+\omega_j)
$$`

----

## For $N$ spins

-
`$$
c_{\mu_1\cdots \mu_N} = \frac{1}{2^N} \text{tr}\left[\rho\, \sigma^{\mu_1}_{1}\cdots \sigma^{\mu_N}_{N}\right]
$$`
`$$
\dot c_{a_1\ldots a_N} = \sum_{j=1}^N\sum_{k,l=1}^3 \varepsilon_{a_j kl}h_{j,k} c_{a_1,\cdots, l,\cdots a_N}
$$`

-
`$$
\dot{\mathsf{C}} = i\sum_{j=1}^N \mathbf{h}_j\cdot \mathbf{S}_j\, \mathsf{C}
$$`

- `$\mathbb{E}_\eta[\mathsf{C}]$` evolves with

`$$
  \mathcal{L} = i\sum_j\omega_j\mathsf{S}^z_j- g_+\sum_{j,k} \left(\mathsf{S}^x_j \mathsf{S}^x_k+\mathsf{S}^y_j \mathsf{S}^y_k\right) - g_{0}\sum_{j,k} \mathsf{S}^z_j \mathsf{S}^z_k.
$$`

---

# Spectrum

----

## Simple cases: $\omega_j=0$

`$$
\mathcal{L} = i\Omega\mathsf{S}^z_\text{tot}- g \left(\mathsf{S}^x_\text{tot} \mathsf{S}^x_\text{tot}+\mathsf{S}^y_\text{tot} \mathsf{S}^y_\text{tot}\right).
$$`
![](assets/scgp_noisy_spins-a60768a3.png)

## $S_\text{tot}=0$ for N=2

`$$
  \rho^{(2)}_c = \frac{1}{4} + \lambda\,\mathbf{s}_1\cdot \mathbf{s}_2,\qquad -1\leq \lambda\leq 1/3,
$$`

- $c_{00}=1$, and $c_{a_1a_2} = 4\lambda\delta_{a_1,a_2}$ for $a_{1,2}=x,y,z$.

 - $\lambda=-1$ corresponds to a pure singlet state.

## $S_\text{tot}=0$ multiplets, general $N$

![](assets/scgp_noisy_spins-d89cdb50.png)

- Motzkin sums: $1, 0, 1, 1, 3, 6, 15, 36, 91, 232, 603, 1585, 4213, 11298,\ldots$ (OEIS A005043)

----

## $\omega_j\neq 0$

![](assets/scgp_noisy_spins-bf8f7ba0.png)

----

## Splitting of $S_\text{tot}=0$ states

![](assets/scgp_noisy_spins-7be25f36.png)

Splitting $\propto \Delta_\omega^2/g$ but perturbation theory not so easy!

---

# Exact Solution

----

## Bethe Ansatz (e.g. Dukelsky _et al._ RMP 2004)

-
`$$
  \mathcal{L} = i\sum_j\omega_j\mathsf{S}^z_j- g\sum_{j,k} \left(\mathsf{S}^x_j \mathsf{S}^x_k+\mathsf{S}^y_j \mathsf{S}^y_k + \mathsf{S}^z_j \mathsf{S}^z_k\right).
$$`

- `$S^\text{z}_\text{tot}=M-N$` eigenstates have form
`$$
\lvert \mu\rangle = \prod_{a=1}^M\sum_{j=1}^N \frac{\mathsf{S}^+_j}{\mu_a-i\omega_j}\lvert -1,-1\ldots -1\rangle, \qquad
$$`

- Bethe roots `$\{\mu_a\}$` satisfy
`$$
  \frac{1}{g} + \sum_{k=1}^N \frac{1}{\mu_j-i(\omega_k/2)} - \sum_{k\neq j}^M\frac{1}{\mu_j-\mu_k} = 0.
$$`

----

![](assets/scgp_noisy_spins-84399bc6.png)

----


## RG model in superconductivity

- Pairing interaction
`$$
H_\text{pair} \propto \sum_{\mathbf{k},\mathbf{k'}} a^\dagger_{\uparrow,\mathbf{k}}a^\dagger_{\downarrow,-\mathbf{k}}a_{\downarrow,-\mathbf{k'}}a_{\uparrow,\mathbf{k'}} = \sum_{\mathbf{k},\mathbf{k'}} s_{\mathbf{k}}^+ s_{\mathbf{k'}}^-
$$`

- __Anderson spins__ are spin-1/2
`$$
\begin{aligned}
s_{\mathbf{k}}^+ = a^\dagger_{\uparrow,\mathbf{k}}a^\dagger_{\downarrow,-\mathbf{k}},\qquad s_{\mathbf{k}}^- = a_{\downarrow,-\mathbf{k}}a_{\uparrow,\mathbf{k}}\\
s_{\mathbf{k}}^z = \frac{1}{2}\left[a^\dagger_{\uparrow,\mathbf{k}}a_{\uparrow,\mathbf{k}}-a^\dagger_{\downarrow,-\mathbf{k}}a_{\downarrow,-\mathbf{k}} \right]
\end{aligned}
$$`

- Bethe equations are
`$$
  \frac{1}{g} + \color{red}{\frac{1}{2}}\sum_{k=1}^N \frac{1}{\mu_j-(\omega_k/2)} - \sum_{k\neq j}^M\frac{1}{\mu_j-\mu_k} = 0.
$$`

----

## How to construct states from $S_\text{tot}=0$?

- Even for
`$$
  \mathcal{L} = - g\sum_{j,k} \left(\mathsf{S}^x_j \mathsf{S}^x_k+\mathsf{S}^y_j \mathsf{S}^y_k + \mathsf{S}^z_j \mathsf{S}^z_k\right)
$$`
need to solve
`$$
  \sum_{k=1}^N \frac{1}{\mu_j-i(\omega_k/2)} - \sum_{k\neq j}^M\frac{1}{\mu_j-\mu_k} = 0.
$$`

- Bethe states diagonlize the __Gaudin Hamiltonians__
`$$
H_j = \sum_{k\neq j}\frac{\mathsf{S}_j\cdot \mathsf{S}_k}{\omega_j-\omega_k}
$$`

- Bethe states fix the basis for degenerate multiplets of $\mathcal{L}\propto \sum_j H_j$ that evolves smoothly for $\omega_i\neq 0$.

----

![](assets/scgp_noisy_spins-cf484a00.png)

String solution ($g\to\infty$)

----

![](assets/scgp_noisy_spins-21502a9e.png)

String solution (finite $g$)

----

## $N\to\infty$ limit

Assuming infinite strings with `$\mu_k = \Delta_\pm + i\left(k+\frac{1}{2}\right)\Delta_\omega$`

`$$
\begin{aligned}  
\frac{2\pi}{\Delta_\omega}\tanh\left(\frac{2\pi \Delta_+}{\Delta_\omega}\right) = \frac{\pi}{\Delta_\omega}\coth\left(\frac{\pi (\Delta_++\Delta_-)}{\Delta_\omega}\right)-\frac{1}{g},\\
  \frac{2\pi}{\Delta_\omega}\tanh\left(\frac{2\pi \Delta_-}{\Delta_\omega}\right) = \frac{\pi}{\Delta_\omega}\coth\left(\frac{\pi (\Delta_++\Delta_-)}{\Delta_\omega}\right)+\frac{1}{g}.
\end{aligned}
$$`

----

![](assets/Energy-comparison-large-N.png)

Gap `$\propto\Delta_\omega^2/g$` at small $g^{-1}$


# Outlook

## Allowing for decay

`$$
\begin{aligned}
  \dot\rho = -i[H_\text{S},\rho] &+ \sum_{j,k} g_+\left[\sigma^-_k\rho\sigma^+_j-\frac{1}{2}\{\sigma^+_j\sigma^-_k,\rho\}\right]\\
  &+ \sum_{j,k} g_{-2\Omega}\left[\sigma^+_k\rho\sigma^-_j-\frac{1}{2}\{\sigma^-_j\sigma^+_k,\rho\}\right]\\
  &+ \sum_{j,k} g_0\left[\sigma^z_k\rho\sigma^z_j-\frac{1}{2}\{\sigma^z_j\sigma^z_k,\rho\}\right].
\end{aligned}
$$`

Any prospect for `$g_+\neq g_{-}$`?

----

- `$g_+\neq g_{-}$` gives rise to term in `$\frac{d}{dt}c_{a_1\cdots a_j\cdots a_k \cdots a_N}$`

-
`$$
  \sum_{j,k}\text{tr}\left[\rho\left([\sigma_k^{a_k},\sigma_k^-]\{\sigma_j^{a_j},\sigma_j^+\}-[\sigma_j^{a_j},\sigma_j^+]\{\sigma_k^{a_k},\sigma_k^-\}\right)\right].
$$`

- $\{\sigma_k^+,\sigma_k^-\}=\mathbb{1}$: coupling between $a=0$ and $a=x,y$.

- __Anisotropic__ Gaudin acting on four component "spin".  

</pre>
