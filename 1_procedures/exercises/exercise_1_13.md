#### Exercise 1.13
Prove that $Fib(n)$ is the closest integer to $\phi^n/\sqrt5$, where $\phi=\frac{1+\sqrt5}{2}$.

$Fib(n) = 
    \begin{cases}
        0, \quad\text{if } n = 0\\
        1, \quad\text{if } n = 1\\
        Fib(n-1) + Fib(n-2), \quad\text{if } n > 1
    \end{cases}
$

Hint: Let $\psi=\frac{1-\sqrt5}{2}$, then prove $Fib(n) = \frac{\phi^n - \psi^n}{\sqrt5}$ by induction.

If $n=0 \Rightarrow Fib(0) = \frac{1 - 1}{\sqrt5} = 0$

If $n=1 \Rightarrow Fib(1) = \frac{\frac{1+\sqrt5}{2} - \frac{1-\sqrt5}{2}}{\sqrt5} = 1$

Assume $Fib(n) = \frac{\phi^n - \psi^n}{\sqrt5}$, then $Fib(n+1) = Fib(n) + Fib(n-1) = \frac{\phi^n - \psi^n}{\sqrt5}+\frac{\phi^{n-1} - \psi^{n-1}}{\sqrt5}=\frac{\phi^{n+1}(\phi^{-1}+\phi^{-2}) - \psi^{n+1}(\psi^{-1}+\psi^{-2})}{\sqrt5}$.

$\phi^{-1}+\phi^{-2}=\frac{2}{1+\sqrt5} + \frac{4}{(1+\sqrt5)^2}=\frac{2(1+\sqrt5)}{(1+\sqrt5)^2}+\frac{4}{(1+\sqrt5)^2}=\frac{6+2\sqrt5}{(1+\sqrt5)^2}=\frac{3+\sqrt5}{3+\sqrt5}=1$

$\psi^{-1}+\psi^{-2}=\frac{2}{1-\sqrt5} + \frac{4}{(1-\sqrt5)^2}=\frac{2(1-\sqrt5)}{(1-\sqrt5)^2}+\frac{4}{(1-\sqrt5)^2}=\frac{6-2\sqrt5}{(1-\sqrt5)^2}=\frac{3-\sqrt5}{3-\sqrt5}=1$

$Fib(n+1) = \frac{\phi^{n+1} - \psi^{n+1}}{\sqrt5}$, Q.E.D.