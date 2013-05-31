︠82bd72da-7222-46e6-9ef3-c9f74adab498i︠
%hide
%md
# Lecture 26:
### Change of Basis Matrices

### May 31, 2013

#### Plan

 1. Start Screencast

 2. Questions

 3. Homework:
  - Last online homework: Due **tonight** at 11:59pm
  - Handout final exam prep homework: due next Wednesday in class.

 4. Change of basis matrices
︡37465b7b-119f-4d99-8c7c-d656e3018db6︡{"html":"<h1>Lecture 26:</h1>\n\n<h3>Change of Basis Matrices</h3>\n\n<h3>May 31, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework: </p>\n\n<ul>\n<li>Last online homework: Due <strong>tonight</strong> at 11:59pm</li>\n<li>Handout final exam prep homework: due next Wednesday in class.</li>\n</ul></li>\n<li><p>Change of basis matrices</p></li>\n</ol>\n"}︡
︠da542389-8e91-41ea-a491-745e3ffe3667i︠
%hide
%md
**Definition (matrix of a linear transformation):** The matrix of $T$ with respect to the bases $B$ and $C$ is
\[
    [T]_{B,C} = \{\text{ matrix whose $i$th column is }[T(b_i)]_C \}.
\]


**Remark:**  In the book, this is denoted $[T]_{C \to B}$.
︡e37c75c0-610e-4b78-8a49-547347fe24f3︡{"html":"<p><strong>Definition (matrix of a linear transformation):</strong> The matrix of $T$ with respect to the bases $B$ and $C$ is\n\\[\n    [T]_{B,C} = \\{\\text{ matrix whose $i$th column is }[T(b_i)]_C \\}.\n\\]</p>\n\n<p><strong>Remark:</strong>  In the book, this is denoted $[T]_{C \\to B}$.</p>\n"}︡
︠ca5b3303-99e3-4035-a60f-d53d29785ee0i︠
%md
### Example: Computing a change of basis matrix

- Let $V=\mathbb{R}^2$ and $T$ the identity map.

- Let $B$ be the basis $\{(1,1), (1,-1)\}$

- Let $C$ be the basis $\{(1,2), (3,1)\}$.

Compute the change of basis matrix $A=[T]_{B,C}$ from $B$ to $C$.  This will be the matrix such
that $A[v]_B = [v]_C$.

** We just use the general approach from Wednesday: **

1. Apply $T$ to each element of the basis $B$.  This is easy, since $T$ is the identity map!

2. Write each $T(b)$ in terms of $C$:
$$
  [T((1,1))]_C = [(1,1)]_C = \text{wait, this is hard -- is there a trick?}
$$
︡df67c0fc-c0b6-497f-b2a3-49a040623f2b︡{"html":"<h3>Example: Computing a change of basis matrix</h3>\n\n<ul>\n<li><p>Let $V=\\mathbb{R}^2$ and $T$ the identity map.</p></li>\n<li><p>Let $B$ be the basis $\\{(1,1), (1,-1)\\}$</p></li>\n<li><p>Let $C$ be the basis $\\{(1,2), (3,1)\\}$.</p></li>\n</ul>\n\n<p>Compute the change of basis matrix $A=[T]_{B,C}$ from $B$ to $C$.  This will be the matrix such\nthat $A[v]_B = [v]_C$.</p>\n\n<p><em>* We just use the general approach from Wednesday: *</em></p>\n\n<ol>\n<li><p>Apply $T$ to each element of the basis $B$.  This is easy, since $T$ is the identity map!</p></li>\n<li><p>Write each $T(b)$ in terms of $C$:\n$$\n[T((1,1))]_C = [(1,1)]_C = \\text{wait, this is hard &#8211; is there a trick?}\n$$</p></li>\n</ol>\n"}︡
︠194fe730-b12b-4c18-9f21-ee32fbcedd1fi︠

%md
### Example (continued)

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
︡fc7a3565-8108-47dc-ab4c-979f218caeb7︡{"html":"<h3>Example (continued)</h3>\n\n<p>To find $[(1,1)]_C$ is the same as solving the system\n\\[\n\\left(\\begin{array}{rr}\n1 & 3 \\\\\n2 & 1\n\\end{array}\\right) x =\n\\left(\\begin{array}{rr}\n1 \\\\\n1\n\\end{array}\\right)\n\\]</p>\n\n<p>and similarly for $[(1,-1)]_C$.  Thus</p>\n\n<p>\\[\n\\left(\\begin{array}{rr}\n1 & 3 \\\\\n2 & 1\n\\end{array}\\right)\n\\cdot [T]_{B,C}\n=\n\\left(\\begin{array}{rr}\n1 & 1\\\\\n1 & -1\n\\end{array}\\right)\n\\]</p>\n\n<p>Conclusion:\n\\[\n  [T]_{B,C} = [C]^{-1}[B] = \\left(\\begin{array}{rr}\n\\frac{2}{5} & -\\frac{4}{5} \\\\\n\\frac{1}{5} & \\frac{3}{5}\n\\end{array}\\right)\n\\]\nwhere we write $[B]$ and $[C]$ for the matrices with columns the\nelements of the basis $B$ and $C$, respectively.</p>\n"}︡
︠2f790f78-8309-4e24-b237-e2466982c900︠
C = matrix(QQ,2,[1,3,2,1])
B = matrix(QQ,2,[1,1,1,-1])
C^(-1) * B
︡2cac07fc-3746-4448-bbfe-e93596519526︡{"stdout":"[ 2/5 -4/5]\n[ 1/5  3/5]\n"}︡
︠28f554a6-86cd-4b84-8b92-54e0c23a626di︠
%hide
%md
### Eigenvalues and Eigenvectors Revisited

Suppose $T:V\to V$.
Eigenvalues and eigenvectors provide a systematic way to find (if it exists!)
a basis $\mathcal{B}$ for $V$ such that $[T]_{\mathcal{B},\mathcal{B}}$ is diagonal.

### Example: Diagonalization

For concreteness, suppose $T:\mathbb{R}^2 \to \mathbb{R}^2$ is defined by left multiplication by
$A = {\left(\begin{array}{rr}
0 & 1 \\
2 & 1
\end{array}\right)}.$


**Problem:** Find a basis $\mathcal{B}$ for $\mathbb{R}^2$ such that $[T]_{\mathcal{B},\mathcal{B}}$ is a diagonal matrix.

**General Approach**

1. Compute the eigenvalues and eigenvectors of $A$ to find a diagonal matrix $D$ and a matrix $C$ (whose columns are eigenvectors of $A$) such that $A = CDC^{-1}$.  Let $\mathcal{B}$ be our basis of eigenvectors (the columns of $C$).

2. Observe that $C$ is the change of basis matrix from our basis $\mathcal{B}$ of eigenvectors to the standard basis.  Hence $C^{-1}$ is the change of basis matrix from the standard basis to our basis of eigenvectors.

3. We are interested in the composite:

    (change standard to eigen) --> (rescale eigenvectors via T) --> (eigen to standard)

This corresponds to
$$
    A = C D C^{-1}.
$$
In other words, writing $[T]_{\mathcal{B}, \mathcal{B}} = D$, and letting $\mathcal{E}$ denote the
standard basis, we have
$$
   A = [T]_{\mathcal{E},\mathcal{E}} = [{\rm id}]_{\mathcal{B}, \mathcal{E}} \cdot [T]_{\mathcal{B}, \mathcal{B}} \cdot [{\rm id}]_{\mathcal{E}, \mathcal{B}}
$$


︡bfc5e8f5-fba2-4bb2-b2f1-d7fc781cb689︡{"html":"<h3>Eigenvalues and Eigenvectors Revisited</h3>\n\n<p>Suppose $T:V\\to V$.\nEigenvalues and eigenvectors provide a systematic way to find (if it exists!)\na basis $\\mathcal{B}$ for $V$ such that $[T]_{\\mathcal{B},\\mathcal{B}}$ is diagonal.</p>\n\n<h3>Example: Diagonalization</h3>\n\n<p>For concreteness, suppose $T:\\mathbb{R}^2 \\to \\mathbb{R}^2$ is defined by left multiplication by\n$A = {\\left(\\begin{array}{rr}\n0 & 1 \\\\\n2 & 1\n\\end{array}\\right)}.$</p>\n\n<p><strong>Problem:</strong> Find a basis $\\mathcal{B}$ for $\\mathbb{R}^2$ such that $[T]_{\\mathcal{B},\\mathcal{B}}$ is a diagonal matrix.</p>\n\n<p><strong>General Approach</strong></p>\n\n<ol>\n<li><p>Compute the eigenvalues and eigenvectors of $A$ to find a diagonal matrix $D$ and a matrix $C$ (whose columns are eigenvectors of $A$) such that $A = CDC^{-1}$.  Let $\\mathcal{B}$ be our basis of eigenvectors (the columns of $C$).</p></li>\n<li><p>Observe that $C$ is the change of basis matrix from our basis $\\mathcal{B}$ of eigenvectors to the standard basis.  Hence $C^{-1}$ is the change of basis matrix from the standard basis to our basis of eigenvectors.</p></li>\n<li><p>We are interested in the composite:</p>\n\n<p>(change standard to eigen) &#8211;> (rescale eigenvectors via T) &#8211;> (eigen to standard)</p></li>\n</ol>\n\n<p>This corresponds to\n$$\n    A = C D C^{-1}.\n$$\nIn other words, writing $[T]_{\\mathcal{B}, \\mathcal{B}} = D$, and letting $\\mathcal{E}$ denote the\nstandard basis, we have\n$$\n   A = [T]_{\\mathcal{E},\\mathcal{E}} = [{\\rm id}]_{\\mathcal{B}, \\mathcal{E}} \\cdot [T]_{\\mathcal{B}, \\mathcal{B}} \\cdot [{\\rm id}]_{\\mathcal{E}, \\mathcal{B}}\n$$</p>\n"}︡
︠c89a72f7-f330-4607-99fb-c97a546fd597︠
# Numbers in this particular example.
A = matrix(2,[0,1,2,1])
show(A)
show(A.eigenvectors_right())
︡2ee3808a-2485-4df3-b7d9-8e955a878a46︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n0 & 1 \\\\\n2 & 1\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left[\\left(2, \\left[\\left(1,\\,2\\right)\\right], 1\\right), \\left(-1, \\left[\\left(1,\\,-1\\right)\\right], 1\\right)\\right]","display":true}}︡
︠494fc58e-b751-4911-9798-ab3a9a9340e8︠
C = matrix(2,[1,1, 2,-1]); D = diagonal_matrix([2,-1])
C * D * C^(-1)
︡0cc47f2e-3542-47e0-8443-a03c20ef186c︡{"stdout":"[0 1]\n[2 1]\n"}︡
︠5a1dad29-57ee-4376-8cf2-b9bdf892b107i︠
%md

### Example: Diagonalizing a linear transformation on polynomials

Let $V=\mathcal{P}_{\leq 2}$ be the vector space over $\mathbb{C}$ of polynomials of degree at most $2$ with coefficients in $\mathbb{C}$.

Let $T:V \to V$ be given by $T(c + bx + ax^2) = b + ax + cx^2$ be the linear transformation that
shifts the coefficients around.

1. Find the matrix of $T$ with respect to the basis $1,x,x^2$ of $V$.

2. Find a basis $\mathcal{B}$ for $V$ such that $[T]_{\mathcal{B},\mathcal{B}}$ is a diagonal matrix.

3. Consider the linear transformation $S(c + bx + ax^2) = a$. Is there a basis $\mathcal{C}$ for $V$ such
that $[S]_{\mathcal{C},\mathcal{C}}$ is diagonal?
︡3b7e93fa-1449-48e4-8ff1-727d955d5033︡{"html":"<h3>Example: Diagonalizing a linear transformation on polynomials</h3>\n\n<p>Let $V=\\mathcal{P}_{\\leq 2}$ be the vector space over $\\mathbb{C}$ of polynomials of degree at most $2$ with coefficients in $\\mathbb{C}$.</p>\n\n<p>Let $T:V \\to V$ be given by $T(c + bx + ax^2) = b + ax + cx^2$ be the linear transformation that\nshifts the coefficients around.</p>\n\n<ol>\n<li><p>Find the matrix of $T$ with respect to the basis $1,x,x^2$ of $V$.</p></li>\n<li><p>Find a basis $\\mathcal{B}$ for $V$ such that $[T]_{\\mathcal{B},\\mathcal{B}}$ is a diagonal matrix.</p></li>\n<li><p>Consider the linear transformation $S(c + bx + ax^2) = a$. Is there a basis $\\mathcal{C}$ for $V$ such\nthat $[S]_{\\mathcal{C},\\mathcal{C}}$ is diagonal?</p></li>\n</ol>\n"}︡
︠0e828777-8788-4f85-a78c-f22f22e14dffi︠
%md

1. The matrix of $T$ wrt $1,x,x^2$ is $A = {\left(\begin{array}{rrr}
0 & 1 & 0 \\
0 & 0 & 1 \\
1 & 0 & 0
\end{array}\right)}$

2. The characteristic polynomial of $A$ is
\[
\det(xI - A) =
{\left|\begin{array}{rrr}
x & -1 & 0 \\
0 & x & -1 \\
-1 & 0 & x
\end{array}\right|}
 = x^3 -1 = (x-1)(x^2+x+1).
 \]
The roots are $\lambda_1=1$ and $\lambda_2 = \frac{-1 + \sqrt{-3}}{2}$ and $\lambda_3 = \frac{-1 - \sqrt{-3}}{2}$.

- Note that $\lambda_2^2 = \lambda_3$ and $\lambda_3^2 = \lambda_2$ and $\lambda_2\lambda_3=1$.
- An eigenvector corresponding to $\lambda_1$ is $v_1=(1,1,1)$, which we get by computing the nullspace of $1-A$.
- An eigenvector corr. to $\lambda_2$ is $v_2=(1,\lambda_2,\lambda_3)$.
- An eigenvector corr. to $\lambda_3$ is $v_3=(1,\lambda_3,\lambda_2)$.
- Thus we take $\mathcal{B} = (v_1, v_2, v_3)$, and then $[T]_{\mathcal{B}}$ is the diagonal matrix with diag entries $1,\lambda_2, \lambda_3$.

3. The matrix of $S$ wrt $1,x,x^2$ is
${A = \left(\begin{array}{rrr}
0 & 0 & 1\\
0 & 0 & 0 \\
0 & 0 & 0
\end{array}\right)}$
with characteristic polynomial
\[
\det(xI - A) =
{\left|\begin{array}{rrr}
x & 0 & -1 \\
0 & x & 0 \\
0 & 0 & x
\end{array}\right|}
 = x^3.
 \]
The eigenvectors all have to have eigenvalue $0$.  The algebraic multiplicity of $0$ is 3, but the
geometric multiplicity is only 2, so $A$ is not diagonalizable.

︡d6e3a258-63e7-4dfc-a200-67f941f42d3c︡{"html":"<ol>\n<li><p>The matrix of $T$ wrt $1,x,x^2$ is $A = {\\left(\\begin{array}{rrr}\n0 & 1 & 0 \\\\\n0 & 0 & 1 \\\\\n1 & 0 & 0\n\\end{array}\\right)}$</p></li>\n<li><p>The characteristic polynomial of $A$ is\n\\[\n\\det(xI - A) =\n{\\left|\\begin{array}{rrr}\nx & -1 & 0 \\\\\n0 & x & -1 \\\\\n-1 & 0 & x\n\\end{array}\\right|}\n = x^3 -1 = (x-1)(x^2+x+1).\n \\]\nThe roots are $\\lambda_1=1$ and $\\lambda_2 = \\frac{-1 + \\sqrt{-3}}{2}$ and $\\lambda_3 = \\frac{-1 - \\sqrt{-3}}{2}$.</p></li>\n</ol>\n\n<ul>\n<li>Note that $\\lambda_2^2 = \\lambda_3$ and $\\lambda_3^2 = \\lambda_2$ and $\\lambda_2\\lambda_3=1$.</li>\n<li>An eigenvector corresponding to $\\lambda_1$ is $v_1=(1,1,1)$, which we get by computing the nullspace of $1-A$.</li>\n<li>An eigenvector corr. to $\\lambda_2$ is $v_2=(1,\\lambda_2,\\lambda_3)$.</li>\n<li>An eigenvector corr. to $\\lambda_3$ is $v_3=(1,\\lambda_3,\\lambda_2)$.</li>\n<li>Thus we take $\\mathcal{B} = (v_1, v_2, v_3)$, and then $[T]_{\\mathcal{B}}$ is the diagonal matrix with diag entries $1,\\lambda_2, \\lambda_3$.</li>\n</ul>\n\n<ol>\n<li>The matrix of $S$ wrt $1,x,x^2$ is\n${A = \\left(\\begin{array}{rrr}\n0 & 0 & 1\\\\\n0 & 0 & 0 \\\\\n0 & 0 & 0\n\\end{array}\\right)}$\nwith characteristic polynomial \n\\[\n\\det(xI - A) =\n{\\left|\\begin{array}{rrr}\nx & 0 & -1 \\\\\n0 & x & 0 \\\\\n0 & 0 & x\n\\end{array}\\right|}\n = x^3.\n \\]\nThe eigenvectors all have to have eigenvalue $0$.  The algebraic multiplicity of $0$ is 3, but the\ngeometric multiplicity is only 2, so $A$ is not diagonalizable.</li>\n</ol>\n"}︡
︠fda22b4b-2d70-4713-9941-ae166d7ba444︠
A = matrix(QQ,3,[0,1,0,0,0,1,1,0,0]); show(A)
X = A.eigenvectors_right()
show(X)
︡2e6623df-9952-4eb1-a16a-16fd98427e83︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n0 & 1 & 0 \\\\\n0 & 0 & 1 \\\\\n1 & 0 & 0\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"\\left[\\left(1, \\left[\\left(1,\\,1,\\,1\\right)\\right], 1\\right), \\left(\\verb|-0.50000000000000000?|\\phantom{\\verb!x!}\\verb|-|\\phantom{\\verb!x!}\\verb|0.866025403784439?*I|, \\left[\\left(1,\\,\\verb|-0.50000000000000000?|\\phantom{\\verb!x!}\\verb|-|\\phantom{\\verb!x!}\\verb|0.866025403784439?*I|,\\,\\verb|-0.50000000000000000?|\\phantom{\\verb!x!}\\verb|+|\\phantom{\\verb!x!}\\verb|0.866025403784439?*I|\\right)\\right], 1\\right), \\left(\\verb|-0.50000000000000000?|\\phantom{\\verb!x!}\\verb|+|\\phantom{\\verb!x!}\\verb|0.866025403784439?*I|, \\left[\\left(1,\\,\\verb|-0.50000000000000000?|\\phantom{\\verb!x!}\\verb|+|\\phantom{\\verb!x!}\\verb|0.866025403784439?*I|,\\,\\verb|-0.50000000000000000?|\\phantom{\\verb!x!}\\verb|-|\\phantom{\\verb!x!}\\verb|0.866025403784439?*I|\\right)\\right], 1\\right)\\right]","display":true}}︡
︠44f11c9f-9e3c-4450-88f1-8a0b1d384948︠





︠4e83ec5f-1897-48a9-90ce-c507b61a5080i︠
%md

### Next week

- Orthogonality
- Final review
︡1c382e07-8af4-42fb-8e42-c117793ff472︡{"html":"<h3>Next week</h3>\n\n<ul>\n<li>Orthogonality</li>\n<li>Final review</li>\n</ul>\n"}︡
︠9dbcc179-2c24-4a43-bcd7-45408dd3164e︠





