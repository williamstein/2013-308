%md
# Lecture 12

## Preliminaries

1. Turn on screen recorder
2. Hand back exam; make assertions about stats; grade course using 0-100 --> 0-4 mapping, which I posted on course website.

︠9ce56d24-a3a1-492a-a8cc-24e7f9847af0︠

︠a728d40d-49b7-40a3-86bd-cecb4b979b6f︠

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





