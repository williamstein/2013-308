︠82bd72da-7222-46e6-9ef3-c9f74adab498i︠
%md

# Lecture 28: Orthogonal vectors in $\mathbb{R}^n$, part 2

### June 5, 2013

#### Plan

 1. Start Screencast

 2. Questions

 3. Homework:
  - Mock Final Homework: Due **Tonight**.
  - Friday: review lecture -- I will go over homework for the Friday lecture, and also answer other questions you might have.  That's it.

 4. Today: Finish Orthogonality



︡54564e71-00e7-4901-a92e-21b7f18c7d83︡{"html":"<h1>Lecture 28: Orthogonal vectors in $\\mathbb{R}^n$, part 2</h1>\n\n<h3>June 5, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework:</p>\n\n<ul>\n<li>Mock Final Homework: Due <strong>Tonight</strong>.</li>\n<li>Friday: review lecture &#8211; I will go over homework for the Friday lecture, and also answer other questions you might have.  That&#8217;s it. </li>\n</ul></li>\n<li><p>Today: Finish Orthogonality</p></li>\n</ol>\n"}︡
︠398b6e41-95e3-40ed-a85f-23e6913f08ba︠



︠42cc7ef3-e631-42f1-a8d4-902e96ad2e91i︠
%md

**Theorem:**  *Let $W$ be a subspace.  For each $v\in\mathbb{R}^n$ there is a unique $w\in W$ and $w^{\perp} \in W^{\perp}$ such that $v=w+w^{\perp}$.*

**Proof.**

Choose an orthonormal basis $v_1,\ldots, v_k$ for $W$.

Define
\[
   w={\rm proj}_W(v) = (v\cdot v_1) v_1 + \cdots + (v\cdot v_k)  v_k
\]
and let $w^{\perp} = v - w$.
Then

- $w \in W$ since ${\rm proj}_W(v)$ is a linear combination of the $v_i$.

- $v = w+w^{\perp}$ by definition of $w^{\perp}$.

- Claim: $w^{\perp} \in W^{\perp}$.  For this, it suffices to show that $w^{\perp} \cdot v_i=0$ for each $i$, since any element of $W$ is a linear combination of the $v_i$.  We have
\begin{align*}
   w^{\perp} \cdot v_i &= (v-w) \cdot v_i \\
       &= (v - (v\cdot v_1) v_1 \cdots - (v\cdot v_k)  v_k) \cdot v_i\\
       &=v\cdot v_i - (v\cdot v_i)(v_i \cdot v_i) = 0.
\end{align*}

- Finally, uniqueness.  If $w'\in W$, $(w')^{\perp} \in W^{\perp}$ and $v = w' + (w')^{\perp}$,
then $0=v-v=w + w^{\perp} - w' - (w')^{\perp} = (w-w') - (w^{\perp}-(w')^{\perp})$, so
$w-w' = w^{\perp}-(w')^{\perp} \in W \cap W^{\perp}$.  But only the $0$ vector has dot product
$0$ with itself, so $w-w'=0$, hence $w=w'$, as claimed.   (In particular, the choice of orthonormal basis above doesn't matter.)


︡a7fad5b2-f6f3-4bca-ab43-2457089b2405︡{"html":"<p><strong>Theorem:</strong>  <em>Let $W$ be a subspace.  For each $v\\in\\mathbb{R}^n$ there is a unique $w\\in W$ and $w^{\\perp} \\in W^{\\perp}$ such that $v=w+w^{\\perp}$.</em></p>\n\n<p><strong>Proof.</strong></p>\n\n<p>Choose an orthonormal basis $v_1,\\ldots, v_k$ for $W$.</p>\n\n<p>Define\n\\[\n   w={\\rm proj}_W(v) = (v\\cdot v_1) v_1 + \\cdots + (v\\cdot v_k)  v_k\n\\]\nand let $w^{\\perp} = v - w$.\nThen</p>\n\n<ul>\n<li><p>$w \\in W$ since ${\\rm proj}_W(v)$ is a linear combination of the $v_i$.</p></li>\n<li><p>$v = w+w^{\\perp}$ by definition of $w^{\\perp}$.</p></li>\n<li><p>Claim: $w^{\\perp} \\in W^{\\perp}$.  For this, it suffices to show that $w^{\\perp} \\cdot v_i=0$ for each $i$, since any element of $W$ is a linear combination of the $v_i$.  We have\n\\begin{align*}\n   w^{\\perp} \\cdot v_i &= (v-w) \\cdot v_i \\\\\n       &= (v - (v\\cdot v_1) v_1 \\cdots - (v\\cdot v_k)  v_k) \\cdot v_i\\\\\n       &=v\\cdot v_i - (v\\cdot v_i)(v_i \\cdot v_i) = 0.\n\\end{align*}</p></li>\n<li><p>Finally, uniqueness.  If $w'\\in W$, $(w')^{\\perp} \\in W^{\\perp}$ and $v = w' + (w')^{\\perp}$,\nthen $0=v-v=w + w^{\\perp} - w' - (w')^{\\perp} = (w-w') - (w^{\\perp}-(w')^{\\perp})$, so\n$w-w' = w^{\\perp}-(w')^{\\perp} \\in W \\cap W^{\\perp}$.  But only the $0$ vector has dot product\n$0$ with itself, so $w-w'=0$, hence $w=w'$, as claimed.   (In particular, the choice of orthonormal basis above doesn&#8217;t matter.)</p></li>\n</ul>\n"}︡
︠93d90929-daf3-44da-805c-e45c82fd295f︠







︠176bbea0-e189-41ef-a7bc-c29ac0d70013i︠
%md

**Corollary:** *Let $A$ be any $m\times n$ matrix.  Then ${\rm rank}(A) + {\rm nullity}(A) = n$.*

**Proof.**

Let $W$ be the row space of $A$.

Observe that $W^{\perp}$ is the nullspace of $A$!

Thus by definition $r={\rm rank}(A)$ is the dimension of $W$,
and $s={\rm nullity}(A)$ is the dimension of $W^{\perp}$.

Let $v_1,\ldots, v_r$ be a basis for $W$ and $z_1, \ldots, z_s$ be a basis for $W^{\perp}$.
By the above theorem, every element of $\mathbb{R}^n$ can be written uniquely as something
in $W$ plus something in $W^{\perp}$, so
$v_1,\ldots, v_r, z_1, \ldots, z_s$
is a basis for $\mathbb{R}^n$.  We conclude that $r+s=n$, as claimed.

︡114c107f-b69a-4792-bfcf-6fb5e8a2255a︡{"html":"<p><strong>Corollary:</strong> <em>Let $A$ be any $m\\times n$ matrix.  Then ${\\rm rank}(A) + {\\rm nullity}(A) = n$.</em></p>\n\n<p><strong>Proof.</strong></p>\n\n<p>Let $W$ be the row space of $A$.</p>\n\n<p>Observe that $W^{\\perp}$ is the nullspace of $A$!</p>\n\n<p>Thus by definition $r={\\rm rank}(A)$ is the dimension of $W$,\nand $s={\\rm nullity}(A)$ is the dimension of $W^{\\perp}$.</p>\n\n<p>Let $v_1,\\ldots, v_r$ be a basis for $W$ and $z_1, \\ldots, z_s$ be a basis for $W^{\\perp}$.\nBy the above theorem, every element of $\\mathbb{R}^n$ can be written uniquely as something\nin $W$ plus something in $W^{\\perp}$, so \n$v_1,\\ldots, v_r, z_1, \\ldots, z_s$\nis a basis for $\\mathbb{R}^n$.  We conclude that $r+s=n$, as claimed.</p>\n"}︡
︠c35d5285-0490-4b45-bf8d-87d0d50eead4︠




︠87306676-b492-4e88-991f-5a7cbf99d504i︠
%md
## Gram-Schmidt, again

Way to go from any basis $v_1, \ldots, v_n$ for a subspace to an orthonormal basis for the same space:

1. Make vectors orthogonal:
\begin{align*}
w_1 &= v_1\\
w_2 &= v_2 - {\rm proj}_{w_1}(v_2) = v_2 - \frac{v_2\cdot w_1}{w_1\cdot w_1} w_1\\
w_3 &= v_3 - {\rm proj}_{w_1, w_2}(v_3) = v_3 - \frac{v_3\cdot w_1}{w_1\cdot w_1}w_1 - \frac{v_3\cdot w_2}{w_2\cdot w_2}w_2\\
w_4 &= \cdots
\end{align*}
etc.

Tricks: At each point, you can clear denominators of $w_i$ if you want, to get rid of fractions.  Also, as you compute each $w_i$, double check that it is indeed orthogonal to the previous $w_j$.

2. Renormalize them so they all have unit length (hence orthonormal). Just divide each $w_i$ by $\sqrt{w_i \cdot w_i}$.
︡99487199-3d19-47cb-b5c7-97ad506fdc16︡{"html":"<h2>Gram-Schmidt, again</h2>\n\n<p>Way to go from any basis $v_1, \\ldots, v_n$ for a subspace to an orthonormal basis for the same space:</p>\n\n<ol>\n<li>Make vectors orthogonal:\n\\begin{align*}\nw_1 &= v_1\\\\\nw_2 &= v_2 - {\\rm proj}_{w_1}(v_2) = v_2 - \\frac{v_2\\cdot w_1}{w_1\\cdot w_1} w_1\\\\\nw_3 &= v_3 - {\\rm proj}_{w_1, w_2}(v_3) = v_3 - \\frac{v_3\\cdot w_1}{w_1\\cdot w_1}w_1 - \\frac{v_3\\cdot w_2}{w_2\\cdot w_2}w_2\\\\\nw_4 &= \\cdots\n\\end{align*}\netc.</li>\n</ol>\n\n<p>Tricks: At each point, you can clear denominators of $w_i$ if you want, to get rid of fractions.  Also, as you compute each $w_i$, double check that it is indeed orthogonal to the previous $w_j$. </p>\n\n<ol>\n<li>Renormalize them so they all have unit length (hence orthonormal). Just divide each $w_i$ by $\\sqrt{w_i \\cdot w_i}$.</li>\n</ol>\n"}︡
︠5914fe02-de64-4503-9f53-98a99652c468i︠
%md

## Try it out:

Basis for $\mathbf{R}^2$: $\quad$ $v_1=(1,2)$, $v_2=(3,4)$

\begin{align*}
w_1 &= v_1 = (1,2)\\
w_2 &= v_2 - {\rm proj}_{w_1}(v_2) = (3,4)- \frac{11}{5}(1,2) \rightarrow (15,20) - (11,22) = (4,-2)\\
\end{align*}

Orthonomal basis: $\frac{1}{\sqrt{5}}(1,2)$ and $\frac{1}{2\sqrt{5}}(4,-2) = \frac{1}{\sqrt{5}}(2,-1)$.
︡af4ca778-6aae-44bc-974f-6f8f9d49e123︡{"html":"<h2>Try it out:</h2>\n\n<p>Basis for $\\mathbf{R}^2$: $\\quad$ $v_1=(1,2)$, $v_2=(3,4)$</p>\n\n<p>\\begin{align*}\nw_1 &= v_1 = (1,2)\\\\\nw_2 &= v_2 - {\\rm proj}_{w_1}(v_2) = (3,4)- \\frac{11}{5}(1,2) \\rightarrow (15,20) - (11,22) = (4,-2)\\\\\n\\end{align*}</p>\n\n<p>Orthonomal basis: $\\frac{1}{\\sqrt{5}}(1,2)$ and $\\frac{1}{2\\sqrt{5}}(4,-2) = \\frac{1}{\\sqrt{5}}(2,-1)$.</p>\n"}︡
︠8b6a4e03-3d1c-48f9-9d4a-b2e6bc759345i︠
%md

## Try it out:

Basis for subspace of $\mathbf{R}^4$: $\quad$ $v_1=(1,2,2,1)$, $v_2=(1,0,1,1)$, $v_3=(1,1,0,1)$.

\begin{align*}
w_1 &= v_1 = (1,2,2,1)\\
w_2 &= v_2 - {\rm proj}_{w_1}(v_2) \\
    &= (1,0,1,1) - \frac{2}{5}(1,2,2,1)  \\
    &\rightarrow (5,0,5,5)-(2,4,4,2) = (3,-4,1,3)\\
w_3 &= v_3 - {\rm proj}_{w_1,w_2}(v_3) \\
    &= (1,1,0,1) - \frac{4}{10}(1,2,2,1)-\frac{2}{35}(3,-4,1,3)\\
    &\rightarrow (70,70,0,70) - (28,56,56,28) - (12,-16,4,12) \\
    &= (70,70,0,70) - (40,40,60,40) = (30,30,-60,30) \rightarrow (1,1,-2,1)
\end{align*}

Check: yep.

Orthonomal basis:
\[
  \frac{1}{\sqrt{10}}(1,2,2,1),
  \frac{1}{\sqrt{35}}(3,-4,1,3),
  \frac{1}{\sqrt{7}}(1,1,-2,1)
\]
︡b794f794-2ddb-492e-a5e4-74b0c22bce10︡{"html":"<h2>Try it out:</h2>\n\n<p>Basis for subspace of $\\mathbf{R}^4$: $\\quad$ $v_1=(1,2,2,1)$, $v_2=(1,0,1,1)$, $v_3=(1,1,0,1)$.</p>\n\n<p>\\begin{align*}\nw_1 &= v_1 = (1,2,2,1)\\\\\nw_2 &= v_2 - {\\rm proj}_{w_1}(v_2) \\\\\n    &= (1,0,1,1) - \\frac{2}{5}(1,2,2,1)  \\\\\n    &\\rightarrow (5,0,5,5)-(2,4,4,2) = (3,-4,1,3)\\\\\nw_3 &= v_3 - {\\rm proj}_{w_1,w_2}(v_3) \\\\\n    &= (1,1,0,1) - \\frac{4}{10}(1,2,2,1)-\\frac{2}{35}(3,-4,1,3)\\\\\n    &\\rightarrow (70,70,0,70) - (28,56,56,28) - (12,-16,4,12) \\\\\n    &= (70,70,0,70) - (40,40,60,40) = (30,30,-60,30) \\rightarrow (1,1,-2,1)\n\\end{align*}</p>\n\n<p>Check: yep.</p>\n\n<p>Orthonomal basis:\n\\[\n  \\frac{1}{\\sqrt{10}}(1,2,2,1),\n  \\frac{1}{\\sqrt{35}}(3,-4,1,3),\n  \\frac{1}{\\sqrt{7}}(1,1,-2,1)\n\\]</p>\n"}︡
︠c0ac7a3c-6733-4045-be27-18a0e3e3df02︠
a = matrix(QQ,3,4,[1,2,2,1,  1,0,1,1,  1,1,0,1])
a.gram_schmidt()[0]   # just orthogonal, not orthonormal
︡ff43c0e5-0ad2-458c-9d0c-b6ba4d2fe18f︡{"stdout":"[   1    2    2    1]\n[ 3/5 -4/5  1/5  3/5]\n[ 3/7  3/7 -6/7  3/7]\n"}︡
︠b7008f4f-ab34-4a95-8494-bb20e2bbccc8︠





