︠ef2e48c6-443c-4998-a628-9641b06fe9e1i︠
%hide
%md
# Lecture 13 (2013-04-29)

#### Definitions today: Nullspace, rowspace, column space, elementary matrices, linear transformations

After this: eigenvalues and eigenvectors.
︡c5ec8414-b2bb-4dcf-91f4-ccbe21ae7257︡{"html":"<h1>Lecture 13 (2013-04-29)</h1>\n\n<h4>Definitions today: Nullspace, rowspace, column space, elementary matrices, linear transformations</h4>\n\n<p>After this: eigenvalues and eigenvectors.</p>\n"}︡
︠e3e160e7-a246-4253-a0b3-e5d6a75f2feei︠
%md

## Recall...

1. Last week we defined the *nullspace* of a matrix $A$.  It is the subspace $$\\{x : Ax = 0\\}.$$

2. You can compute a basis for the nullspace of $A$ by<br><br>

    1. Put $A$ in reduced row echelon form.

    2. For each non-pivot column of $A$, construct a vector $v$ with $1$ in the corresponding position, $0$'s in all other non-pivot columns,and negative the entries of that row in the pivot positions.

    3. NOTE: the resulting basis need not be in reduced row echelon form.

︡7ebd04d0-ec3e-4c39-ae6e-855dc6f836ee︡{"html":"<h2>Recall&#8230;</h2>\n\n<ol>\n<li><p>Last week we defined the <em>nullspace</em> of a matrix $A$.  It is the subspace $$\\{x : Ax = 0\\}.$$</p></li>\n<li><p>You can compute a basis for the nullspace of $A$ by<br><br></p>\n\n<ol>\n<li><p>Put $A$ in reduced row echelon form.</p></li>\n<li><p>For each non-pivot column of $A$, construct a vector $v$ with $1$ in the corresponding position, $0$&#8217;s in all other non-pivot columns,and negative the entries of that row in the pivot positions.</p></li>\n<li><p>NOTE: the resulting basis need not be in reduced row echelon form.</p></li>\n</ol></li>\n</ol>\n"}︡
︠290fcc15-5efc-47f1-831f-ce55b714bf08i︠
%md

## Theoretical Observation: why this works

**Proposition:** *The nullspace of a matrix $A$ and of its reduced row echelon form are the same.*

In other words, *"the linear relations among the columns of $A$ are the same as the linear relations among the columns of the rref of $A$."*

<br>The above sentence often appears in proofs.<br>


**But Why?** This is because the nullspace is the set of vectors $x$ such that $Ax=0$.  "Applying row operations doesn't change the set of solutions to the corresponding linear system." Or so I keep saying.  But let's understand this *algebraically*.   Here's another better way to see this...

︡194f7989-e569-4743-98eb-b1e060e8cbf3︡{"html":"<h2>Theoretical Observation: why this works</h2>\n\n<p><strong>Proposition:</strong> <em>The nullspace of a matrix $A$ and of its reduced row echelon form are the same.</em></p>\n\n<p>In other words, <em>\"the linear relations among the columns of $A$ are the same as the linear relations among the columns of the rref of $A$.\"</em>    </p>\n\n<p><br>The above sentence often appears in proofs.<br></p>\n\n<p><strong>But Why?</strong> This is because the nullspace is the set of vectors $x$ such that $Ax=0$.  &#8220;Applying row operations doesn&#8217;t change the set of solutions to the corresponding linear system.&#8221; Or so I keep saying.  But let&#8217;s understand this <em>algebraically</em>.   Here&#8217;s another better way to see this&#8230;</p>\n"}︡
︠ca54b5b3-b053-4f1d-a7e8-e8794c51df23i︠
%md

## Elementary Matrices

Suppose $A$ has $n$ rows. Let $I=I\_n$ be the $n\times n$ identity matrix.  Define three types of **elementary matrices**:

  1. **Swap two rows:** Let $E$ be the matrix got from $I$ by swaping two rows of $I$.  Notice that $EA$ is the matrix got by swapping those two rows of $A$.  (Explain this on whiteboard with example.)

  2. **Rescale a row:** Let $E$ be the matrix got from $I$ by rescaling a row of $I$ (by a nonzero scalar).  Notice that $EA$ is the matrix got by rescaling the same row of $A$.  (Explain this on whiteboard with example.)

  3. **Add a multiple of one row to another:** Let $E$ be the matrix got from $I$ by adding a multiple of one row of $I$ to another.  Notice that $EA$ is the matrix got by adding that same row of $A$ to another row.  (Explain this on whiteboard with example.)
︡f246531a-6c58-40b4-b70d-3b46d3f81086︡{"html":"<h2>Elementary Matrices</h2>\n\n<p>Suppose $A$ has $n$ rows. Let $I=I_n$ be the $n\\times n$ identity matrix.  Define three types of <strong>elementary matrices</strong>:</p>\n\n<ol>\n<li><p><strong>Swap two rows:</strong> Let $E$ be the matrix got from $I$ by swaping two rows of $I$.  Notice that $EA$ is the matrix got by swapping those two rows of $A$.  (Explain this on whiteboard with example.)</p></li>\n<li><p><strong>Rescale a row:</strong> Let $E$ be the matrix got from $I$ by rescaling a row of $I$ (by a nonzero scalar).  Notice that $EA$ is the matrix got by rescaling the same row of $A$.  (Explain this on whiteboard with example.)</p></li>\n<li><p><strong>Add a multiple of one row to another:</strong> Let $E$ be the matrix got from $I$ by adding a multiple of one row of $I$ to another.  Notice that $EA$ is the matrix got by adding that same row of $A$ to another row.  (Explain this on whiteboard with example.)</p></li>\n</ol>\n"}︡
︠bd3c51d1-f145-4bd9-8c67-bd350c13b7cei︠

%md
### Let's PROVE that $A$ and ${\rm rref}(A)$ have the same nullspace:

 - Each of the three types of elementary matrices $E$ above is an *invertible* $n\times n$ matrix -- swap again, rescale by the inverse, or add negative multiple of row.

 - Putting $A$ in reduced row echelon form is exactly the same as finding a sequence of elementary matrices $E_1, E_2, \ldots, E_k$ of matrices such that $$E_k E_{k-1} \cdots E_1 A = {\rm rref}(A).$$

 - Let $E=E_k E_{k-1} \cdots E_1$.  Then since $E$ is invertible, $$\\{x : Ax = 0\\} = \\{x : EAx = 0\\}.$$



︡7d375c05-a938-43fc-bfee-61b7ee23b1cc︡{"html":"<h3>Let&#8217;s PROVE that $A$ and ${\\rm rref}(A)$ have the same nullspace:</h3>\n\n<ul>\n<li><p>Each of the three types of elementary matrices $E$ above is an <em>invertible</em> $n\\times n$ matrix &#8211; swap again, rescale by the inverse, or add negative multiple of row.</p></li>\n<li><p>Putting $A$ in reduced row echelon form is exactly the same as finding a sequence of elementary matrices $E_1, E_2, \\ldots, E_k$ of matrices such that $$E_k E_{k-1} \\cdots E_1 A = {\\rm rref}(A).$$</p></li>\n<li><p>Let $E=E_k E_{k-1} \\cdots E_1$.  Then since $E$ is invertible, $$\\{x : Ax = 0\\} = \\{x : EAx = 0\\}.$$</p></li>\n</ul>\n"}︡
︠16d47947-b79b-49d6-acdf-308d0d2df4fcoi︠
latex(matrix(2,2,[1..4]))
︡905b417e-357a-4a0a-8cb6-0efbcf495970︡{"stdout":"\\left(\\begin{array}{rr}\n1 & 2 \\\\\n3 & 4\n\\end{array}\\right)"}︡{"stdout":"\n"}︡
︠9d23bd0c-4f9a-4439-a7c0-832749524866i︠
%md
## Example

Let $A=\left(\begin{array}{rr}
1 & 2 \\\\
3 & 4
\end{array}\right)$.
Find elementary matrices $E_i$ as above so that $E_{k}\ldots E_1 A=I$.

### Echelon form steps:

1. Add -3 times row 1 to row 2.

2. Rescale row 2 by dividing by -2.

3. Add -2 times row 2 to row 1.

Write the corresponding matrices in the correct order, etc., on the blackboard.

︡196ef50e-0452-4399-a263-06d92cba8310︡{"html":"<h2>Example</h2>\n\n<p>Let $A=\\left(\\begin{array}{rr}\n1 &amp; 2 \\\\\n3 &amp; 4\n\\end{array}\\right)$.\nFind elementary matrices $E_i$ as above so that $E_{k}\\ldots E_1 A=I$.</p>\n\n<h3>Echelon form steps:</h3>\n\n<ol>\n<li><p>Add -3 times row 1 to row 2.</p></li>\n<li><p>Rescale row 2 by dividing by -2.</p></li>\n<li><p>Add -2 times row 2 to row 1.</p></li>\n</ol>\n\n<p>Write the corresponding matrices in the correct order, etc., on the blackboard.</p>\n"}︡
︠f8c450a0-20c2-4d30-ad0a-8ef19d25766ci︠
%md

### The *row space* and *column space* of $A$.

We defined these on Friday.  The row space is the span of the rows.  The column space is the span of the columns.

### Linear Transformation associated to $A$.

**Definition:** A *linear transformation* is a map $T:\mathbb{R}^m \to \mathbb{R}^n$ such that for all $u,v\in \mathbb{R}^m$ and $a,b\in\mathbb{R}$, we have $$T(au+bv) = aT(u) + bT(v).$$


### Suppose $A$ is an $n \times m$ matrix.

 - Then $A$ defines a linear transformation $T=T_A$, given by $T_A(v) = Av$.

 - If $T$ is *any* linear transformation at all, then there is *a unique* matrix $A$ such that $T=T_A$.  (The matrix $A$ has columns the images of the standard basis vectors under $T$; we will return to this later this week.)

︡58b80dba-a14b-4681-80a2-b314b75b8119︡{"html":"<h3>The <em>row space</em> and <em>column space</em> of $A$.</h3>\n\n<p>We defined these on Friday.  The row space is the span of the rows.  The column space is the span of the columns.</p>\n\n<h3>Linear Transformation associated to $A$.</h3>\n\n<p><strong>Definition:</strong> A <em>linear transformation</em> is a map $T:\\mathbb{R}^m \\to \\mathbb{R}^n$ such that for all $u,v\\in \\mathbb{R}^m$ and $a,b\\in\\mathbb{R}$, we have $$T(au+bv) = aT(u) + bT(v).$$</p>\n\n<h3>Suppose $A$ is an $n \\times m$ matrix.</h3>\n\n<ul>\n<li><p>Then $A$ defines a linear transformation $T=T_A$, given by $T_A(v) = Av$.</p></li>\n<li><p>If $T$ is <em>any</em> linear transformation at all, then there is <em>a unique</em> matrix $A$ such that $T=T_A$.  (The matrix $A$ has columns the images of the standard basis vectors under $T$; we will return to this later this week.)</p></li>\n</ul>\n"}︡
︠621dba0c-6d0e-460b-85b9-2a010ab9ed69i︠
 %md

### Kernel and Image: relation to row/column/nullspace

 - The **kernel** of $T$ is $\\{v : T(v) = 0\\}$.  This is exactly the same as the nullspace of the matrix $A$ such that $T=T_A$.

 - The **image** of $T$ is $\\{T(v) : v \in \mathbb{R}^m\\}\subset \mathbb{R}^n$.  This is the same as the column space of the matrix $A$ such that $T=T_A$.

 - The row space of $A$ is (basically) the same thing as the image of the linear transformation defined by the transpose of $A$.

︡d626c7d5-a795-46b4-ad4a-e5be577a43ca︡{"html":"<h3>Kernel and Image: relation to row/column/nullspace</h3>\n\n<ul>\n<li><p>The <strong>kernel</strong> of $T$ is $\\{v : T(v) = 0\\}$.  This is exactly the same as the nullspace of the matrix $A$ such that $T=T_A$.</p></li>\n<li><p>The <strong>image</strong> of $T$ is $\\{T(v) : v \\in \\mathbb{R}^m\\}\\subset \\mathbb{R}^n$.  This is the same as the column space of the matrix $A$ such that $T=T_A$.</p></li>\n<li><p>The row space of $A$ is (basically) the same thing as the image of the linear transformation defined by the transpose of $A$.</p></li>\n</ul>\n"}︡
︠226122f7-a26e-4bbd-acff-f10e0568a02bi︠
%md

## Next Up

 - When $A$ is square, we will study the linear transformation $\mathbb{R}^n \to \mathbb{R}^n$ (and $\mathbb{C}^n \to \mathbb{C}^n$) determined by $A$.

 - In particular, we will study the vectors $v$ such that $Av = cv$, for some constant $c$.

 - These are called **eigenvectors**, and they reveal many secrets of a linear transformation.


︡98d55efa-dd2e-4aa7-8be8-ec75cd3e2c91︡{"html":"<h2>Next Up</h2>\n\n<ul>\n<li><p>When $A$ is square, we will study the linear transformation $\\mathbb{R}^n \\to \\mathbb{R}^n$ (and $\\mathbb{C}^n \\to \\mathbb{C}^n$) determined by $A$.  </p></li>\n<li><p>In particular, we will study the vectors $v$ such that $Av = cv$, for some constant $c$.  </p></li>\n<li><p>These are called <strong>eigenvectors</strong>, and they reveal many secrets of a linear transformation.</p></li>\n</ul>\n"}︡
︠330386ab-4b81-4ebf-a76a-bb5d3391dda6︠


