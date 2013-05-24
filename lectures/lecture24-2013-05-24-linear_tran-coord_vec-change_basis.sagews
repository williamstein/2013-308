︠687c9a70-9397-49ac-af9a-dce24b952731i︠
%hide
%md
# Lecture 24:
### Linear Transformations, Coordinate Vectors, Change of Basis

### May 24, 2013

#### Plan

 1. Start Screencast

 2. Questions

 3. Homework: Due tonight at 11:59pm

 4. Linear transformations and friends.


︡5eeff60e-5e8f-4bcf-8505-a28f3f951084︡{"html":"<h1>Lecture 24:</h1>\n\n<h3>Linear Transformations, Coordinate Vectors, Change of Basis</h3>\n\n<h3>May 24, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework: Due tonight at 11:59pm</p></li>\n<li><p>Linear transformations and friends.</p></li>\n</ol>\n"}︡
︠d0d4fc1b-48a8-4a33-b617-72e9d13e53adi︠
%hide
%md
## Linear Transformations: relationships between different vector spaces

**Definition (Linear Transformation):** Let $V$ and $W$ be vector spaces over a field $F$.  A linear transformation $T:V\to W$ is a function such that for all $u,v \in V$ and $a,b\in F$, we have $T(au+bv) = a T(u) + b T(v)$.

**Example:** In the example above with $1+x, x+x^2, 1+x^2$ we used the linear transformation $\mathcal{P}_2 \to \mathbf{Q}^3$ defined by
$$
   T(a_2 x^2 + a_1 x + a_0) = (a_0, a_1, a_2).
$$

︡c1d852ec-db31-4021-a6c3-5a5b6a3747a7︡{"html":"<h2>Linear Transformations: relationships between different vector spaces</h2>\n\n<p><strong>Definition (Linear Transformation):</strong> Let $V$ and $W$ be vector spaces over a field $F$.  A linear transformation $T:V\\to W$ is a function such that for all $u,v \\in V$ and $a,b\\in F$, we have $T(au+bv) = a T(u) + b T(v)$.</p>\n\n<p><strong>Example:</strong> In the example above with $1+x, x+x^2, 1+x^2$ we used the linear transformation $\\mathcal{P}_2 \\to \\mathbf{Q}^3$ defined by\n$$\n   T(a_2 x^2 + a_1 x + a_0) = (a_0, a_1, a_2).\n$$</p>\n"}︡
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
︠6db4bcfd-34e0-4ac8-b978-2ee2d1e9753d︠
%hide
%md



