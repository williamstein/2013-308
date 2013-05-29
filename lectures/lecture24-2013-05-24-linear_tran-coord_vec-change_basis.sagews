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


︡73e3254c-09f2-42f5-94eb-394463087118︡{"html":"<h1>Lecture 24:</h1>\n\n<h3>Linear Transformations, Coordinate Vectors, Change of Basis</h3>\n\n<h3>May 24, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework: Due tonight at 11:59pm</p></li>\n<li><p>Linear transformations and friends.</p></li>\n</ol>\n"}︡
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


︡3e68897c-f48f-48ae-bbb7-c743bdb798cc︡{"html":"<p><strong>Example:</strong> We will show that $1, \\sin^2(x), \\sin(x)\\cos(x)$ are linearly independent.</p>\n\n<p>Let $V$ be the vector space of all functions $f:\\mathbb{R} \\to \\mathbb{R}$.  Define a linear transformation $T:V\\to \\mathbb{R}^3$ by\n\\[\n   T(f) = (f(0), f(\\pi/2), f(\\pi/4)).\n\\]\nAbove we wondered if ${\\rm span}(1, \\sin^2(x), \\sin(x)\\cos(x))$ could be written as a span of a smaller set.  Notice that\n\\begin{align*}\n  T(1) &= (1, 1, 1)\\\\\n  T(\\sin^2(x)) &= (0, 1, 1/2)\\\\\n  T(\\sin(x)\\cos(x)) &= (0, 0, 1/2)\n\\end{align*}</p>\n\n<p>If $1, \\sin^2(x), \\sin(x)\\cos(x)$ are linearly dependent, then there&#8217;s $c_1, c_2, c_3 \\in \\mathbb{R}$ not all $0$ with\n$$\n  c_1 \\cdot 1 + c_2 \\cdot \\sin^2(x) + c_3 \\cdot \\sin(x) \\cos(x) = 0.\n$$\nApplying $T$ to both sides of the above, we see that\n$$\n c_1 \\cdot (1,1,1) + c_2 \\cdot (0,1,1/2) + c_3 (0,0,1/2) = T(0) = 0,\n$$\nwhich is impossible, since the matrix\n\\[\n\\left(\\begin{array}{rrr}\n1 & 1 & 1 \\\\\n0 & 1 & \\frac{1}{2} \\\\\n0 & 0 & \\frac{1}{2}\n\\end{array}\\right)\n\\]\nhas nonzero determinant $1/2$.</p>\n"}︡
︠6db4bcfd-34e0-4ac8-b978-2ee2d1e9753di︠
%hide
%md

This is what "abstract algebra" is like.  Using mathematical objects (defined by a list of properties), you prove statements like the following, which we used above:

**Proposition:** *Suppose $T:V \to W$ is a linear transformation of vector spaces over a field $F$, that $v_1, \ldots, v_n \in V$, and $T(v_1), \ldots T(v_n)$ are linearly independent. Then $v_1\ldots, v_n$ are also linearly independent.*

**Proof.** Suppose $c_1,\ldots, c_n \in F$ are such that $c_1 v_1 + \cdots + c_n v_n = 0$.  Applying $T$ to
both sides of this equation shows that
$$0 = T(0) = T(c_1 v_1 + \cdots + c_n v_n) = c_1 T(v_1) + \cdots + c_n T(v_n).$$
Our hypothesis that $T(v_1), \ldots, T(v_n)$ are linearly independent implies that $c_1 = c_2 = \cdots = c_n=0$.
We conclude that $v_1, \ldots, v_n$ must be linearly independent.
︡b5860fa1-5710-4cf1-899c-1885cb62d06a︡{"html":"<p>This is what &#8220;abstract algebra&#8221; is like.  Using mathematical objects (defined by a list of properties), you prove statements like the following, which we used above:</p>\n\n<p><strong>Proposition:</strong> <em>Suppose $T:V \\to W$ is a linear transformation of vector spaces over a field $F$, that $v_1, \\ldots, v_n \\in V$, and $T(v_1), \\ldots T(v_n)$ are linearly independent. Then $v_1\\ldots, v_n$ are also linearly independent.</em></p>\n\n<p><strong>Proof.</strong> Suppose $c_1,\\ldots, c_n \\in F$ are such that $c_1 v_1 + \\cdots + c_n v_n = 0$.  Applying $T$ to\nboth sides of this equation shows that\n$$0 = T(0) = T(c_1 v_1 + \\cdots + c_n v_n) = c_1 T(v_1) + \\cdots + c_n T(v_n).$$\nOur hypothesis that $T(v_1), \\ldots, T(v_n)$ are linearly independent implies that $c_1 = c_2 = \\cdots = c_n=0$.\nWe conclude that $v_1, \\ldots, v_n$ must be linearly independent.</p>\n"}︡
︠a3644615-92e0-4650-82b1-d497211d6516i︠
%hide
%md

**Definition:** The **kernel** of $T:V\to W$ is the subspace ${\rm ker}(T) = \{v \in V : T(v) = 0\}$.

**Proposition:** Suppose $T:V\to W$ is a linear transformation and ${\rm ker}(T)=0$.   Then $v_1,\ldots,v_n$ are linearly independent if and only if $T(v_1),\ldots, T(v_n)$ are linearly independent.

**Proof.** We already proved $(\leftarrow)$ above (without even needing that ${\rm ker}(T)=0$).  Thus assume  that $v_1,\ldots, v_n$
are linearly independent.  If  $c_1,\ldots, c_n \in F$ are such that $c_1 T(v_1) + \cdots + c_n T(v_n) = 0$,
then $T(c_1 v_1 + \cdots + c_n v_n) = 0$, so by our assumption on ${\rm ker}(T)$, we have $c_1 v_1 + \cdots + c_n v_n = 0$,
hence $c_1=\cdots = c_n=0$, as required.


︡e4985dd3-546d-480c-8085-72f0c7dbd3c0︡{"html":"<p><strong>Definition:</strong> The <strong>kernel</strong> of $T:V\\to W$ is the subspace ${\\rm ker}(T) = \\{v \\in V : T(v) = 0\\}$.</p>\n\n<p><strong>Proposition:</strong> Suppose $T:V\\to W$ is a linear transformation and ${\\rm ker}(T)=0$.   Then $v_1,\\ldots,v_n$ are linearly independent if and only if $T(v_1),\\ldots, T(v_n)$ are linearly independent.</p>\n\n<p><strong>Proof.</strong> We already proved $(\\leftarrow)$ above (without even needing that ${\\rm ker}(T)=0$).  Thus assume  that $v_1,\\ldots, v_n$\nare linearly independent.  If  $c_1,\\ldots, c_n \\in F$ are such that $c_1 T(v_1) + \\cdots + c_n T(v_n) = 0$,\nthen $T(c_1 v_1 + \\cdots + c_n v_n) = 0$, so by our assumption on ${\\rm ker}(T)$, we have $c_1 v_1 + \\cdots + c_n v_n = 0$,\nhence $c_1=\\cdots = c_n=0$, as required.</p>\n"}︡
︠c116dcf4-051c-434c-aa44-23d052dc6845i︠
%hide
%md
## Basis and Dimension

**Definition (Basis):** A **basis** for a vector space $V$ is a set $B$ of linearly independent vectors that span $V$.

**Definition (Dimension):** The **dimension** of a vector space $V$ is the cardinality of any basis for $V$ (the dimension can be $\infty$).
︡a3718ec2-b304-42eb-aa2c-cdce190f41e1︡{"html":"<h2>Basis and Dimension</h2>\n\n<p><strong>Definition (Basis):</strong> A <strong>basis</strong> for a vector space $V$ is a set $B$ of linearly independent vectors that span $V$.</p>\n\n<p><strong>Definition (Dimension):</strong> The <strong>dimension</strong> of a vector space $V$ is the cardinality of any basis for $V$ (the dimension can be $\\infty$).</p>\n"}︡
︠c387ce78-517c-41a7-9beb-0829bcf7fd32i︠
%hide
%md

### Questions:

- Give a basis for $\mathbb{R}^n$?

- Give a basis for the vector space $\mathcal{P}_{n}$ of polynomials of degree at most $n$.

- What is the dimension of $\mathbb{R}^n$?

- What is the dimension of $\mathcal{P}_n$?

- What is the dimension of the vector space $\mathcal{P}$ of all polynomials?

- What is the dimension of the span of $1, \sin^2(x), \sin(x)\cos(x)$?

- What is the dimension of the space of all functions $\mathbb{R}\to \mathbb{R}$?
︡f4aec384-abfb-4734-80c5-cf431abf6662︡{"html":"<h3>Questions:</h3>\n\n<ul>\n<li><p>Give a basis for $\\mathbb{R}^n$?</p></li>\n<li><p>Give a basis for the vector space $\\mathcal{P}_{n}$ of polynomials of degree at most $n$.</p></li>\n<li><p>What is the dimension of $\\mathbb{R}^n$?</p></li>\n<li><p>What is the dimension of $\\mathcal{P}_n$?</p></li>\n<li><p>What is the dimension of the vector space $\\mathcal{P}$ of all polynomials?</p></li>\n<li><p>What is the dimension of the span of $1, \\sin^2(x), \\sin(x)\\cos(x)$?</p></li>\n<li><p>What is the dimension of the space of all functions $\\mathbb{R}\\to \\mathbb{R}$?</p></li>\n</ul>\n"}︡
︠f2c7f393-0772-4fd3-b051-002faef052d6i︠
%hide
%md

## The Matrix of a Linear Transformation

**DANGER:** <span style="color:red">The following may look easy but it gets surprisingly confusing!</span>


Suppose $V$ is a vector space with basis $B=\{b_1,\ldots, b_n\}$.
For any  $v\in V$, there are unique numbers $s_1,\ldots, s_n \in F$ such that $v = s_1 b_1 + \cdots s_n b_n$.

**Definition (coordinate vector):** The coordinate vector of $v$ is the vector $[v]_B = (s_1,\ldots, s_n) \in F^n$.


Let $T:V\to W$ be a linear transformation of finite dimensional vector spaces over a field $F$.
Suppose $B$ is a basis for $V$ and $C$ is a basis for $W$.

**Definition (matrix of a linear transformation):** The matrix of $T$ with respect to the bases $B$ and $C$ is
\[
    [T]_{B,C} = \{\text{ matrix whose $i$th column is }[T(b_i)]_C \}.
\]


For $v\in V$ we have
$$
    [T(v)]_C = [T]_{B,C} \cdot [v]_B,
$$
i.e., again every linear transformation (of finite dimensional vector spaces) can be described by a matrix!
Unfortunately, you *have* to choose a basis in order to do this, and there are a lot of ways to choose a basis
for a vector space, which can be confusing.
︡97eaba81-5baf-4c29-adca-47871e4ffa66︡{"html":"<h2>The Matrix of a Linear Transformation</h2>\n\n<p><strong>DANGER:</strong> <span style=\"color:red\">The following may look easy but it gets surprisingly confusing!</span></p>\n\n<p>Suppose $V$ is a vector space with basis $B=\\{b_1,\\ldots, b_n\\}$.\nFor any  $v\\in V$, there are unique numbers $s_1,\\ldots, s_n \\in F$ such that $v = s_1 b_1 + \\cdots s_n b_n$.</p>\n\n<p><strong>Definition (coordinate vector):</strong> The coordinate vector of $v$ is the vector $[v]_B = (s_1,\\ldots, s_n) \\in F^n$.</p>\n\n<p>Let $T:V\\to W$ be a linear transformation of finite dimensional vector spaces over a field $F$.\nSuppose $B$ is a basis for $V$ and $C$ is a basis for $W$.</p>\n\n<p><strong>Definition (matrix of a linear transformation):</strong> The matrix of $T$ with respect to the bases $B$ and $C$ is\n\\[\n    [T]_{B,C} = \\{\\text{ matrix whose $i$th column is }[T(b_i)]_C \\}.\n\\]</p>\n\n<p>For $v\\in V$ we have\n$$\n    [T(v)]_C = [T]_{B,C} \\cdot [v]_B,\n$$\ni.e., again every linear transformation (of finite dimensional vector spaces) can be described by a matrix!\nUnfortunately, you <em>have</em> to choose a basis in order to do this, and there are a lot of ways to choose a basis\nfor a vector space, which can be confusing.</p>\n"}︡
︠fc28fd8d-9989-40c5-b52f-659feca63f77i︠
%hide
%md

**Example:**

1. Compute the matrix of the linear transformation ${\rm span}(1, \sin^2(x), \sin(x)\cos(x)) \to \mathbb{R}^3$ that we used above.   (Answer: the transpose of the matrix we gave above.)

2. Test it out on some input.
 
︡91fdd86a-b806-4727-8eb9-e99923f07a82︡{"html":"<p><strong>Example:</strong></p>\n\n<ol>\n<li><p>Compute the matrix of the linear transformation ${\\rm span}(1, \\sin^2(x), \\sin(x)\\cos(x)) \\to \\mathbb{R}^3$ that we used above.   (Answer: the transpose of the matrix we gave above.)</p></li>\n<li><p>Test it out on some input.</p></li>\n</ol>\n"}︡
︠5415809e-a0c1-4662-985c-cf3ec31fa5e2︠














