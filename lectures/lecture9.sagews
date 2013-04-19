︠f71d333b-221b-43bc-b237-100f28a5ee5c︠
md(r"""
# <span style="color:darkblue;">Lecture 9: Subspaces, Basis, Dimension, and Rank (part 2)</span>

(reminder: Google+ Hangout)

## <span style="color:darkred;">Reminder: The first midterm is WEDNESDAY (April 24)!</span>

1. Read/review the following sections from the book over the weekend.  Do as many of the problems from the book as you possibly can (when I was a student I would just do them *all* -- once you get going it gets fast).

    * 2.3 -- spanning sets and linear independence
    * 3.1 -- matrix operations
    * 3.2 -- matrix algebra
    * 3.3 -- the inverse of a matrix
    * 3.5 -- subspaces, basis, dimension, and rank<br><br>

2. You can bring one piece of paper you put notes on (and a calculator, if you want) to the exam.

3. I will give a review lecture on Monday, April 22.

After the exam, we will start "eigenvectors" (chapter 4), yet another really surprising idea that reveals an enormous amount of secret *hidden structure* in a matrix.
""")
︡cca692d6-cec0-4a15-a987-2cc4d1bd4b35︡{}︡{"html":"<h1><span style=\"color:darkblue;\">Lecture 9: Subspaces, Basis, Dimension, and Rank (part 2)</span></h1>\n\n<p>(reminder: Google+ Hangout)</p>\n\n<h2><span style=\"color:darkred;\">Reminder: The first midterm is WEDNESDAY (April 24)!</span></h2>\n\n<ol>\n<li><p>Read/review the following sections from the book over the weekend.  Do as many of the problems from the book as you possibly can (when I was a student I would just do them <em>all</em> -- once you get going it gets fast).</p>\n\n<ul>\n<li>2.3 -- spanning sets and linear independence</li>\n<li>3.1 -- matrix operations</li>\n<li>3.2 -- matrix algebra</li>\n<li>3.3 -- the inverse of a matrix</li>\n<li>3.5 -- subspaces, basis, dimension, and rank<br><br></li>\n</ul></li>\n<li><p>You can bring one piece of paper you put notes on (and a calculator, if you want) to the exam.</p></li>\n<li><p>I will give a review lecture on Monday, April 22.</p></li>\n</ol>\n\n<p>After the exam, we will start \"eigenvectors\" (chapter 4), yet another really surprising idea that reveals an enormous amount of secret <em>hidden structure</em> in a matrix.</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠614f8e2f-1072-48eb-b2ed-f926ad39d66b︠









%md

# Recall: "spans" -- we learned all about them last time.
## They are easily usable in Sage:
︡783ecfd5-0a4b-4445-8106-aa1df7250c1d︡{}︡{"html":"<h1>Recall: \"spans\" -- we learned all about them last time.</h1>\n\n<h2>They are easily usable in Sage:</h2>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠06e2134d-5b12-4178-99bf-094d00083a27︠
span(QQ, [ [1,2,3], [4,5,6], [7,8,9] ])
︡543b7647-4465-4fcd-9d02-d41868bb6554︡{}︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -1]\n[ 0  1  2]"}︡{"stdout":"\n"}︡
︠d03ce74e-69ba-4b02-a06c-aacf90bf008e︠

︠f128491b-42c7-448e-8980-53cc04861382︠
span(QQ, [ [1,2,3,4], [18,23,2/3,43], [5,6,7,8] ])
︡be8e04c7-4c64-4ea6-8f0e-809d5d5d558b︡{}︡{"stdout":"Vector space of degree 4 and dimension 3 over Rational Field\nBasis matrix:\n[     1      0      0 -97/41]\n[     0      1      0 153/41]\n[     0      0      1 -15/41]"}︡{"stdout":"\n"}︡
︠c7ebd5f4-f4d8-4312-882c-edc0bf244c0b︠
# Let's plot the span of [1,0,-1] and [0,1,2] in 3d -- it is a plane through origin.
var('a,b')
show(parametric_plot3d([a,b,-a+2*b], (a,-3,3), (b,-3,3)))
︡eca8f4e9-c53b-4e34-a6af-0184364e3d9e︡{}︡{"stdout":"(a, b)"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"1faffacc-3892-427c-87cf-69fc6b012d5e","filename":"/home/wstein/.sage/temp/localhost/32093/tmp_PuB58X.png"}}︡
︠d6d02344-b3df-448d-b0cb-f2aa1565acf3︠

md(r"""
# New Definition: Subspace

A **subspace** of $\mathbb{R}^n$ is a nonempty set $S$ of vectors in
$\mathbb{R}^n$ such that if $u,v \in S$ and $a,b\in\mathbb{R}$, then $au+bv \in S$.


## Subspaces and Spans

In other words, a subspace is a subset of $\mathbb{R}^n$ such that if you take any vectors in $S$, then the span of these vectors is also in $S$.


---

**Theorem**: *The subspaces $S$ of $\mathbb{R}^n$ are **exactly** the spans ${\rm span}(v\_1, \ldots, v\_m)$ for some vectors $v\_i$.*

---

Let's prove the easy half, namely that every span is a subspace.  (This is easy: just check the axiom.)


""")
︡7386ddbf-27b9-487c-b1e8-76ee24340b32︡{}︡{"html":"<h1>New Definition: Subspace</h1>\n\n<p>A <strong>subspace</strong> of $\\mathbb{R}^n$ is a nonempty set $S$ of vectors in\n$\\mathbb{R}^n$ such that if $u,v \\in S$ and $a,b\\in\\mathbb{R}$, then $au+bv \\in S$.</p>\n\n<h2>Subspaces and Spans</h2>\n\n<p>In other words, a subspace is a subset of $\\mathbb{R}^n$ such that if you take any vectors in $S$, then the span of these vectors is also in $S$.</p>\n\n<hr />\n\n<p><strong>Theorem</strong>: <em>The subspaces $S$ of $\\mathbb{R}^n$ are <strong>exactly</strong> the spans ${\\rm span}(v_1, \\ldots, v_m)$ for some vectors $v_i$.</em></p>\n\n<hr />\n\n<p>Let's prove the easy half, namely that every span is a subspace.  (This is easy.)</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠bc98ead1-1558-44b6-8b9d-0d2a3dcc0ea7︠

md(r"""
### Definition: A Basis for a Subspace $S$

A **basis** for a subspace $S$ is a list of linearly independent vector $v\_1, \ldots, v\_m$ that span $S$.


### Remarks and Examples
1. What is a basis for $\mathbb{R}^n$?

2. What is a basis for the span $S$ of $(1,2,3)$, $(4,5,6)$, $(7,8,9)$?

3. **Fact:** Any nonzero subspace $S$ has infinitely many different bases.  WHY?

4. It's called a "basis" since every element of $S$ can be written uniquely in terms of if.
""")

︡8f20128e-1f98-4d71-81e9-4f541338ad85︡{}︡{"html":"<h3>Definition: A Basis for a Subspace $S$</h3>\n\n<p>A <strong>basis</strong> for a subspace $S$ is a list of linearly independent vector $v_1, \\ldots, v_m$ that span $S$.</p>\n\n<h3>Remarks and Examples</h3>\n\n<ol>\n<li><p>What is a basis for $\\mathbb{R}^n$?</p></li>\n<li><p>What is a basis for the span $S$ of $(1,2,3)$, $(4,5,6)$, $(7,8,9)$?</p></li>\n<li><p><strong>Fact:</strong> Any nonzero subspace $S$ has infinitely many different bases.  WHY?</p></li>\n<li><p>It's called a \"basis\" since every element of $S$ can be written uniquely in terms of if. </p></li>\n</ol>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡


︠cfa734e4-5b60-4c72-8530-b759bd9a6176︠






md(r"""
### The Canonical Basis for a Subspace $S$

There are many different choices of $v\_1,\ldots, v\_m$ that span $S$, but there is one that is **canonical**:

 - For any choice at all of $v\_1, \ldots, v\_m$, form the matrix $A$ with *rows* $v\_1,\ldots, v\_m$.

 - Let $B$ be the matrix obtained from the reduced row echelon form ${\rm rref}(A)$ but with all zero rows deleted.

 - The matrix $B$ does not depend on the choice of $v\_i$.   It is a canonical choice of basis for $S$.  (This is the matrix that Sage uses when printing a subspace above.)


We will call the above basis *the* **reduced row echelon form basis** for $S$.

### Dimension

**Definition:** The *dimension* of a Subspace is the number of vectors in the reduced row echelon form basis.

**Theorem:** *The number of vectors in any basis for $S$ is the same.*

Proof: If the rows of a basis are linearly independent and you put the matrix in reduced row echelon form, then no zero rows appear.  (Maybe prove carefully in class by considering columns and systems of equations.)

""")

︡2cb9d0da-290d-4c8c-9202-919291c96255︡{}︡{"html":"<h3>The Canonical Basis for a Subspace $S$</h3>\n\n<p>There are many different choices of $v_1,\\ldots, v_m$ that span $S$, but there is one that is <strong>canonical</strong>:</p>\n\n<ul>\n<li><p>For any choice at all of $v_1, \\ldots, v_m$, form the matrix $A$ with <em>rows</em> $v_1,\\ldots, v_m$.</p></li>\n<li><p>Let $B$ be the matrix obtained from the reduced row echelon form ${\\rm rref}(A)$ but with all zero rows deleted.</p></li>\n<li><p>The matrix $B$ does not depend on the choice of $v_i$.   It is a canonical choice of basis for $S$.  (This is the matrix that Sage uses when printing a subspace above.)</p></li>\n</ul>\n\n<p>We will call the above basis <em>the</em> <strong>reduced row echelon form basis</strong> for $S$.</p>\n\n<h3>Dimension</h3>\n\n<p><strong>Definition:</strong> The <em>dimension</em> of a Subspace is the number of vectors in the reduced row echelon form basis.</p>\n\n<p><strong>Theorem:</strong> <em>The number of vectors in any basis for $S$ is the same.</em></p>\n\n<p>Proof: If the rows of a basis are linearly independent and you put the matrix in reduced row echelon form, then no zero rows appear.  (Maybe prove carefully in class by considering columns and systems of equations.)</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠e34b5a38-7a45-45eb-9458-5e95d1f8048f︠

md(r"""
# Subspaces associated to matrices:
## The row space, column space and nullspace

Let $A$ be an $n\times m$ matrix.  There are a couple of subspaces naturally associated  to $A$.

<span class="lighten">NOTE: Next week, we'll learn about even more subspaces associated to a matrix (eigenspaces!).</span>

**Definition:** The *row space* is the span of the rows of $A$.

**Definition:** The *columns space* is the span of the columns of $A$.

**Definition:** The *nullspace* is subspace of vectors $x$ such that $Ax = 0$.

**Proposition:** *The nullspace actually is a subspace.*

**Remarks:**

1. The nullspace plays a critical role in solving linear systems of equations!  If the system corresponds to $Ax=b$, then the set of solutions is $v+S$, where $S$ is the nullspace of $A$ and $v$ is *any* solution.

2. The nullspace is actually called the "kernel" of $A$ by most professional mathematicians.
""")

︡ccb10242-e72a-4e96-8451-f7c86f254580︡{}︡{"html":"<h1>Subspaces associated to matrices:</h1>\n\n<h2>The row space, column space and nullspace</h2>\n\n<p>Let $A$ be an $n\\times m$ matrix.  There are a couple of subspaces naturally associated  to $A$.</p>\n\n<p><span class=\"lighten\">NOTE: Next week, we'll learn about even more subspaces associated to a matrix (eigenspaces!).</span></p>\n\n<p><strong>Definition:</strong> The <em>row space</em> is the span of the rows of $A$.</p>\n\n<p><strong>Definition:</strong> The <em>columns space</em> is the span of the columns of $A$.</p>\n\n<p><strong>Definition:</strong> The <em>nullspace</em> is subspace of vectors $x$ such that $Ax = 0$.</p>\n\n<p><strong>Proposition:</strong> <em>The nullspace actually is a subspace.</em></p>\n\n<p><strong>Remarks:</strong></p>\n\n<ol>\n<li><p>The nullspace plays a critical role in solving linear systems of equations!  If the system corresponds to $Ax=b$, then the set of solutions is $v+S$, where $S$ is the nullspace of $A$ and $v$ is <em>any</em> solution.</p></li>\n<li><p>The nullspace is actually called the \"kernel\" of $A$ by most professional mathematicians. </p></li>\n</ol>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠c6298534-c66d-4171-9c48-1e2640aec3ff︠
md(r"""
# Example: the nullspace

Computing the nullspaces of $A$ is exactly the same as solving $Ax=0$, which you already know how to do:

1. Put $A$ in reduced row echelon form.
2. Read off the solutions -- there is one free variable for each non-pivot column of the rref.

Quick, what is the nullspace of the $n\times n$ zero matrix?
""")
︡c33ffef0-37d9-442e-a834-0c8c5f5fb850︡{}︡{"html":"<h1>Example: the nullspace</h1>\n\n<p>Computing the nullspaces of $A$ is exactly the same as solving $Ax=0$, which you already know how to do:</p>\n\n<ol>\n<li>Put $A$ in reduced row echelon form.</li>\n<li>Read off the solutions -- there is one free variable for each non-pivot column of the rref.</li>\n</ol>\n\n<p>Quick, what is the nullspace of the $n\\times n$ zero matrix?</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
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
︠71099d59-d3fc-4b98-ab5d-873044766b54︠

%md

### Parting Question: What is the dimension of the nullspace of $A$ in terms of the number of non-pivot columns?
︡2de66662-5cc5-4029-bdb7-529295facf30︡{}︡{"html":"<h3>Parting Question: What is the dimension of the nullspace of $A$ in terms of the number of non-pivot columns?</h3>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠330386ab-4b81-4ebf-a76a-bb5d3391dda6︠
%html <img width="50%" src="http://www.tabiv.net/wp-content/uploads/2010/09/null_space_box.jpg">
︡2cd37bbb-1a00-4c98-9bf4-8f32f69b7088︡{}︡{"html":"<img width=\"50%\" src=\"http://www.tabiv.net/wp-content/uploads/2010/09/null_space_box.jpg\">"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠2e9775a9-c6cd-4229-b952-be99fe2d084a︠










