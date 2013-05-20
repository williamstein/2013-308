︠687c9a70-9397-49ac-af9a-dce24b952731i︠
%hide
%md
# Lecture 22: Vector Spaces

### May 20, 2013

#### Plan

 1. Start Screencast

 2. Questions; reminder: office hours & homework due Wednesday.

 3. Chapter 6 "Vector Spaces".
︡03fe06bc-6168-4a94-a8b2-c6c41c578013︡{"html":"<h1>Lecture 22: Vector Spaces</h1>\n\n<h3>May 20, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions; reminder: office hours &amp; homework due Wednesday.</p></li>\n<li><p>Chapter 6 &#8220;Vector Spaces&#8221;.</p></li>\n</ol>\n"}︡
︠a9d01fd9-5dd9-467c-9a92-2eeb2ce1cf6b︠

︠d4a98e5f-0ffb-4687-adbc-6466f854dbd9i︠

%md

## Definition: Vector Space

**Definition (Vector Space):** A **vector space** over a field $F$ is a  set $V$ with $+:V\times V \to V$ and $\times : F\times V \to V$ such that the following axioms hold for all $u,v,w\in V$ and $a,b\in F$:

- *Commutativity*: $u+v = v+u$
- *Identity element for vector addition*: there's $0 \in V$ with $0+u=u$
- *Identity element for scalar multiplication*: $1 \cdot u= u$
- *Inverse for vector addition*: There's $-u\in V$ with $(-u) + u=0$
- *Associativity of vector addition*: $(u+v)+w = u+(v+w)$
- *Associativity of scalar multiplication*: $a\cdot (b\cdot u) = (a\cdot b) \cdot u$
- *Distributivity over vector addition*: We have $a\cdot (u+v) = a\cdot u + a\cdot v$
- *Distributivity over scalar multiplication*: We have $(a+b)\cdot u = a\cdot u + b\cdot u$

(Note: A **module** is the analogue of a vector space, but over a ring instead of a field.  We will not consider modules further in this course.)
︡24150aaf-559a-4934-84da-18164cbb758c︡{"html":"<h2>Definition: Vector Space</h2>\n\n<p><strong>Definition (Vector Space):</strong> A <strong>vector space</strong> over a field $F$ is a  set $V$ with $+:V\\times V \\to V$ and $\\times : F\\times V \\to V$ such that the following axioms hold for all $u,v,w\\in V$ and $a,b\\in F$:</p>\n\n<ul>\n<li><em>Commutativity</em>: $u+v = v+u$</li>\n<li><em>Identity element for vector addition</em>: there&#8217;s $0 \\in V$ with $0+u=u$</li>\n<li><em>Identity element for scalar multiplication</em>: $1 \\cdot u= u$</li>\n<li><em>Inverse for vector addition</em>: There&#8217;s $-u\\in V$ with $(-u) + u=0$</li>\n<li><em>Associativity of vector addition</em>: $(u+v)+w = u+(v+w)$</li>\n<li><em>Associativity of scalar multiplication</em>: $a\\cdot (b\\cdot u) = (a\\cdot b) \\cdot u$</li>\n<li><em>Distributivity over vector addition</em>: We have $a\\cdot (u+v) = a\\cdot u + a\\cdot v$</li>\n<li><em>Distributivity over scalar multiplication</em>: We have $(a+b)\\cdot u = a\\cdot u + b\\cdot u$</li>\n</ul>\n\n<p>(Note: A <strong>module</strong> is the analogue of a vector space, but over a ring instead of a field.  We will not consider modules further in this course.)</p>\n"}︡
︠84d44855-e856-41f2-84c2-cec988e4ccebi︠
%md

### Examples: These are vector spaces

- The set $\mathbb{R}^n$ of $n$-tuples for real numbers, which we've been studying all this time.

- More generally, for any field $F$ and $n\geq 1$, the set $F^n$ is a vector space.

- Any subspace of $F^n$ is a vector space.

- For any integers $n,m\geq 1$ and field $F$, the set ${\rm Mat}_{n,m}(F)$ of $n\times m$ matrices with coefficients in $F$ is a vector space.

- The set of polynomials (over a field $F$) is a vector space.

- The set of polynomials (over a field $F$) of degree at most $n$ is a vector space.

- The set of all real-valued functions $f:\mathbb{R} \to \mathbb{R}$ is a vector space.

- The set of (twice differentiable) functions $f:\mathbb{R}\to\mathbb{R}$ that solve the differential equation $f''+f=0$ is a vector space.
︡3dfc6e5f-baed-4de5-b4ca-89e91e5fb4d1︡{"html":"<h3>Examples: These are vector spaces</h3>\n\n<ul>\n<li><p>The set $\\mathbb{R}^n$ of $n$-tuples for real numbers, which we&#8217;ve been studying all this time.</p></li>\n<li><p>More generally, for any field $F$ and $n\\geq 1$, the set $F^n$ is a vector space.</p></li>\n<li><p>Any subspace of $F^n$ is a vector space.</p></li>\n<li><p>For any integers $n,m\\geq 1$ and field $F$, the set ${\\rm Mat}_{n,m}(F)$ of $n\\times m$ matrices with coefficients in $F$ is a vector space.</p></li>\n<li><p>The set of polynomials (over a field $F$) is a vector space.</p></li>\n<li><p>The set of polynomials (over a field $F$) of degree at most $n$ is a vector space.</p></li>\n<li><p>The set of all real-valued functions $f:\\mathbb{R} \\to \\mathbb{R}$ is a vector space.</p></li>\n<li><p>The set of (twice differentiable) functions $f:\\mathbb{R}\\to\\mathbb{R}$ that solve the differential equation $f&#8217;&#8217;+f=0$ is a vector space.</p></li>\n</ul>\n"}︡
︠9f787918-12d4-43f8-a34d-a33ee4e62a1di︠
%md

### Examples: These are NOT vector space.

- The set $\mathbb{Z}^n$ of $n$-tuples of integers is *not* a vector space over $\mathbb{Q}$.

- For any integer $n\geq 1$, the set ${\rm GL}_n(F)$ of invertible matrices is *not* a vector space (it's something called a "group").

- Let $F$ be a field.  Any subset of $F^n$ that is not a subspace is also not a vector space.

︡732d15a6-f59c-4c10-88b2-8dadd9b31e7a︡{"html":"<h3>Examples: These are NOT vector space.</h3>\n\n<ul>\n<li><p>The set $\\mathbb{Z}^n$ of $n$-tuples of integers is <em>not</em> a vector space over $\\mathbb{Q}$.</p></li>\n<li><p>For any integer $n\\geq 1$, the set ${\\rm GL}_n(F)$ of invertible matrices is <em>not</em> a vector space (it&#8217;s something called a &#8220;group\").</p></li>\n<li><p>Let $F$ be a field.  Any subset of $F^n$ that is not a subspace is also not a vector space.</p></li>\n</ul>\n"}︡
︠b7739f73-ebff-49cc-bd05-3583d1d11d16i︠

%hide
%md
## Subspaces

The following definition generalizes the idea of "subspace of $\mathbb{R}^n$ from before.

**Definition (Subspace):** A subspace of a vector space $V$ is a subset $W$ that is itself a vector space (with the same operations of addition and scalar multiplication).

In other words, a nonempty subset $W \subset V$ is a subspace of whenever $u,v\in W$ and $a,b$ are scalars, we have $au+bv\in W$.

### Try it out!

<div class="pull-right" style="font-size:36pt"><i class="icon-gamepad"></i></div>

For every vector space we listed above, give an example of a subset that is a subspace, and a subset that is not a subspace.


︡b21b0674-79fa-4658-aad8-c4b505a0ce56︡{"html":"<h2>Subspaces</h2>\n\n<p>The following definition generalizes the idea of &#8220;subspace of $\\mathbb{R}^n$ from before.</p>\n\n<p><strong>Definition (Subspace):</strong> A subspace of a vector space $V$ is a subset $W$ that is itself a vector space (with the same operations of addition and scalar multiplication).</p>\n\n<p>In other words, a nonempty subset $W \\subset V$ is a subspace of whenever $u,v\\in W$ and $a,b$ are scalars, we have $au+bv\\in W$.</p>\n\n<h3>Try it out!</h3>\n\n<div class=\"pull-right\" style=\"font-size:36pt\"><i class=\"icon-gamepad\"></i></div>\n\n<p>For every vector space we listed above, give an example of a subset that is a subspace, and a subset that is not a subspace.</p>\n"}︡
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
︠17d21db9-d406-430b-88a5-1cfe5ff60383i︠
%hide
%md
## Linear Independence

**Definition (Linearly Independent):** Vectors $v_1,\ldots, v_n$ are linearly independent if there is no way to find
$a_1,\ldots, a_n\in F$ (not all 0) with $a_1v_1 + \cdots + a_nv_n=0$.    Linearly dependent if you can find
such scalars.

Note: linearly independent means there is no way to write one $v_i$ in terms of the others.

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
︡590400f6-58c9-4c8f-91d9-fbfc82a5f72a︡{"html":"<h2>Linear Independence</h2>\n\n<p><strong>Definition (Linearly Independent):</strong> Vectors $v_1,\\ldots, v_n$ are linearly independent if there is no way to find\n$a_1,\\ldots, a_n\\in F$ (not all 0) with $a_1v_1 + \\cdots + a_nv_n=0$.    Linearly dependent if you can find\nsuch scalars.</p>\n\n<p>Note: linearly independent means there is no way to write one $v_i$ in terms of the others.</p>\n\n<p><strong>Example:</strong> The polynomials $1,x,x^2,x^3$ are linearly independent in the vector space $\\mathbb{Q}[x]$ of\nall polynomials with rational coefficients.   (Proof: If $f(x) = a_1 + a_2 x + a_3 x^2 + a_4 x^3 =0$,\nthen $f(x)$ has infinitely many zeros, so $f=0$, so all $a_i=0$.)</p>\n\n<p><strong>Example:</strong> The set $1+x, x+x^2, 1+x^2$ is also linearly independent.  Without quite understanding what this means, notice that\n\\begin{align}\n1+x &\\leftrightarrow (1,1,0)\\\\\nx+x^2 & \\leftrightarrow (0,1,1)\\\\\n1+x^2 & \\leftrightarrow (1,0,1)\n\\end{align}\nand that the rows of the matrix\n\\[\n    \\left(\\begin{array}{rrr}\n    1 & 1 & 0 \\\\\n    0 & 1 & 1 \\\\\n    1 & 0 & 1\n    \\end{array}\\right)\n\\]\nare independent (nullity is 0).</p>\n"}︡
︠d23f649f-8590-47f8-82b7-f201eb67fef8i︠
%hide
%md
We just used the idea of **linear transformation** in a new way... from the vector space $\mathcal{P}_3$ of polynomials of degree at most 3 to $\mathbb{Q}^3$!
︡aa692ff2-5430-4b56-bb3b-3b68dab7f883︡{"html":"<p>We just used the idea of <strong>linear transformation</strong> in a new way&#8230; from the vector space $\\mathcal{P}_3$ of polynomials of degree at most 3 to $\\mathbb{Q}^3$!</p>\n"}︡
︠d0d4fc1b-48a8-4a33-b617-72e9d13e53ad︠





