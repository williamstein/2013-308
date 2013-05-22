
︠687c9a70-9397-49ac-af9a-dce24b952731i︠
%hide
%md
# Lecture 23:
## Span, Basis, Dimension, Linear Transformation... in general

### May 22, 2013

#### Plan

 1. Start Screencast

 2. Questions; reminder: homework due tonight; new homework

 3. Chapter 6 "Vector Spaces".


︡6a796aaf-fa8d-4e0e-afd4-fabe0c0531f4︡{"html":"<h1>Lecture 23:</h1>\n\n<h2>Span, Basis, Dimension, Linear Transformation&#8230; in general</h2>\n\n<h3>May 22, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions; reminder: homework due tonight; new homework</p></li>\n<li><p>Chapter 6 &#8220;Vector Spaces&#8221;.</p></li>\n</ol>\n"}︡
︠08da2708-de29-4d8c-a991-f9ab1e98e33fi︠
%hide
%md
## Span -- a way to make subspaces

Let $v_1,\ldots, v_n$ be elements of any vector space $V$ over a field $F$.
Then
\begin{equation}
   {\rm span}(v_1, \ldots, v_n) = \{ a_1 v_1 + \cdots + a_n v_n : a_1, \ldots, a_n \in F\}
\end{equation}
is a subspace of $V$.
︡ecc616c4-05db-4edf-99c8-4dd300c933e5︡{"html":"<h2>Span &#8211; a way to make subspaces</h2>\n\n<p>Let $v_1,\\ldots, v_n$ be elements of any vector space $V$ over a field $F$.\nThen \n\\begin{equation}\n   {\\rm span}(v_1, \\ldots, v_n) = \\{ a_1 v_1 + \\cdots + a_n v_n : a_1, \\ldots, a_n \\in F\\}\n\\end{equation}\nis a subspace of $V$.</p>\n"}︡
︠21080e05-69db-4c05-b7b6-8453ec607a3ei︠
%hide
%md
## Examples

- Let $\mathcal{P}$ be the vector space of polynomials.
\[
   {\rm span}(x^2 - 1, x, 2x - 3, 5x) = {\rm span}(1,x,x^2).
\]

- Let $V$ be the vector space of **all functions** $\mathbb{R}\to\mathbb{R}$.
 \[
  {\rm span}(1, \sin^2(x), \sin(x)\cos(x), \cos^2(x), \sin(2x)) = {\rm span}(1, \sin^2(x), \sin(x)\cos(x))
 \]
 since $2\sin(x)\cos(x) = \sin(2x)$ and $\sin^2(x) + \cos^2(x) = 1$.   It's not totally *obvious* that we can't make that set of 3 functions in the span on the right a span of a less elements.

- Nothing stops us from consider the span of infinitely many different elements of $V$:
 \[
   {\rm span}(\sin(x), \sin(2 x), \sin(3x), \sin(4x), \ldots )
 \]

︡984bc780-43f1-4d34-ac79-a1499cddde0c︡{"html":"<h2>Examples</h2>\n\n<ul>\n<li><p>Let $\\mathcal{P}$ be the vector space of polynomials.\n\\[\n   {\\rm span}(x^2 - 1, x, 2x - 3, 5x) = {\\rm span}(1,x,x^2).\n\\]</p></li>\n<li><p>Let $V$ be the vector space of <strong>all functions</strong> $\\mathbb{R}\\to\\mathbb{R}$.\n\\[\n  {\\rm span}(1, \\sin^2(x), \\sin(x)\\cos(x), \\cos^2(x), \\sin(2x)) = {\\rm span}(1, \\sin^2(x), \\sin(x)\\cos(x))\n \\]\nsince $2\\sin(x)\\cos(x) = \\sin(2x)$ and $\\sin^2(x) + \\cos^2(x) = 1$.   It&#8217;s not totally <em>obvious</em> that we can&#8217;t make that set of 3 functions in the span on the right a span of a less elements.</p></li>\n<li><p>Nothing stops us from consider the span of infinitely many different elements of $V$:\n\\[\n   {\\rm span}(\\sin(x), \\sin(2 x), \\sin(3x), \\sin(4x), \\ldots )\n \\]</p></li>\n</ul>\n"}︡
︠17d21db9-d406-430b-88a5-1cfe5ff60383i︠
%hide
%md
## Linear Independence

**Definition (Linearly Independent):** Vectors $v_1,\ldots, v_n$ are **linearly independent** if there is no way to find
$a_1,\ldots, a_n\in F$ (not all 0) with $a_1v_1 + \cdots + a_nv_n=0$.    The vectors are **linearly dependent** if you can find
such scalars.

**Remarks**

- linearly independent means there is no way to write one $v_i$ in terms of the others.

- $v_1,\ldots,v_n$ is linearly independent if ${\rm span}(v_1,\ldots, v_n) \neq {\rm span}(w_1,\ldots, w_m)$ for any $m < n$.
︡93509ccb-73b3-4d72-bd59-0a6e65935d4a︡{"html":"<h2>Linear Independence</h2>\n\n<p><strong>Definition (Linearly Independent):</strong> Vectors $v_1,\\ldots, v_n$ are <strong>linearly independent</strong> if there is no way to find\n$a_1,\\ldots, a_n\\in F$ (not all 0) with $a_1v_1 + \\cdots + a_nv_n=0$.    The vectors are <strong>linearly dependent</strong> if you can find\nsuch scalars.</p>\n\n<p><strong>Remarks</strong></p>\n\n<ul>\n<li><p>linearly independent means there is no way to write one $v_i$ in terms of the others.</p></li>\n<li><p>$v_1,\\ldots,v_n$ is linearly independent if ${\\rm span}(v_1,\\ldots, v_n) \\neq {\\rm span}(w_1,\\ldots, w_m)$ for any $m < n$.</p></li>\n</ul>\n"}︡
︠96329785-cae7-49c0-9c0f-a2d618b809b6i︠
%hide
%md
**Example:** The polynomials $1,x,x^2,x^3$ are linearly independent in the vector space $\mathbb{Q}[x]$ of
all polynomials with rational coefficients.   (Proof: If $f(x) = a_1 + a_2 x + a_3 x^2 + a_4 x^3 =0$,
then $f(x)$ has infinitely many zeros, so $f=0$, so all $a_i=0$.)

**Example:** The set $1+x, x+x^2, 1+x^2$ is also linearly independent.  Without quite understanding what this means, notice that
\begin{align}
1+x &\leftrightarrow (1,1,0)\\
x+x^2 & \leftrightarrow (0,1,1)\\
1+x^2 & \leftrightarrow (1,0,1)
\end{align}
and that the rows of the matrix
\[
    \left(\begin{array}{rrr}
    1 & 1 & 0 \\
    0 & 1 & 1 \\
    1 & 0 & 1
    \end{array}\right)
\]
are independent (nullity is 0).
︡423e32c5-64ab-4bce-bccd-682ea8f2ea0e︡{"html":"<p><strong>Example:</strong> The polynomials $1,x,x^2,x^3$ are linearly independent in the vector space $\\mathbb{Q}[x]$ of\nall polynomials with rational coefficients.   (Proof: If $f(x) = a_1 + a_2 x + a_3 x^2 + a_4 x^3 =0$,\nthen $f(x)$ has infinitely many zeros, so $f=0$, so all $a_i=0$.)</p>\n\n<p><strong>Example:</strong> The set $1+x, x+x^2, 1+x^2$ is also linearly independent.  Without quite understanding what this means, notice that\n\\begin{align}\n1+x &\\leftrightarrow (1,1,0)\\\\\nx+x^2 & \\leftrightarrow (0,1,1)\\\\\n1+x^2 & \\leftrightarrow (1,0,1)\n\\end{align}\nand that the rows of the matrix\n\\[\n    \\left(\\begin{array}{rrr}\n    1 & 1 & 0 \\\\\n    0 & 1 & 1 \\\\\n    1 & 0 & 1\n    \\end{array}\\right)\n\\]\nare independent (nullity is 0).</p>\n"}︡
︠d23f649f-8590-47f8-82b7-f201eb67fef8i︠
%hide
%md
We just used the idea of **linear transformation** in a new way... from the vector space $\mathcal{P}_2$ of polynomials of degree at most 3 to $\mathbb{Q}^3$!
︡ab88c28c-d898-4126-bf58-c4672b101ad9︡{"html":"<p>We just used the idea of <strong>linear transformation</strong> in a new way&#8230; from the vector space $\\mathcal{P}_2$ of polynomials of degree at most 3 to $\\mathbb{Q}^3$!</p>\n"}︡
︠d0d4fc1b-48a8-4a33-b617-72e9d13e53adi︠
%hide
%md
## Linear Transformations
### Or, How to see relationships between different vector spaces

**Definition (Linear Transformation):** Let $V$ and $W$ be vector spaces over a field $F$.  A linear transformation $T:V\to W$ is a function such that for all $u,v \in V$ and $a,b\in F$, we have $T(au+bv) = a T(u) + b T(v)$.

**Example:** In the example above with $1+x, x+x^2, 1+x^2$ we used the linear transformation $\mathcal{P}_2 \to \mathbf{Q}^3$ defined by
$$
   T(a_2 x^2 + a_1 x + a_0) = (a_0, a_1, a_2).
$$

︡afa8984e-fe96-44d8-9120-127eb6479173︡{"html":"<h2>Linear Transformations</h2>\n\n<h3>Or, How to see relationships between different vector spaces</h3>\n\n<p><strong>Definition (Linear Transformation):</strong> Let $V$ and $W$ be vector spaces over a field $F$.  A linear transformation $T:V\\to W$ is a function such that for all $u,v \\in V$ and $a,b\\in F$, we have $T(au+bv) = a T(u) + b T(v)$.</p>\n\n<p><strong>Example:</strong> In the example above with $1+x, x+x^2, 1+x^2$ we used the linear transformation $\\mathcal{P}_2 \\to \\mathbf{Q}^3$ defined by\n$$\n   T(a_2 x^2 + a_1 x + a_0) = (a_0, a_1, a_2).\n$$</p>\n"}︡
︠a1beadf6-d8a9-488b-b8e2-b139f388299ai︠
%hide
%md

**Example:** We will show that $1, \sin^2(x), \sin(x)\cos(x)$ are linearly independent.

Let $V$ be the vector space of all functions $f:\mathbb{R} \to \mathbb{R}$.  Define a linear transformation $T:V\to \mathbb{R}^3$ by
\[
   T(f) = (f(0), f(\pi/2), f(\pi/4)).
\]
Above we wondered if ${\rm span}(1, \sin^2(x), \sin(x)\cos(x))$ could be written as a span of a smaller set.  Notice that
\begin{align*}
  T(1) &= (1, 1, 1)\\
  T(\sin^2(x)) &= (0, 1, 1/2)\\
  T(\sin(x)\cos(x)) &= (0, 0, 1/2)
\end{align*}

If $1, \sin^2(x), \sin(x)\cos(x)$ are linearly dependent, then there's $c_1, c_2, c_3 \in \mathbb{R}$ not all $0$ with
$$
  c_1 \cdot 1 + c_2 \cdot \sin^2(x) + c_3 \cdot \sin(x) \cos(x) = 0.
$$
Applying $T$ to both sides of the above, we see that
$$
 c_1 \cdot (1,1,1) + c_2 \cdot (0,1,1/2) + c_3 (0,0,1/2) = T(0) = 0,
$$
which is impossible, since the matrix
\[
\left(\begin{array}{rrr}
1 & 1 & 1 \\
0 & 1 & \frac{1}{2} \\
0 & 0 & \frac{1}{2}
\end{array}\right)
\]
has nonzero determinant $1/2$.


I hope you also think the above proof that $1, \sin^2(x), \sin(x)\cos(x)$ are linearly independent is AWESOME.


︡6b15ff96-2fed-4267-8ecb-a268dff8b772︡{"html":"<p><strong>Example:</strong> We will show that $1, \\sin^2(x), \\sin(x)\\cos(x)$ are linearly independent.</p>\n\n<p>Let $V$ be the vector space of all functions $f:\\mathbb{R} \\to \\mathbb{R}$.  Define a linear transformation $T:V\\to \\mathbb{R}^3$ by\n\\[\n   T(f) = (f(0), f(\\pi/2), f(\\pi/4)).\n\\]\nAbove we wondered if ${\\rm span}(1, \\sin^2(x), \\sin(x)\\cos(x))$ could be written as a span of a smaller set.  Notice that\n\\begin{align*}\n  T(1) &= (1, 1, 1)\\\\\n  T(\\sin^2(x)) &= (0, 1, 1/2)\\\\\n  T(\\sin(x)\\cos(x)) &= (0, 0, 1/2)\n\\end{align*}</p>\n\n<p>If $1, \\sin^2(x), \\sin(x)\\cos(x)$ are linearly dependent, then there&#8217;s $c_1, c_2, c_3 \\in \\mathbb{R}$ not all $0$ with\n$$\n  c_1 \\cdot 1 + c_2 \\cdot \\sin^2(x) + c_3 \\cdot \\sin(x) \\cos(x) = 0.\n$$\nApplying $T$ to both sides of the above, we see that\n$$\n c_1 \\cdot (1,1,1) + c_2 \\cdot (0,1,1/2) + c_3 (0,0,1/2) = T(0) = 0,\n$$\nwhich is impossible, since the matrix\n\\[\n\\left(\\begin{array}{rrr}\n1 & 1 & 1 \\\\\n0 & 1 & \\frac{1}{2} \\\\\n0 & 0 & \\frac{1}{2}\n\\end{array}\\right)\n\\]\nhas nonzero determinant $1/2$.</p>\n\n<p>I hope you also think the above proof that $1, \\sin^2(x), \\sin(x)\\cos(x)$ are linearly independent is AWESOME.</p>\n"}︡
︠e7272411-22c4-4dcb-8f17-fb37e1d9446f︠
sin(pi/4), cos(pi/4)
︡1a02c1be-3d98-40a0-8b0f-7a0a73c916e8︡{"stdout":"(1/2*sqrt(2), 1/2*sqrt(2))\n"}︡
︠e0b9e4e4-bce5-4ace-a4f2-4ad709ca4126i︠
%hide
%md

## Dimension

**Definition (Dimension):** The **dimension** of a vector space $V$ is the cardinality of any linearly independent set $v_1,\ldots, v_n$ of vectors that span $V$, i.e.,  such that $V  ={\rm span}(v_1, \ldots, v_n)$.  If there is no finite set of vectors that span $V$, we say that $V$ is **infinite dimensional**.


**Remark:** The area of mathematics that studies infinite dimensional vector spaces in depth is called **functional analysis**, and it involves many exciting sounding things, such as such as "Hilbert Spaces", "Banach Spaces", etc.
︡6c3711c1-1e57-49d7-81bd-1362d697527f︡{"html":"<h2>Dimension</h2>\n\n<p><strong>Definition (Dimension):</strong> The <strong>dimension</strong> of a vector space $V$ is the cardinality of any linearly independent set $v_1,\\ldots, v_n$ of vectors that span $V$, i.e.,  such that $V  ={\\rm span}(v_1, \\ldots, v_n)$.  If there is no finite set of vectors that span $V$, we say that $V$ is <strong>infinite dimensional</strong>.</p>\n\n<p><strong>Remark:</strong> The area of mathematics that studies infinite dimensional vector spaces in depth is called <strong>functional analysis</strong>, and it involves many exciting sounding things, such as such as &#8220;Hilbert Spaces&#8221;, &#8220;Banach Spaces&#8221;, etc.</p>\n"}︡
︠7ffaecc2-894f-4e61-9304-b18062906e91︠












