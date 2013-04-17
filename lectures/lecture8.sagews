︠45394310-3af1-4a25-a2f6-f742f441ac40r︠
md(r"""

# Lecture 8: Subspaces, Basis, Dimension, and Rank

### START THE GOOGLE+ Hangout ###

### Today and Friday we are covering Section 3.5 of [Poole].  You should **definitely** read it too!

*"... the most important ideas in the entire book."*

If you want, you can compute with the objects we will introduce today -- row spaces, column spaces, spans, kernels, etc., -- all  in a natural way using Sage (and **not** mathematica, matlab, etc.).  You can use Sage for free at

 - [http://sagecell.sagemath.org/](http://sagecell.sagemath.org/)
 - [http://uw.sagenb.org/](http://uw.sagenb.org/)
 - [https://cloud.sagemath.org/](https://cloud.sagemath.org/)
 - [http://sagemath.org/](http://sagemath.org/)       -- download to your computer from here

""")
︡6bdbf583-641e-4835-a94a-5b68fde1963e︡{}︡{"html":"<h1>Lecture 8: Subspaces, Basis, Dimension, and Rank</h1>\n\n<h3>Today and Friday we are covering Section 3.5 of [Poole].  You should <strong>definitely</strong> read it too!</h3>\n\n<p><em>\"... the most important ideas in the entire book.\"</em></p>\n\n<p>You can compute with the objects we will introduce today -- row spaces, column spaces, spans, kernels, etc., -- all  in a natural way using Sage (and <strong>not</strong> mathematica, matlab, etc.).  You can use Sage for free at</p>\n\n<ul>\n<li><a href=\"http://sagecell.sagemath.org/\">http://sagecell.sagemath.org/</a></li>\n<li><a href=\"http://uw.sagenb.org/\">http://uw.sagenb.org/</a></li>\n<li><a href=\"https://cloud.sagemath.org/\">https://cloud.sagemath.org/</a></li>\n<li><a href=\"http://sagemath.org/\">http://sagemath.org/</a>       -- download to your computer from here</li>\n</ul>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠8e7e6bab-034b-47b2-8084-f485d93520f7r︠
md(r"""

I left you hanging last time with this:

**Question:** Are $v\_1 = (1,2,3)$, $v\_2=(4,5,6)$, and $v\_3=(7,8,9)$ linearly independent?

**Answer:** ??

""")




︡012073bc-cce2-4283-8b15-6d53e6120c00︡{}︡{"html":"<p>I left you hanging last time with this:</p>\n\n<p><strong>Question:</strong> Are $v_1 = (1,2,3)$, $v_2=(4,5,6)$, and $v_3=(7,8,9)$ linearly independent?</p>\n\n<p><strong>Answer:</strong> ??</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠447bfe3b-a550-45a4-a378-84cfae54ac7b︠
html(r"""
<h1>Linear Independence of Matrices</h1>

NOTE: The same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.

<br><br><br>
<b>Definition:</b> We say that the set of matrices $\{A_1,\ldots A_k\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \cdots + c_k A_k=0$.
<br><br>



""")
︡745e7845-a456-4c77-99b1-48ab7d91d393︡{}︡{"html":"\n<h1>Linear Independence of Matrices</h1>\n\nNOTE: The same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.\n\n<br><br><br>\n<b>Definition:</b> We say that the set of matrices $\\{A_1,\\ldots A_k\\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \\ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \\cdots + c_k A_k=0$.\n<br><br>\n\n- Try some examples...\n\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠b3e553db-b462-4706-ac93-fe2ed98c8e0fr︠








html(r"""
<h1>The Span of a Set of Vectors</h1>

<br><br>
This is yet another <i>new idea</i>.
<br><br>

<h3>Definition:</h3>
The <b>span</b> of the set $\{v_1,\ldots,v_k\}$ of vectors in $\mathbb{R}^n$ is the subset of $\mathbb{R}^n$ of all linear combinations
$$
  c_1 v_1 + c_2 v_2 + \cdots + c_k v_k,
$$
where $c_1, c_2, \ldots, c_k$ vary through all possible real numbers.

""")




︡f8b85dfa-3482-42d4-8711-3a762e01e9b9︡{}︡{"html":"\n<h1>The Span of a Set of Vectors</h1>\n\n<br><br>\nThis is yet another <i>new idea</i>.\n<br><br>\n\n<h3>Definition:</h3>\nThe <b>span</b> of the set $\\{v_1,\\ldots,v_k\\}$ of vectors in $\\mathbb{R}^n$ is the subset of $\\mathbb{R}^n$ of all linear combinations\n$$\n  c_1 v_1 + c_2 v_2 + \\cdots + c_k v_k,\n$$\nwhere $c_1, c_2, \\ldots, c_k$ vary through all possible real numbers.\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠a8683668-fe10-40b5-a8af-70913f77b5e6r︠
html(r"""
<h1>The Span of a Set of Vectors: Let's Try it out</h1>

<ol>
<li> What is the span of $\{(5)\} \subset \mathbb{R}^1$? </li>
<li> What is the span of $\{(1,2)\} \subset \mathbb{R}^2$? </li>
<li> What is the span of $\{(1,2), (2,4)\} \subset \mathbb{R}^2$? </li>
<li> What is the span of $\{(1,2), (3,4)\} \subset \mathbb{R}^2$? </li>
<li> What is the span of $\{(1,2,3)\} \subset \mathbb{R}^3$? </li>
<li> What is the span of $\{(1,2,3), (4,5,6)\} \subset \mathbb{R}^3$? </li>
<li> What is the span of $\{(1,0,0), (0,0,1), (0,0,1)\} \subset \mathbb{R}^3$? </li>
<li> What is the span of $\{(1,2,3), (4,5,6), (7,8,9)\} \subset \mathbb{R}^3$? </li>
<br>
<li> Do there always exist $n$ vectors that span $\mathbb{R}^n$?  Are they linearly independent?</li>
<br>
<li> Can $\mathbb{R}^n$ be spanned by less than $n$ vectors?  Rephrase this as a question about systems of linear equations.</li>
<li> Geometrically, what do spans look like?  Answer: point, line, plane, etc., through the origin.  That's *it*.  They all look like that.</li>
</ol>

""")
︡8e5fbc1b-d800-4015-a47a-6f99363c4d14︡{}︡{"html":"\n<h1>The Span of a Set of Vectors: Let's Try it out</h1>\n\n<ol>\n<li> What is the span of $\\{(5)\\} \\subset \\mathbb{R}^1$? </li>\n<li> What is the span of $\\{(1,2)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2), (2,4)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2), (3,4)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2,3)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,2,3), (4,5,6)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,0,0), (0,0,1), (0,0,1)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,2,3), (4,5,6), (7,8,9)\\} \\subset \\mathbb{R}^3$? </li>\n<br>\n<li> Do there always exist $n$ vectors that span $\\mathbb{R}^n$?  Are they linearly independent?</li>\n<br>\n<li> Can $\\mathbb{R}^n$ be spanned by less than $n$ vectors?  Rephrase this as a question about systems of linear equations.</li>\n<li> Geometrically, what do spans look like?  Answer: point, line, plane, etc., through the origin.  That's *it*.  They all look like that.</li>\n</ol>\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠c585f10d-4a6f-4ad3-b769-cbfb575c9a03r︠
# This is all in Sage...

span(QQ, [ [1,2,3], [4,5,6], [7,8,9] ])
︡8d6ead12-1e63-481e-8e0d-45cecef9af41︡{}︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -1]\n[ 0  1  2]"}︡{"stdout":"\n"}︡{"stdout":"","done":true}︡
︠c7ebd5f4-f4d8-4312-882c-edc0bf244c0br︠
# Let's plot the span of [1,0,-1] and [0,1,2] -- it should look like a plane through origin.
var('a,b')
show(parametric_plot3d([a,b,-a+2*b], (a,-3,3), (b,-3,3)))
︡6002428b-062e-4007-9a05-b6d96cf821ad︡{}︡{"stdout":"(a, b)"}︡{"stdout":"\n"}︡{"file":{"show":true,"uuid":"1faffacc-3892-427c-87cf-69fc6b012d5e","filename":"/home/wstein/.sage/temp/localhost/7359/tmp_b4U5g4.png"}}︡{"stdout":"","done":true}︡
︠d6d02344-b3df-448d-b0cb-f2aa1565acf3r︠
span(QQ, [[1,0,0], [0,0,1], [0,0,1]] )
︡7fdc4108-f8e7-44a4-a897-8f25decf904a︡{}︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[1 0 0]\n[0 0 1]"}︡{"stdout":"\n"}︡{"stdout":"","done":true}︡
︠95ffef1f-c37c-4c4d-ad55-232a767c2782r︠
︡fa921544-1a2a-436f-9a62-17372233fc53︡{"done":true}︡
︠5d9113d3-650a-456c-9ee4-6529ce8140c3r︠


md(r"""
# New Definition: Subspace

A **subspace** of $\mathbb{R}^n$ is a nonempty set $S$ of vectors in
$\mathbb{R}^n$ such that if $u,v \in S$ and $a,b\in\mathbb{R}$, then $au+bv \in S$.


## Subspaces and Spans

In other words, a subspace is a subset of $\mathbb{R}^n$ such that if you take any vectors in $S$, then the span of these vectors is also in $S$.


---

**Theorem**: *The subspace $S$ of $\mathbb{R}^n$ are **exactly** the spans ${\rm span}(v\_1, \ldots, v\_m)$ for some vectors $v\_i$.*

---

Let's prove the easy half, namely that every span is a subspace.  (This is easy.)


""")
︡dd928ee1-4cac-4d16-9872-8a3e19eb2a2d︡{}︡{"html":"<h1>New Definition: Subspace</h1>\n\n<p>A <strong>subspace</strong> of $\\mathbb{R}^n$ is a nonempty set $S$ of vectors in\n$\\mathbb{R}^n$ such that if $u,v \\in S$ and $a,b\\in\\mathbb{R}$, then $au+bv \\in S$.</p>\n\n<h2>Subspaces and Spans</h2>\n\n<p>In other words, a subspace is a subset of $\\mathbb{R}^n$ such that if you take any vectors in $S$, then the span of these vectors is also in $S$.</p>\n\n<hr />\n\n<p><strong>Theorem</strong>: <em>The subspace $S$ of $\\mathbb{R}^n$ are <strong>exactly</strong> the spans ${\\rm span}(v_1, \\ldots, v_m)$ for some vectors $v_i$.</em></p>\n\n<hr />\n\n<p>Let's prove the easy half, namely that every span is a subspace.  (This is easy.)</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠cfa734e4-5b60-4c72-8530-b759bd9a6176r︠



md(r"""
### The Canonical Basis for a Subspace
There are many different choices of $v\_1,\ldots, v\_m$ that span $S$, but there is one that is **canonical**:

 - For any choice at all of $v\_1, \ldots, v\_m$, form the matrix $A$ with *rows* $v\_1,\ldots, v\_m$.

 - Let $B$ be the matrix obtained from the reduced row echelon form ${\rm rref}(A)$ but with all zero rows deleted.

 - The matrix $B$ does not depend on the choice of $v\_i$.   It is a canonical choice of basis for $S$.  (This is the matrix that Sage uses when printing a subspace above.)


NEXT: Subspaces associated to matrices... (row span, column span, nullspace)
""")

︡afca638c-07cb-4fbf-9121-97ae909fd230︡{}︡{"html":"<h3>The Canonical Basis for a Subspace</h3>\n\n<p>There are many different choices of $v_1,\\ldots, v_m$ that span $S$, but there is one that is <strong>canonical</strong>:</p>\n\n<ul>\n<li><p>For any choice at all of $v_1, \\ldots, v_m$, form the matrix $A$ with <em>rows</em> $v_1,\\ldots, v_m$.</p></li>\n<li><p>Let $B$ be the matrix obtained from the reduced row echelon form ${\\rm rref}(A)$ but with all zero rows deleted.</p></li>\n<li><p>The matrix $B$ does not depend on the choice of $v_i$.   It is a canonical choice of basis for $S$.  (This is the matrix that Sage uses when printing a subspace above.)</p></li>\n</ul>\n\n<p>NEXT: Subspaces associated to matrices... (row span, column span, nullspace)</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠e34b5a38-7a45-45eb-9458-5e95d1f8048f︠

︠9c4916c4-7c8e-497c-b7b7-55bdbb3c298c︠





