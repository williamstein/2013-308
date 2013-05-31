︠82bd72da-7222-46e6-9ef3-c9f74adab498i︠
%hide
%md
# Lecture 25:
### Matrices of Linear Transformations and Change of Basis Matrices

### May 29, 2013

#### Plan

 1. Start Screencast

 2. Questions

 3. Homework: Due **friday** at 11:59pm

 4. Matrices of linear transformations and change of basis matrices
︡15e7dc8e-3cbe-495d-93d8-f52174d3e275︡{"html":"<h1>Lecture 25:</h1>\n\n<h3>Matrices of Linear Transformations and Change of Basis Matrices</h3>\n\n<h3>May 29, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework: Due <strong>friday</strong> at 11:59pm</p></li>\n<li><p>Matrices of linear transformations and change of basis matrices</p></li>\n</ol>\n"}︡
︠1ca4d9ed-edb2-47b8-b04a-31df9697be4bi︠
%hide
%md

## The Matrix of a Linear Transformation

Suppose $V$ is a vector space with basis $B=\{b_1,\ldots, b_n\}$.
For any  $v\in V$, there are unique numbers $s_1,\ldots, s_n \in F$ such that $v = s_1 b_1 + \cdots s_n b_n$.

**Definition (coordinate vector):** The coordinate vector of $v$ is the vector $[v]_B = (s_1,\ldots, s_n) \in F^n$.

Let $T:V\to W$ be a linear transformation of finite dimensional vector spaces over a field $F$.
Suppose $B$ is a basis for $V$ and $C$ is a basis for $W$.

**Definition (matrix of a linear transformation):** The matrix of $T$ with respect to the bases $B$ and $C$ is
\[
    [T]_{B,C} = \{\text{ matrix whose $i$th column is }[T(b_i)]_C \}.
\]

This is a matrix with entries in the base field $F$.


For $v\in V$ we have
$$
    [T(v)]_C = [T]_{B,C} \cdot [v]_B,
$$
︡0c5fa953-1747-4c5c-a5e7-937e55ca411b︡{"html":"<h2>The Matrix of a Linear Transformation</h2>\n\n<p>Suppose $V$ is a vector space with basis $B=\\{b_1,\\ldots, b_n\\}$.\nFor any  $v\\in V$, there are unique numbers $s_1,\\ldots, s_n \\in F$ such that $v = s_1 b_1 + \\cdots s_n b_n$.</p>\n\n<p><strong>Definition (coordinate vector):</strong> The coordinate vector of $v$ is the vector $[v]_B = (s_1,\\ldots, s_n) \\in F^n$.</p>\n\n<p>Let $T:V\\to W$ be a linear transformation of finite dimensional vector spaces over a field $F$.\nSuppose $B$ is a basis for $V$ and $C$ is a basis for $W$.</p>\n\n<p><strong>Definition (matrix of a linear transformation):</strong> The matrix of $T$ with respect to the bases $B$ and $C$ is\n\\[\n    [T]_{B,C} = \\{\\text{ matrix whose $i$th column is }[T(b_i)]_C \\}.\n\\]</p>\n\n<p>This is a matrix with entries in the base field $F$.</p>\n\n<p>For $v\\in V$ we have\n$$\n    [T(v)]_C = [T]_{B,C} \\cdot [v]_B,\n$$</p>\n"}︡
︠d5185225-2702-4f48-96ec-4de2b821c84ai︠
%hide
%md

### Rest of this lecture: examples and problems using this definition.

### Example 1: This generalizes our previous definition.

Let $V=\mathbb{R}^m$, $W=\mathbb{R}^n$, with the standard bases $B$ and $C$.  Then the matrix of any
linear transformation $T:V\to W$ is $[T]_{B,C}=$ the $n\times m$ matrix from before, i.e., matrix whose columns are
the images of the standard basis vectors of $V$.

**WHY?**  Because for the standard basis, $[v]_B = v$.
︡3d5eb420-0724-41ff-8071-db75aa596a2b︡{"html":"<h3>Rest of this lecture: examples and problems using this definition.</h3>\n\n<h3>Example 1: This generalizes our previous definition.</h3>\n\n<p>Let $V=\\mathbb{R}^m$, $W=\\mathbb{R}^n$, with the standard bases $B$ and $C$.  Then the matrix of any\nlinear transformation $T:V\\to W$ is $[T]_{B,C}=$ the $n\\times m$ matrix from before, i.e., matrix whose columns are\nthe images of the standard basis vectors of $V$.</p>\n\n<p><strong>WHY?</strong>  Because for the standard basis, $[v]_B = v$.</p>\n"}︡
︠854a0d4a-e640-4b34-9088-15fab18b11bai︠
%hide
%md
### Example 2: Easy but more general exam

 - $V =\mathcal{P}_{\leq 2} = $ polynomials of degree at most 2 over $\mathbb{R}$.
 - $B = \{1,x,x^2\}$, a choice of basis for $\mathcal{P}_{\leq 2}$.
 - $W = \mathbb{R}^3$ with the standard basis $C$
 - $T:V\to W$ given by $T(a+bx+cx^2) = (a,b,c)$.

**Solution:** We simply apply the definition and obtain a $3\times 3$ matrix whose
columns are the images of $1, x, x^2$ written in terms of the standard basis.
The result is easy to compute: the $3\times 3$ identity matrix
︡aceabb69-11f3-4788-8523-6e6b7dd2976a︡{"html":"<h3>Example 2: Easy but more general exam</h3>\n\n<ul>\n<li>$V =\\mathcal{P}_{\\leq 2} = $ polynomials of degree at most 2 over $\\mathbb{R}$.</li>\n<li>$B = \\{1,x,x^2\\}$, a choice of basis for $\\mathcal{P}_{\\leq 2}$.</li>\n<li>$W = \\mathbb{R}^3$ with the standard basis $C$</li>\n<li>$T:V\\to W$ given by $T(a+bx+cx^2) = (a,b,c)$.</li>\n</ul>\n\n<p><strong>Solution:</strong> We simply apply the definition and obtain a $3\\times 3$ matrix whose\ncolumns are the images of $1, x, x^2$ written in terms of the standard basis.\nThe result is easy to compute: the $3\\times 3$ identity matrix</p>\n"}︡
︠d1d87edc-0709-4637-8e15-4e1542dcdd6ci︠
%md
### Example 3: Same as example 2, but much less boring!

 - $V =\mathcal{P}_{\leq 2} = $ polynomials of degree at most 2 over $\mathbb{R}$.
 - $B = \{1+x,x,x^2+x\}$, a choice of basis for $\mathcal{P}_{\leq 2}$.
 - $W = \mathbb{R}^3$ with basis $C=\{(1,0,1),(0,1,2),(0,0,1)\}$
 - $T:V\to W$ given by $T(a+bx+cx^2) = (a-b,b-a,c)$.

**Solution:**

There is a *matrix* associated to $T$ -- what is it?!

1. Apply the linear transformation $T$ to each element of $B$:
\begin{align*}
  T(1+x) &= (0,0,0)\\
  T(x) &= (-1,1,0)\\
  T(x^2+x) &= (-1,1,1)\\
\end{align*}

2. Write each image vector in terms of our *choice* of basis $C$ for $W$. This step is potentially hard, since you have to solve to get $[?]_C$.
\begin{align*}
  [(0,0,0)]_C &= (0,0,0)\\
  [(-1,1,0)]_C &= (-1,1,-1)\\
  [(-1,1,1)]_C &= (-1,1,0)
\end{align*}

3. Done: the matrix $[T]_{B,C}$ is the matrix whose *columns* are the vectors $[T(b_i)]_C$, which we just computed.
\[
[T]_{B,C} = \left(\begin{array}{rrr}
0 & -1 & -1 \\
0 & 1 & 1 \\
0 & -1 & 0
\end{array}\right)
\]

︡029ad33e-6404-4095-93d7-6af8ea0dc2db︡{"html":"<h3>Example 3: Same as example 2, but much less boring!</h3>\n\n<ul>\n<li>$V =\\mathcal{P}_{\\leq 2} = $ polynomials of degree at most 2 over $\\mathbb{R}$.</li>\n<li>$B = \\{1+x,x,x^2+x\\}$, a choice of basis for $\\mathcal{P}_{\\leq 2}$.</li>\n<li>$W = \\mathbb{R}^3$ with basis $C=\\{(1,0,1),(0,1,2),(0,0,1)\\}$</li>\n<li>$T:V\\to W$ given by $T(a+bx+cx^2) = (a-b,b-a,c)$.</li>\n</ul>\n\n<p><strong>Solution:</strong></p>\n\n<p>There is a <em>matrix</em> associated to $T$ &#8211; what is it?!</p>\n\n<ol>\n<li><p>Apply the linear transformation $T$ to each element of $B$:\n\\begin{align*}\n  T(1+x) &= (0,0,0)\\\\\n  T(x) &= (-1,1,0)\\\\\n  T(x^2+x) &= (-1,1,1)\\\\\n\\end{align*}</p></li>\n<li><p>Write each image vector in terms of our <em>choice</em> of basis $C$ for $W$. This step is potentially hard, since you have to solve to get $[?]_C$.\n\\begin{align*}\n  [(0,0,0)]_C &= (0,0,0)\\\\\n  [(-1,1,0)]_C &= (-1,1,-1)\\\\\n  [(-1,1,1)]_C &= (-1,1,0)\n\\end{align*}</p></li>\n<li><p>Done: the matrix $[T]_{B,C}$ is the matrix whose <em>columns</em> are the vectors $[T(b_i)]_C$, which we just computed.\n\\[\n[T]_{B,C} = \\left(\\begin{array}{rrr}\n0 & -1 & -1 \\\\\n0 & 1 & 1 \\\\\n0 & -1 & 0\n\\end{array}\\right)\n\\]</p></li>\n</ol>\n"}︡
︠f600931e-c9f9-4ce1-971c-458f3b7cfd7ci︠
%md
### Example 4: Application: a *systematic* way to compute $\ker(T)$!

Let's compute $\ker(T)=\{f(x) \in \mathcal{P}_{\leq 2} : T(f)=0\}$,
where $T$ is from Example 3.

**Method 1:** We have  $T(a+bx+cx^2) = (a-b,b-a,c)=0$ if and only
if $a=b$ and $c=0$, so $\ker(T)$ is the subspace spanned by
$1+x$.

Instead, we can use the matrix of $T$, which is a much more systematic
approach that will work in the same way in total generality, whereas
the *ad hoc* approach above can get confusing.

**Method 2:** Find the nullspace of the matrix $[T]_{B,C}$.
The reduced row echelon form of $[T]_{B,C}$ is:
\[
\left(\begin{array}{rrr}
0 & 1 & 0 \\
0 & 0 & 1 \\
0 & 0 & 0
\end{array}\right)
\]
The nullspace of this matrix is spanned by $(1,0,0)$.
Finally, we have $[1+x]_B = (1,0,0)$, so $\ker(T)$ is spanned by $1+x$.
︡1976694b-5087-4d79-94fa-49f75938e76d︡{"html":"<h3>Example 4: Application: a <em>systematic</em> way to compute $\\ker(T)$!</h3>\n\n<p>Let&#8217;s compute $\\ker(T)=\\{f(x) \\in \\mathcal{P}_{\\leq 2} : T(f)=0\\}$,\nwhere $T$ is from Example 3.</p>\n\n<p><strong>Method 1:</strong> We have  $T(a+bx+cx^2) = (a-b,b-a,c)=0$ if and only\nif $a=b$ and $c=0$, so $\\ker(T)$ is the subspace spanned by\n$1+x$.</p>\n\n<p>Instead, we can use the matrix of $T$, which is a much more systematic\napproach that will work in the same way in total generality, whereas\nthe <em>ad hoc</em> approach above can get confusing.</p>\n\n<p><strong>Method 2:</strong> Find the nullspace of the matrix $[T]_{B,C}$.\nThe reduced row echelon form of $[T]_{B,C}$ is:\n\\[\n\\left(\\begin{array}{rrr}\n0 & 1 & 0 \\\\\n0 & 0 & 1 \\\\\n0 & 0 & 0\n\\end{array}\\right)\n\\]\nThe nullspace of this matrix is spanned by $(1,0,0)$.\nFinally, we have $[1+x]_B = (1,0,0)$, so $\\ker(T)$ is spanned by $1+x$.</p>\n"}︡
︠cc79ff72-2267-435b-bf1f-2c1cdaba0b2b︠
matrix(QQ,3,[0,-1,1, 0,1,1, 0,-1,0]).rref()
︡4275f4c4-ef52-409a-bf3c-2ade7215f7de︡{"stdout":"[0 1 0]\n[0 0 1]\n[0 0 0]\n"}︡
︠60b3d202-b920-4bad-965a-9f40e574a314i︠
%md

### Definition: Change of Basis Matrices

We finish by considering an important special case $V=W$.

- Let $V$ be any vector space with two bases $B$ and $C$.

- Let $T={\rm id}_V$ be the identity map, so $T(v) = v$.

**Definition (Change of Basis Matrix):** The change of basis matrix
from $B$ to $C$ is $[T]_{B,C}$.

This matrix is useful because if $v$ is a vector expressed as coordinates in terms
of the basis $B$, then multiply by $[T]_{B,C}$ gives $v$ but instead
expressed in terms of the basis $C$:

\[
   [T]_{B,C} [v]_B = [v]_C
\]

For example, in example 3 above we had to change basis from the standard basis to some other basis $C$.

**Experience**: the technique of changing from one set of coordinates
to another (i.e., changing basis) can often be used to "transform"
confusing and painful problems into easy problems.  It is one of the
main problem solving tricks in linear algebra.  I've used it thousands
of times when doing mathematics research.
︡01220944-32b8-4bc1-b3fe-1229ac04d8ce︡{"html":"<h3>Definition: Change of Basis Matrices</h3>\n\n<p>We finish by considering an important special case $V=W$.</p>\n\n<ul>\n<li><p>Let $V$ be any vector space with two bases $B$ and $C$.</p></li>\n<li><p>Let $T={\\rm id}_V$ be the identity map, so $T(v) = v$.</p></li>\n</ul>\n\n<p><strong>Definition (Change of Basis Matrix):</strong> The change of basis matrix\nfrom $B$ to $C$ is $[T]_{B,C}$.</p>\n\n<p>This matrix is useful because if $v$ is a vector expressed as coordinates in terms\nof the basis $B$, then multiply by $[T]_{B,C}$ gives $v$ but instead\nexpressed in terms of the basis $C$:</p>\n\n<p>\\[\n   [T]_{B,C} [v]_B = [v]_C\n\\]</p>\n\n<p>For example, in example 3 above we had to change basis from the standard basis to some other basis $C$.</p>\n\n<p><strong>Experience</strong>: the technique of changing from one set of coordinates\nto another (i.e., changing basis) can often be used to &#8220;transform&#8221;\nconfusing and painful problems into easy problems.  It is one of the\nmain problem solving tricks in linear algebra.  I&#8217;ve used it thousands\nof times when doing mathematics research.</p>\n"}︡
︠b6b3e7a8-6a03-4b25-aaec-a059118cdddfi︠
%md
### Example 5: Compute a change of basis matrix

- Let $V=\mathbb{R}^2$ and $T$ the identity map.

- Let $B$ be the basis $\{(1,1), (1,-1)\}$

- Let $C$ be the basis $\{(1,2), (3,1)\}$.

Compute the change of basis matrix $A=[T]_{B,C}$ from $B$ to $C$.  This will be a matrix such
that $A[v]_B = [v]_C$.  We just use the general approach above.

1. Apply $T$ to each element of the basis $B$.  This is easy, since $T$ is the identity map!

2. Write each $T(b)$ in terms of $C$:
$$
  [T((1,1))]_C = [(1,1)]_C = \text{wait, this is hard -- is there a trick?}
$$
︡b3bdf89c-12ff-46a6-94c4-2d5da6e280d1︡{"html":"<h3>Example 5: Compute a change of basis matrix</h3>\n\n<ul>\n<li><p>Let $V=\\mathbb{R}^2$ and $T$ the identity map.</p></li>\n<li><p>Let $B$ be the basis $\\{(1,1), (1,-1)\\}$</p></li>\n<li><p>Let $C$ be the basis $\\{(1,2), (3,1)\\}$.</p></li>\n</ul>\n\n<p>Compute the change of basis matrix $A=[T]_{B,C}$ from $B$ to $C$.  This will be a matrix such\nthat $A[v]_B = [v]_C$.  We just use the general approach above.</p>\n\n<ol>\n<li><p>Apply $T$ to each element of the basis $B$.  This is easy, since $T$ is the identity map!</p></li>\n<li><p>Write each $T(b)$ in terms of $C$:\n$$\n[T((1,1))]_C = [(1,1)]_C = \\text{wait, this is hard &#8211; is there a trick?}\n$$</p></li>\n</ol>\n"}︡
︠194fe730-b12b-4c18-9f21-ee32fbcedd1fi︠

%md
### Example 5: continued

To find $[(1,1)]_C$ is the same as solving the system
\[
\left(\begin{array}{rr}
1 & 3 \\
2 & 1
\end{array}\right) x =
\left(\begin{array}{rr}
1 \\
1
\end{array}\right)
\]

and similarly for $[(1,-1)]_C$.  Thus

\[
\left(\begin{array}{rr}
1 & 3 \\
2 & 1
\end{array}\right)
\cdot [T]_{B,C}
=
\left(\begin{array}{rr}
1 & 1\\
1 & -1
\end{array}\right)
\]

Conclusion:
\[
  [T]_{B,C} = [C]^{-1}[B] = \left(\begin{array}{rr}
\frac{2}{5} & -\frac{4}{5} \\
\frac{1}{5} & \frac{3}{5}
\end{array}\right)
\]
where we write $[B]$ and $[C]$ for the matrices with columns the
elements of the basis $B$ and $C$, respectively.
︡047e0641-8641-4adc-a90a-293c1d26b71e︡{"html":"<h3>Example 5: continued</h3>\n\n<p>To find $[(1,1)]_C$ is the same as solving the system\n\\[\n\\left(\\begin{array}{rr}\n1 & 3 \\\\\n2 & 1\n\\end{array}\\right) x =\n\\left(\\begin{array}{rr}\n1 \\\\\n1\n\\end{array}\\right)\n\\]</p>\n\n<p>and similarly for $[(1,-1)]_C$.  Thus</p>\n\n<p>\\[\n\\left(\\begin{array}{rr}\n1 & 3 \\\\\n2 & 1\n\\end{array}\\right)\n\\cdot [T]_{B,C}\n=\n\\left(\\begin{array}{rr}\n1 & 1\\\\\n1 & -1\n\\end{array}\\right)\n\\]</p>\n\n<p>Conclusion:\n\\[\n  [T]_{B,C} = [C]^{-1}[B] = \\left(\\begin{array}{rr}\n\\frac{2}{5} & -\\frac{4}{5} \\\\\n\\frac{1}{5} & \\frac{3}{5}\n\\end{array}\\right)\n\\]\nwhere we write $[B]$ and $[C]$ for the matrices with columns the\nelements of the basis $B$ and $C$, respectively.</p>\n"}︡
︠2f790f78-8309-4e24-b237-e2466982c900︠
C = matrix(QQ,2,[1,3,2,1])
B = matrix(QQ,2,[1,1,1,-1])
C^(-1) * B
︡2cac07fc-3746-4448-bbfe-e93596519526︡{"stdout":"[ 2/5 -4/5]\n[ 1/5  3/5]\n"}︡
︠28f554a6-86cd-4b84-8b92-54e0c23a626di︠
%hide
%md
### Closing teaser remark

Eigenvalues, Eigenvectors and diagonalization of matrices is really about
changing basis.  You convert a problem in which $[T]_{B,C}$ is some random
looking matrix into a problem where $[T]_{B',C'}$ is diagonal, hence easy.


︡2ccfd1a5-4047-4b04-a4e4-6a9ae6a4129d︡{"html":"<h3>Closing teaser remark</h3>\n\n<p>Eigenvalues, Eigenvectors and diagonalization of matrices is really about\nchanging basis.  You convert a problem in which $[T]_{B,C}$ is some random\nlooking matrix into a problem where $[T]_{B',C'}$ is diagonal, hence easy.</p>\n"}︡
︠c89a72f7-f330-4607-99fb-c97a546fd597︠




































