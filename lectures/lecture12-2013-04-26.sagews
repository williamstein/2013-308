︠a91f452b-58cf-4cbe-a28d-2ad686098730i︠
%md
# Lecture 12

### Preliminaries

1. Turn on screen recorder
2. There is a new homework assignment due Wednesday at midnight: purely computational about row/column spaces/nullspace, linear transformations.
3. Hand back exam; make assertions about stats; grade course using 0-100 --> 0-4 mapping, which I've posted on the course website.
4. Talk about row spaces, column spaces, and null spaces.

︡71e87b44-ad9b-4166-8625-e6cd23223a58︡{"html":"<h1>Lecture 12</h1>\n\n<h3>Preliminaries</h3>\n\n<ol>\n<li>Turn on screen recorder</li>\n<li>There is a new homework assignment due Wednesday at midnight: purely computational about row/column spaces/nullspace, linear transformations.</li>\n<li>Hand back exam; make assertions about stats; grade course using 0-100 &#8211;> 0-4 mapping, which I&#8217;ve posted on the course website.</li>\n<li>Talk about row spaces, column spaces, and null spaces.</li>\n</ol>\n"}︡
︠9ce56d24-a3a1-492a-a8cc-24e7f9847af0︠
# Midterm 1 grades

v = stats.TimeSeries([0.92, 0.8, 0.88, 1.0, 0.92, 0.92, 0.76, 0.8, 1.0, 0.88, 0.76, 0.92, 0.76, 0.72, 0.68, 0.88, 0.96, 0.8, 0.96, 0.68, 0.6, 0.92, 0.84, 1.0, 0.88, 1.0, 0.92, 0.88, 0.96, 0.72, 0.84, 0.88, 0.88, 0.96, 0.92, 0.84, 0.96, 0.72, 0.92, 0.72, 0.8, 0.96, 0.92, 0.92, 0.96, 0.88, 0.88, 0.8, 0.96]).scale(100)
v.plot_histogram(bins=2*len(set(v)))
v.mean(); v.standard_deviation()
︡535e4019-1e3f-4fec-8554-9bfc775072ed︡{"file":{"show":true,"uuid":"105d5fba-6557-4690-b6f4-6b1d2e22460e","filename":"/home/wstein/.sage/temp/localhost/29658/tmp_3cpIN_.svg"}}︡{"stdout":"\n"}︡{"stdout":"86.61224489795919"}︡{"stdout":"\n"}︡{"stdout":"9.748539049798293"}︡{"stdout":"\n"}︡
︠a728d40d-49b7-40a3-86bd-cecb4b979b6fi︠
%md
# Subspaces associated to matrices:
## The row space, column space and nullspace

Let $A$ be an $n\times m$ matrix.  There are a couple of subspaces naturally associated  to $A$.

<span class="lighten">NOTE: Next week, we'll learn about even more subspaces associated to a matrix (eigenspaces!).</span>

**Definition:** The **row space** is the span of the rows of $A$.

**Definition:** The **columns space** is the span of the columns of $A$.

**Definition:** The **nullspace** is subspace of vectors $x$ such that $Ax = 0$.

**Proposition:** *The nullspace actually is a subspace.*

**Remarks:**

1. The nullspace plays a critical role in solving linear systems of equations!  If the system corresponds to $Ax=b$, then the set of solutions is $v+S$, where $S$ is the nullspace of $A$ and $v$ is *any* solution.

2. The nullspace is called the "kernel" of $A$ by most mathematicians.

︡93f243c0-4125-434d-bf81-ae25cbf30b16︡{"html":"<h1>Subspaces associated to matrices:</h1>\n\n<h2>The row space, column space and nullspace</h2>\n\n<p>Let $A$ be an $n\\times m$ matrix.  There are a couple of subspaces naturally associated  to $A$.</p>\n\n<p><span class=\"lighten\">NOTE: Next week, we&#8217;ll learn about even more subspaces associated to a matrix (eigenspaces!).</span></p>\n\n<p><strong>Definition:</strong> The <strong>row space</strong> is the span of the rows of $A$.</p>\n\n<p><strong>Definition:</strong> The <strong>columns space</strong> is the span of the columns of $A$.</p>\n\n<p><strong>Definition:</strong> The <strong>nullspace</strong> is subspace of vectors $x$ such that $Ax = 0$.</p>\n\n<p><strong>Proposition:</strong> <em>The nullspace actually is a subspace.</em></p>\n\n<p><strong>Remarks:</strong></p>\n\n<ol>\n<li><p>The nullspace plays a critical role in solving linear systems of equations!  If the system corresponds to $Ax=b$, then the set of solutions is $v+S$, where $S$ is the nullspace of $A$ and $v$ is <em>any</em> solution.</p></li>\n<li><p>The nullspace is called the &#8220;kernel&#8221; of $A$ by most mathematicians.</p></li>\n</ol>\n"}︡
︠c302c700-2595-4567-a5c4-e520e64dcc5ci︠
%hide
%html <img width="50%" src="http://www.tabiv.net/wp-content/uploads/2010/09/null_space_box.jpg">

︡918f9a03-ad51-4dcd-97d0-a4733efb4961︡{"html":"<img width=\"50%\" src=\"http://www.tabiv.net/wp-content/uploads/2010/09/null_space_box.jpg\">"}︡
︠c6298534-c66d-4171-9c48-1e2640aec3ffi︠
%md
# Computing the nullspace

Computing the nullspaces of $A$ is exactly the same as solving $Ax=0$, which you already know how to do:

1. Put $A$ in reduced row echelon form.

2. Read off the solutions -- there is one free variable for each non-pivot column of the rref.

3. We typically *describe* the nullspace as the span of a list of linearly independent vectors, since this is a nice concise way to describe a subspace.

Quick, what is the nullspace of the $n\times n$ zero matrix?

︡a785053a-7a6c-42b6-b52c-609828ef0ae4︡{"html":"<h1>Computing the nullspace</h1>\n\n<p>Computing the nullspaces of $A$ is exactly the same as solving $Ax=0$, which you already know how to do:</p>\n\n<ol>\n<li><p>Put $A$ in reduced row echelon form.</p></li>\n<li><p>Read off the solutions &#8211; there is one free variable for each non-pivot column of the rref.</p></li>\n<li><p>We typically <em>describe</em> the nullspace as the span of a list of linearly independent vectors, since this is a nice concise way to describe a subspace.</p></li>\n</ol>\n\n<p>Quick, what is the nullspace of the $n\\times n$ zero matrix?</p>\n"}︡
︠e2442eb2-c928-4cee-a975-b2ec5a976494︠
A = matrix(QQ, [ [1,2], [3,4] ])
show(A)
︡e5ad9e5d-9bbd-442f-9509-02aeb9677cf5︡{}︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n1 & 2 \\\\\n3 & 4\n\\end{array}\\right)","display":true}}︡
︠a9d59a64-9554-4c9b-a21b-42cd81b1c576︠
A.kernel()
︡8d275dc6-06db-495a-8231-1313b16196bd︡{}︡{"stdout":"Vector space of degree 2 and dimension 0 over Rational Field\nBasis matrix:\n[]"}︡{"stdout":"\n"}︡
︠f631ca48-799a-4a36-b670-a4d3673cec81︠

A = matrix(QQ, [ [1,2,3], [4,5,6], [7,8,9] ])
show(A)
︡2257f39e-7448-4851-a1ce-94bd8d3ba1bd︡{}︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n1 & 2 & 3 \\\\\n4 & 5 & 6 \\\\\n7 & 8 & 9\n\\end{array}\\right)","display":true}}︡
︠159fffee-c2f0-48ba-baa0-1a18bdc11635︠
A.kernel()
︡233536da-1930-41c7-b749-5cb46f165ebd︡{}︡{"stdout":"Vector space of degree 3 and dimension 1 over Rational Field\nBasis matrix:\n[ 1 -2  1]"}︡{"stdout":"\n"}︡
︠2a92eb06-5c71-4865-b46e-a19b2b07bf7f︠

︠71099d59-d3fc-4b98-ab5d-873044766b54i︠

%md

### Dimension of the nullspace (sometimes called "the nullity")

The **dimension of the nullspace** of $A$ is the number of non-pivot columns, since each one gives rise to an independent variable, when you write down all solutions to $Ax=0$.  Let's do an example:
︡f53cbbae-8dcd-4ab9-a496-6dd8a0191009︡{"html":"<h3>Dimension of the nullspace (sometimes called &#8220;the nullity\")</h3>\n\n<p>The <strong>dimension of the nullspace</strong> of $A$ is the number of non-pivot columns, since each one gives rise to an independent variable, when you write down all solutions to $Ax=0$.  Let&#8217;s do an example:</p>\n"}︡
︠12a37a56-cb0b-4354-8a2e-fdb25c5ed2c6︠
A = matrix(QQ, 2, 5, [1,2,3,4,5, 6,12,8,9,10]); show(A)
︡056ef605-9a80-43d6-b9a6-d0b02b81af5f︡{"tex":{"tex":"\\left(\\begin{array}{rrrrr}\n1 & 2 & 3 & 4 & 5 \\\\\n6 & 12 & 8 & 9 & 10\n\\end{array}\\right)","display":true}}︡
︠d9b154e5-128a-45eb-a88e-fdce8aa6ed01︠
show(A.rref())
︡ff1185ed-60ce-4d19-805f-2b62ea2d5886︡{"tex":{"tex":"\\left(\\begin{array}{rrrrr}\n1 & 2 & 0 & -\\frac{1}{2} & -1 \\\\\n0 & 0 & 1 & \\frac{3}{2} & 2\n\\end{array}\\right)","display":true}}︡

︠ea0f3ee6-a9d5-4fb3-9f32-def09fafda0ei︠
%md

### Here is how to write down a basis for the nullspace:

1. Identify the nonpivot columns (they need not be at the right)

2. For each nonpivot column, make a vector $v$ with a 1 in that column, 0's in all the other nonpivot columns, and fill in all pivot positions of the vector so that ${\rm rref}(A)v = 0$.

3. This results in a basis for the nullspace.  Basically done.

4. It is usually *not* in reduced row echelon form, so you may want to then put it in rref as an additional step, depending on your needs.

5. Paranoid?: Good -- check that $A v_i=0$ for your *original* matrix $A$!

### In our example:

1. Nonpivot columns: 2, 4, 5

2. $v_2 = (-2,1,0,0,0), v_4 = (1/2,0,-3/2,1,0), v_5=(1,0,-2,0,1)$

3. ${\rm nullspace}(A) = {\rm span}(v_2, v_4, v_5)$


︡810ddcc2-7a3c-46af-939f-f5c6e28855a3︡{"html":"<h3>Here is how to write down a basis for the nullspace:</h3>\n\n<ol>\n<li><p>Identify the nonpivot columns (they need not be at the right)</p></li>\n<li><p>For each nonpivot column, make a vector $v$ with a 1 in that column, 0&#8217;s in all the other nonpivot columns, and fill in all pivot positions of the vector so that ${\\rm rref}(A)v = 0$.</p></li>\n<li><p>This results in a basis for the nullspace.  Basically done.</p></li>\n<li><p>It is usually <em>not</em> in reduced row echelon form, so you may want to then put it in rref as an additional step, depending on your needs.</p></li>\n<li><p>Paranoid?: Good &#8211; check that $A v_i=0$ for your <em>original</em> matrix $A$!</p></li>\n</ol>\n\n<h3>In our example:</h3>\n\n<ol>\n<li><p>Nonpivot columns: 2, 4, 5</p></li>\n<li><p>$v_2 = (-2,1,0,0,0), v_4 = (1/2,0,-3/2,1,0), v_5=(1,0,-2,0,1)$</p></li>\n<li><p>${\\rm nullspace}(A) = {\\rm span}(v_2, v_4, v_5)$</p></li>\n</ol>\n"}︡
︠a583a389-33fd-451e-8f20-5cf27baeef16︠
v2 = vector([-2,1,0,0,0]); v4=vector([1/2,0,-3/2,1,0]); v5=vector([1,0,-2,0,1])
A*v2, A*v4, A*v5
span(QQ, [v2, v4, v5])
︡4e0bf0c2-3057-47e4-b009-124ecaac60a0︡{"stdout":"((0, 0), (0, 0), (0, 0))"}︡{"stdout":"\n"}︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0 -4  3]\n[ 0  1  0 -8  6]\n[ 0  0  1 -2  1]"}︡{"stdout":"\n"}︡
︠8d680b41-57a3-473d-bb56-51e62a8b8e97︠
A.right_kernel()
︡e9b9f469-1045-458f-964d-cab174b950e5︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0 -4  3]\n[ 0  1  0 -8  6]\n[ 0  0  1 -2  1]"}︡{"stdout":"\n"}︡
︠290fcc15-5efc-47f1-831f-ce55b714bf08i︠
%md

# Theoretical Observation

### Proposition: The nullspace of a matrix $A$ and of its reduced row echelon form are the same.

Conceptually this says: the linear relations among the columns of $A$ are the same as the linear relations among the columns of the rref of $A$.



**But Why?** This is because the nullspace is the set of vectors $x$ such that $Ax=0$.  "Applying row operations doesn't change the set of solutions to the corresponding linear system." Or so I keep saying.  But let's understand this *algebraically*.   Here's another better way to see this...

︡9e467330-4c1e-47c3-9a3d-0f930db4a08b︡{"html":"<h1>Theoretical Observation</h1>\n\n<h3>Proposition: The nullspace of a matrix $A$ and of its reduced row echelon form are the same.</h3>\n\n<p>Conceptually this says: the linear relations among the columns of $A$ are the same as the linear relations among the columns of the rref of $A$.</p>\n\n<p><strong>But Why?</strong> This is because the nullspace is the set of vectors $x$ such that $Ax=0$.  &#8220;Applying row operations doesn&#8217;t change the set of solutions to the corresponding linear system.&#8221; Or so I keep saying.  But let&#8217;s understand this <em>algebraically</em>.   Here&#8217;s another better way to see this&#8230;</p>\n"}︡
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
︠f8c450a0-20c2-4d30-ad0a-8ef19d25766ci︠
%md

# Next week:

 - Define the *row space* and *column space* of $A$.

 - Study the **linear transformation** $\mathbb{R}^m \to \mathbb{R}^n$ defined by $A$ and see how its kernel and image are related to the null and column spaces.

 - When $A$ is square, study the linear transformation $\mathbb{R}^n \to \mathbb{R}^n$ (and $\mathbb{C}^n \to \mathbb{C}^n$) determined by $A$.  In particular, study the vectors $v$ such that $Av = cv$, for some constant $c$.  These are called **eigenvectors**, and they reveal (almost) all the secrets of a linear transformation.
︡0bb0d05d-bfba-423e-9aa3-959b002e961f︡{"html":"<h1>Next week:</h1>\n\n<ul>\n<li><p>Define the <em>row space</em> and <em>column space</em> of $A$.</p></li>\n<li><p>Study the <strong>linear transformation</strong> $\\mathbb{R}^m \\to \\mathbb{R}^n$ defined by $A$ and see how its kernel and image are related to the null and column spaces.</p></li>\n<li><p>When $A$ is square, study the linear transformation $\\mathbb{R}^n \\to \\mathbb{R}^n$ (and $\\mathbb{C}^n \\to \\mathbb{C}^n$) determined by $A$.  In particular, study the vectors $v$ such that $Av = cv$, for some constant $c$.  These are called <strong>eigenvectors</strong>, and they reveal (almost) all the secrets of a linear transformation.</p></li>\n</ul>\n"}︡
︠330386ab-4b81-4ebf-a76a-bb5d3391dda6︠





︠2e9775a9-c6cd-4229-b952-be99fe2d084a︠





