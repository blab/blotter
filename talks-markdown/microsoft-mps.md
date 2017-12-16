<pre>
---
## Quantum Inspired Tensor Networks as Probabilistic Models

Austen Lamacraft

Taketomo Isazawa and Irene Li

----

![](assets/2017-12-14-microsoft-mps-88cfdb96.png)

----

## Curse of Dimensionality in Quantum Physics

(how it is resolved, and possible applications in ML)

---

## Outline

- Matrix Product States (MPS) in Quantum Mechanics
- MPS as a classifier
  * Simple experiments
- MPS as a probabilistic model
  * "Language": MPS for infinite sequences
  * Sampling


---

## Matrix Product States (MPS) in Quantum Mechanics

----

## Quantum Physics Crash Course

Simplest quantum system: spin-1/2 (e.g. electron)

![](assets/2017-12-14-microsoft-mps-883b13ab.png)
__Stern--Gerlach experiment__

- Measuring $z$-component of magnetic moment gives just two outcomes (spin-1/2 = __qubit__)

- State is represented by a two component complex vector $\in\mathbb C^2$
$$
\lvert\psi\rangle = \begin{bmatrix}
\psi\_\uparrow \\\
\psi\_\downarrow
\end{bmatrix}
$$

- Probability of measuring $\uparrow$ / $\downarrow$ given by the __Born rule__

$$
P\_{\uparrow, \downarrow} = |\psi\_{\uparrow,\downarrow}|^2
$$


Note: Speaker note goes here

----

## Two spins

- The state of two spins is a vector in $\mathbb C^2 \otimes \mathbb C^2$ (4 dimensions)

- Represent as second rank tensor $\Psi\_{s\_1s\_2}$ where $s\_{1,2}=\uparrow,\downarrow$

- Example: __singlet__ state
$$
\lvert\Psi^{\text{s}}\rangle = \frac{1}{\sqrt{2}}\left[\lvert \uparrow\rangle\otimes\lvert\downarrow\rangle - \lvert \downarrow\rangle\otimes\lvert\uparrow\rangle\right]
$$
$$
\Psi = \frac{1}{\sqrt{2}}\begin{bmatrix}
0 & 1 \\\
-1 & 0
\end{bmatrix}
$$
$$
|\Psi\_{\uparrow\downarrow}|^2 = |\Psi\_{\downarrow\uparrow}|^2 =\frac{1}{2}
$$

- If I measure one spin to be $\uparrow$, the other must be $\downarrow$ ("spooky action at a distance")!

----

## Many spins

- The state of $N$ spins is a vector in $\overbrace{\mathbb C^2 \otimes \mathbb C^2 \cdots \otimes \mathbb C^2}^{\text{N times}}$ i.e. a tensor $\Psi\_{s\_1s\_2\ldots s\_N}$

- $2^N$ dimensions: exponentially large space. At 20-odd spins the game is up!

- Generally, if state of one subsystem $\lvert\psi\rangle\in \mathbb C^d$, state of $N$ subsystems $\lvert\Psi\rangle\in \mathbb C^{d^N}$

- What do we do?

Note: I'm going to keep calling theses subsystems spins

----

## Singular Value Decomposition

- Evidently some states are easy to represent, e.g. __product states__ have only $dN$ components
$$
\lvert\Psi\rangle = \lvert \psi_1\rangle \otimes \lvert \psi_2\rangle \cdots \otimes \lvert \psi_N\rangle
$$

- How can we _quantify_ the problem? For 2 subsystems ($\Psi$ is a matrix) we have __singular value decomposition__

 $$
 \Psi = U\Lambda V^\dagger=\sum_{i=1}^d \lambda\_i \mathbf{u}\_i\otimes \mathbf{v}\_i^*
 $$
 
 $$
 \Psi\_{s\_1s\_2} = \left(U\Lambda V^\dagger\right)\_{s\_1s\_2}
 $$
  * $U$, $V$ are $d\times d$ unitaries with orthonormal columns $\mathbf{u}_i$, $\mathbf{v}_i$
  * $\Lambda$ is $d\times d$ diagonal (diagonal contains __singular values__ $\lambda_i$)

- A product state has only one nonzero singular value

----

## Entanglement

- Consider a system formed from two subsystems of $N_{1,2}$ spins

- The subsystems are independent if the state factorizes into a product state
$$
\Psi = \Psi^{(1)}\otimes \Psi^{(2)}
$$
$$
\Psi\_{s\_1s\_2\cdots s\_N} = \Psi^{(1)}\_{s\_1s\_2\cdots s\_{N\_1}} \Psi^{(2)}\_{s\_{N\_1+1}s\_{N\_1+2}\cdots s\_N}
$$

- Generally, regard $s\_1:s\_{N\_1}$ as row index and $s\_{N\_1+1}:s\_{N}$ as column index and do SVD
$$
\Psi = \sum_{i=1}^r \lambda_i \Psi_i^{(1)}\otimes \Psi_i^{(2)}
$$

- $\lambda_i$ quantify degree of __entanglement__ between subsystems: __entanglement spectrum__

----

## Factorization in ML

- $s\_{ij}$ is __affinity matrix__ between user $i$ and item $j$

- Seek factorization
$$
s\_{ij} = \mathbf{u}\_i^T \mathbf{v}_j
$$

- Vectors $\mathbf{u}\_i$, $\mathbf{v}\_j$ are __latent factors__ describing users and items

- Use in recommender systems, word2vec, etc.

----

## Graphical notation for tensors

![](assets/2017-12-14-microsoft-mps-6f4dff39.png)

![](assets/2017-12-14-microsoft-mps-51a6300c.png)

----

## SVD in pictures

- For two spins
$$
\Psi\_{s\_1s\_2} = \sum\_{i=1}^d \Psi\_{s\_1i}^{(1)} \Psi^{(2)}\_{is\_2}
$$
![](assets/2017-12-14-microsoft-mps-c0b00401.png)

- For $N$ spins

$$
\Psi\_{s\_1s\_2\cdots s\_N} = \sum\_{i=1}^r\Psi^{(1)}\_{s\_1s\_2\cdots s\_{N\_1},i} \Psi^{(2)}\_{i,s\_{N\_1+1}s\_{N\_1+2}\cdots s\_N}
$$
![](assets/2017-12-14-microsoft-mps-887eaa09.png)

----

## Tensor Decompositions

- Generalization to $N$<sup>th</sup> order tensors
$$
\Psi = \sum_{i=1}^r \lambda_i \boldsymbol{\psi}_i^1 \otimes \boldsymbol{\psi}_i^2  \cdots \otimes \boldsymbol{\psi}_i^N
$$

- $r$ is __rank__ of tensor. A product state has rank one

- Computing rank is _NP hard_

- Non-minimal decomposition is called __CANDECOMP/PARAFAC__ decomposition

Note: Seems that linear decomp known as [HOSVD](https://en.wikipedia.org/wiki/Higher-order_singular_value_decomposition)

----

## Matrix Product States / Tensor Trains

![](assets/2017-12-14-microsoft-mps-ad3eb61a.png)

- Apply this idea to $N\_1=1$, $N\_2=N-1$
$$
\Psi\_{s\_1s\_2\cdots s\_N} = \sum\_{i\_1=1}^{r\_1}\psi^{(1)}\_{s\_1i\_1} \Psi^{(1)}\_{i\_1s\_{2}s\_{3}\cdots s\_N}
$$

- Then we do the same thing with the $i\_1s\_2:s\_N$ indices of $\Psi^{(1)}\_{i\_1s\_{2}s\_{3}\cdots s\_N}$. Regard $i\_1s\_2$ as row index and
$s\_3:s\_N$ as column index
$$
\Psi\_{s\_1s\_2\cdots s\_N} = \sum\_{i\_1=1}^{r\_1}\sum\_{i\_2=1}^{r\_2}\psi^{(1)}\_{s\_1i\_1}\psi^{(2)}\_{i\_1s\_2i\_2} \Psi^{(2)}\_{i\_2s\_{3}\cdots s\_N}
$$

- ... and so on. Observe emergence of contracted $i$ indices

- Regard $\psi^{(n)}_{i\_n s\_n i\_{n+1}}$ as elements of matrices $\psi^{(n)}\_{s\_n}$, leading to a __Matrix Product State__ (MPS) or __Tensor Train__ (TT)
$$
\Psi\_{s\_1s\_2\cdots s\_N} = \psi^{(1)}\_{s\_1}\cdot \psi^{(2)}\_{s\_2}\cdot \psi^{(2)}\_{s\_2} \cdots \psi^{(N)}\_{s\_N}
$$
(the the first and last are row and column vectors resp.)

- Generalizes notion of product state: factors $\psi^{(n)}\_{s\_n}$ are $r\_n\times r_{n+1}$ matrices


----

## Why should MPS / TT representation be useful?

![](assets/2017-12-14-microsoft-mps-ad3eb61a.png)
- General $N$<sup>th</sup> order tensor has $d^N$ components; MPS has roughly $dN r^2$ (if all $r\_i$ equal)
- Decomposition uses (arbitrary?) ordering of indices
- There are situations where the ordering is meaningful
  * Physics: indices represent 1D arrangement of spins (a __spin chain__)
  * Data: natural sequence structure: time series, language
- If we expect some degree of __locality__, MPS should be a good approximation.
  * _Ground states_ of spins chains are efficiently represented by MPS
  * __Bond dimensions__ $r\_i$ are hyperparameters able to control long-ranged dependences


---

## MPS as a classifier

----

## Stoudenmire and Schwab (NIPS, 2016)

Rough idea: think of a class as a superposition of all instances in that class

![](assets/2017-12-14-microsoft-mps-16670610.png)

- Represent each instance by a product state (over pixels)

<!-- $
\Phi\_{s\_1\cdots s\_N} = \phi\_{s\_1}(x\_1)\phi\_{s\_2}(x\_2)\cdots \phi\_{s\_N}(x\_N)
$ -->

![](assets/2017-12-14-microsoft-mps-0250d4d0.png#right)

$$
\phi(x\_j) = \begin{bmatrix}
\cos\left(\frac{\pi x\_j}{2}\right) &
\sin\left(\frac{\pi x\_j}{2}\right)
\end{bmatrix},\qquad x\_j\in[0,1]
$$
![](assets/2017-12-14-microsoft-mps-e2c82a25.png)

----

## Classifier

$$
f^\ell(\mathbf{x}) = W^\ell\cdot \Phi(\mathbf{x})
$$
![](assets/2017-12-14-microsoft-mps-8fd80555.png)
- Choose the label with largest $|f^\ell(\mathbf{x})|$

----

## MPS Classifier

- $W^\ell$ is a $N+1$<sup>th</sup> order tensor: represent it as MPS

![](assets/2017-12-14-microsoft-mps-e98655ed.png)

Note

- The position of the classifier index is arbitrary
- To use MPS we have to impose a 1D order on 2D pixels: "zig-zag"

![](assets/2017-12-14-microsoft-mps-e8543655.png)

----

## PEPS = Projected Entangled Pair States

Why don't we do this?

![](assets/2017-12-14-microsoft-mps-423d15a8.png)

Contracting all the indices is exponentially hard (_vs._ linear for MPS)

----

## Loss Function

-  SS used quadratic loss
$$
L = \frac{1}{2}\sum\_{n=1}^{N\_T}\left(f^\ell(\mathbf{x}\_n)- y\_n^\ell\right)^2
$$

- $y^\ell\_n$ is one-hot vector giving class
- SS minimized loss using a "sweeping" algorithm

----

## Sweeping


![](assets/2017-12-14-microsoft-mps-de32b4f7.png)

----

## Restoring MPS form

![](assets/2017-12-14-microsoft-mps-b94cada7.png)

- Retain only singular values over some threshold
- Allow _adaptive_ variation of hyperparameters during training

----

## Scaling

- Scaling of algorithm is $d^3 r^3 N N\_L N\_T$
  * $d$ is the local dimension (2)
  * $r$ is typical bond dimension (10-120)
  * $N$ is the number of input components (784)
  * $N\_L$ is the number of labels (10)
  * $N\_T$ is the size of training set

----

## Results for MNIST

  <table>
    <thead>
      <tr>
        <th>  </th>
        <th>Init</th>
        <th>Max matrix dim</th>
        <th>Accuracy</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td> Lin Reg</td>
        <td> N/A </td>
        <td> N/A </td>
        <td> $85\%$</td>
      </tr>
      <tr>
        <td> Stoudenmire $\&$ Schwab </td>
        <td> None </td>
        <td> 20 </td>
        <td> $98\%$ </td>
      </tr>
      <tr>
        <td> Stoudenmire $\&$ Schwab </td>
        <td> None </td>
        <td> 120 </td>
        <td> $99.3\%$ </td>
      </tr>
      <tr>
        <td> 2-site DMRG </td>
        <td> Linear </td>
        <td> 20 </td>
        <td> $90\%$ </td>
      </tr>
      <tr>
        <td> 2-site DMRG </td>
        <td> Linear </td>
        <td> 60 </td>
        <td> $96\%$</td>
      </tr>
      <tr>
        <td> 2-site DMRG (permuted) </td>
        <td> Linear </td>
        <td> 50 </td>
        <td> $96\%$</td>
      </tr>

      <tr>
    </tbody>
  </table>

---

## MPS as a probabilistic model

----

## MPS as probabilities

- Model the probability of a sequence $X=x\_1x\_2\cdots x\_N$ by a matrix product
$$
  P(X) = Z\_N^{-1}\mathsf{A}^{(1)}\_{x\_1}\mathsf{A}^{(2)}\_{x\_2}\cdots \mathsf{A}^{(N)}\_{x_N},
$$

- $\mathsf{A}^{(1)}$ is a row vector, $\mathsf{A}^{(N)}$ is a column vector, and all the rest are matrices with dimensions matching.

- Normalization (partition function) is
$$
  Z\_N = \mathsf{T}^{(1)}\mathsf{T}^{(2)}\cdots \mathsf{T}^{(N)},
$$
$$
  \mathsf{T}^{(n)} = \sum_x \mathsf{A}^{(n)}_x.
$$

Note: Computing the normalization is $O(N)$ in this model

----

## Matrices that don't vary with position

- Need initial and terminal vectors $\mathbf{v}\_\text{i,f }$

$$
  P(X) = Z\_N^{-1}\mathbf{v}\_\text{i}^T\mathsf{A}\_{x\_1}\mathsf{A}\_{x\_2}\cdots \mathsf{A}\_{x\_N}\mathbf{v}\_\text{f},
$$

- This is a __weighted automaton__

![](assets/2017-12-14-microsoft-mps-69f38930.png)

(Balle _et al._, 2014)

----

## Modeling finite subsequences of an infinite sequence


- Marginalizing over a long sequence gives
$$
\sum_{x\_1:x\_N} \mathsf{A}\_{x\_1}\mathsf{A}\_{x\_2}\cdots \mathsf{A}\_{x\_N} = \mathsf{T}^N \to t\_\text{dom}^N \mathbf{r}\otimes\mathbf{l}
$$
  * $t\_\text{dom}$ is __dominant eigenvalue__ $\mathsf{T}$
  * $\mathbf{r}$, $\mathbf{l}$ are right (column) and left (row) __eigenvectors__

- Normalizing $\mathsf{T}$ so that $t\_\text{dom}=1$, probability of finite subsequence then
$$
P(X) = \mathbf{l}^T  \mathsf{A}\_{x\_1}\mathsf{A}\_{x\_2}\cdots \mathsf{A}\_{x\_N}\mathbf{r}
$$

----

## Example: Hidden Markov Model

![](assets/2017-12-14-microsoft-mps-e597cbfe.png)

$$
\mathsf{A}_x^{hh'} = P(h'|h)P(x|h).
$$

- $P(h'|h)$ represent the transition matrix of a Markov chain on unobserved states

- $P(v|h)$ are called the __emission probabilities__ into the observed states

- In this case $\mathsf{T}^{hh'}=P(h'|h)$ and therefore
  * $t\_\text{max}=1$
  * $\mathbf{r}^T_\text{max}=(1,1,\cdots)$
  * $\mathbf{l}_\text{max}=\pi$, the steady state distribution of the Markov chain.

----

## Observable Operator Model

$$
P(X) = \mathbf{l}^T  \mathsf{A}\_{x\_1}\mathsf{A}\_{x\_2}\cdots \mathsf{A}\_{x\_N}\mathbf{r}
$$
- Note we are free to make a similarity transformation $\mathsf{A}\_{x}\to \mathsf{S}\mathsf{A}\_{x\_1}\mathsf{S}^{-1}$, transforming $\mathbf{l}$ and $\mathbf{r}$

- Choice $\mathbf{l}_\text{max}=(1,1,\cdots)$ gives __Observable Operator Model__ (Jaeger, 1997)


----

## Hankel Matrix


$$
\mathsf{H}_{XY} = P(XY)
$$
for _any_ prefix $X$ and suffix $Y$

![](assets/2017-12-14-microsoft-mps-69f38930.png)
![](assets/2017-12-14-microsoft-mps-efc240e5.png)


----

## Spectral Learning (Balle _et al._, 2014)

- SVD of (empirical) Hankel matrix
$$
H = U\Lambda V^T
$$
Have to choose truncation

- Parameters of weighed automaton are then
$$
\mathbf{l}^T = \mathbf{h}\_\text{P}^T V
$$
$$
\mathbf{r} = (\mathsf{H}V)^+ \mathbf{h}\_\text{S}
$$
$$
\mathsf{A}_x=(\mathsf{H}V)^+\mathsf{H}_x V
$$
  * $\mathbf{h}\_{\text{P/S}}$ is a vector of prefix / suffix probabilities
  * $(\mathsf{H}_x) = P(XxY)$

- Problem: matrices huge! Calling out for DMRG treatment?

----

## Input Switched Affine Networks (Foerster _et al._, 2017)

- Update hidden state by
$$
\mathbf{h}\_t = \mathsf{W}\_{\mathbf{x}\_t}\mathbf{h}\_{t-1} + \mathbf{b}\_{\mathbf{x}\_t}
$$
(similar to Sutskever _et al._ multiplicative RNN)

- For character-level language modeling, $\mathsf{W}\_{\mathbf{x}}$ are 27 different matrices for "a"-"z" and "_"

- Next character probability modeled as
$$
P(\mathbf{x}\_{t+1}|\mathbf{x}\_1:\mathbf{x}\_t) = \text{softmax}(\mathbf{l}\_t)
$$
$$
\mathbf{l}\_t = \mathsf{W}\_{\text{ro}}\mathbf{h}\_{t} + \mathbf{b}\_{\text{ro}}
$$
- Performance (cross entropy in bits / character) comparable to other RNN architectures

![](assets/2017-12-14-microsoft-mps-8d5bfcc6.png)

----

## Negative Probabilities in Weighted Automata

$$
P(X) = \mathbf{l}^T  \mathsf{A}\_{x\_1}\mathsf{A}\_{x\_2}\cdots \mathsf{A}\_{x\_N}\mathbf{r}
$$

- No guarantee that learnt parameters yield positive probabilities for all sequences

- ISAN avoids this problem by softmaxing, but what if you wanted to predict probabilities _backwards_?

----

## MPS as probability _amplitudes_

Recall Born rule in Quantum Mechanics

$$
P(X) = |\Psi\_{x\_1\cdots x\_N}|^2
$$

- Provides a way to guarantee positivity

- MPS model (Bailly, 2011, Pestun _et al._, 2017)
$$
P(X) = \text{tr}\left[\rho\_L \mathsf{A}\_{x\_1}\cdots \mathsf{A}\_{x\_N}\rho\_R \mathsf{A}\_{x\_N}^\dagger\cdots \mathsf{A}\_{x\_1}^\dagger\right]
$$
![](assets/2017-12-14-microsoft-mps-75cd2651.png)

- $\rho\_{R/L}$ are matrices satisfying

![](assets/2017-12-14-microsoft-mps-2703cb41.png)

They play the role of $\mathbf{r}$, $\mathbf{l}$ in weighted automaton

----

## Normalization

- If we impose

$$
\sum\_x \mathsf{A}\_{x}\rho\_R \mathsf{A}\_{x}^\dagger = \rho\_R
$$

![](assets/2017-12-14-microsoft-mps-50b388b2.png)

- Guarantees normalization

![](assets/2017-12-14-microsoft-mps-ddd81747.png)

----

## Left condition

- If in addition

$$
\sum_x \mathsf{A}\_x^\dagger \rho\_L \mathsf{A}\_x = \rho\_L
$$

![](assets/2017-12-14-microsoft-mps-20dd5a9f.png)

- We can marginalize on the left and right

----

## MPS as a generative model

- As for RNNs, sampling is possible in a single shot using the chain rule

$$
P(X) = P(x\_N|x\_1:x\_{N-1})P(x\_{N-1}|x\_1:x\_{N-2})\cdots P(x\_1).
$$

![](assets/2017-12-14-microsoft-mps-1ea2b840.png)

----

# Generating binarized MNIST digits (Han _et al._, 2017)

![](assets/2017-12-14-microsoft-mps-4c0a24f4.png)

- Backward sampling as easy as forward sampling

----

# Questions

- How do we train _infinite_ MPS using DMRG (not SGD)?
![](assets/2017-12-14-microsoft-mps-75cd2651.png)

- Probabilistic MPS suited to _discrete_ data, need embedding for continuous data
  * Recall that Stoudenmire & Schwab chose

  $$
  \phi(x\_j) = \begin{bmatrix}
  \cos\left(\frac{\pi x\_j}{2}\right) &
  \sin\left(\frac{\pi x\_j}{2}\right)
  \end{bmatrix},\qquad x\_j\in[0,1]
  $$
  ![](assets/2017-12-14-microsoft-mps-e2c82a25.png)
  ...but it doesn't give a proper probability measure on $[0,1]$

----

## References

- _Supervised learning with quantum-inspired tensor networks_, Miles Stoudenmire and David Schwab, NIPS 2016

- Our TensorFlow implementation [github.com/TrMPS/MPS-MNIST](https://github.com/TrMPS/MPS-MNIST)

- _Input Switched Affine Networks: An RNN Architecture Designed for Interpretability_, Foerster _et al._ PMLR 70:1136-1145, 2017

- _Spectral learning of weighted automata_, Balle, B., Carreras, X., Luque, F.M. _et al._, Mach Learn (2014) 96: 33.

- _Quadratic Weighted Automata:
Spectral Algorithm and Likelihood Maximization_, Bailly, B., JMLR 20 (2011) 147–162

- _Language as a matrix product state_, Pestun, V., Terilla, J., Vlassopoulos, Y, 	arXiv:1711.01416

- _Unsupervised Generative Modeling Using Matrix Product States_, Zhao-Yu Han, Jun Wang, Heng Fan, Lei Wang, Pan Zhang, arXiv:1709.01662

- _Expressive power of recurrent neural networks_, Valentin Khrulkov, Alexander Novikov, Ivan Oseledets, arXiv:1711.00811

- _Online Learning with Gated Linear Networks_, Veness, J. _et al._, arXiv:1712.01897


----


- On multiplicative integration with recurrent neural networks (discusses relation to HMMs)
- Generating text with recurrent neural networks (Multiplicative RNNs) */


## Continuous MPS

## Embedding in continous spaces

As in hidden Markov models

## Other applications

Quantum state tomography (recent)

</pre>
