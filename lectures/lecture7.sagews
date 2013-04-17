︠2df6ba73-dee5-4316-8e43-3e77701579eer︠



md(r"""

### Reminder: my office hours are at 12:30 (not 12) due to a scheduling conflict.  So... 12:30 - 2.  Also, right after class, ask me questions for a bit.

# Lecture 7: Linear Independence

---

## New Topic: Vectors, Matrics, and Linear Independence

**WHY?** This is preparation for "vector spaces" -- you should read Section 3.5 of the book before Wednesday, since this is important and hard.


**Definitions:**

- When I say **vector** I mean an $n\times 1$ matrix.  You can think of a vector as an arrow from the origin to the point in space with those $n$ coordinates.

- We will denote the set of all of vectors with $n$ real number entries by $\mathbb{R}^n$. Similarly, if the entries are complex numbers, we write $\mathbb{C}^n$, if rational numbers, we write $\mathbb{Q}^n$, and if the entries are numbers modulo a prime $p$, we write $\mathbb{F}_{p}^n$.

- If $A$ is an $n\times m$ matrix and $v\in \mathbb{R}^m$, then $Av$ is a matrix with $n$ rows (and $1$ column), so $Av \in \mathbb{R}^n$.  Thus $A$ defines a *function* $\mathbb{R}^m \to \mathbb{R}^n$.  This function is called a *linear transformation*, and has many nice properties, as we will soon see.



Since it is hard to type in an $n\times 1$ matrix, I'll often write "Consider the vector $v=(1,2,3)$", but I mean $v$ to be the $3 \times 1$ matrix with entries $1,2,3$.  OK?

""")
︡508fd59c-fe0d-4ff2-b858-72ebd4e7f43a︡{}︡{"html":"<h3>Reminder: my office hours are at 12:30 (not 12) due to a scheduling conflict.  So... 12:30 - 2.  Also, right after class, ask me questions for a bit.</h3>\n\n<h1>Lecture 7: Linear Independence</h1>\n\n<hr />\n\n<h2>New Topic: Vectors, Matrics, and Linear Independence</h2>\n\n<p><strong>WHY?</strong> This is preparation for \"vector spaces\" -- you should read Section 3.5 of the book before Wednesday, since this is important and hard.</p>\n\n<p><strong>Definitions:</strong></p>\n\n<ul>\n<li><p>When I say <strong>vector</strong> I mean an $n\\times 1$ matrix.  You can think of a vector as an arrow from the origin to the point in space with those $n$ coordinates.</p></li>\n<li><p>We will denote the set of all of vectors with $n$ real number entries by $\\mathbb{R}^n$. Similarly, if the entries are complex numbers, we write $\\mathbb{C}^n$, if rational numbers, we write $\\mathbb{Q}^n$, and if the entries are numbers modulo a prime $p$, we write $\\mathbb{F}_{p}^n$.</p></li>\n<li><p>If $A$ is an $n\\times m$ matrix and $v\\in \\mathbb{R}^m$, then $Av$ is a matrix with $n$ rows (and $1$ column), so $Av \\in \\mathbb{R}^n$.  Thus $A$ defines a <em>function</em> $\\mathbb{R}^m \\to \\mathbb{R}^n$.  This function is called a <em>linear transformation</em>, and has many nice properties, as we will soon see.</p></li>\n</ul>\n\n<p>Since it is hard to type in an $n\\times 1$ matrix, I'll often write \"Consider the vector $v=(1,2,3)$\", but I mean $v$ to be the $3 \\times 1$ matrix with entries $1,2,3$.  OK?</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠89c74d12-1d83-4885-afa3-d844f034b33er︠


html(r"""
<h3>Linear Independence: this is a new idea that will be very useful in understanding everything that follows in this course!</h3>

<b>Definition:</b> We say that the set of vectors $\{v_1,\ldots v_k\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \ldots, c_k$ that are not all zero such that $c_1 v_1 + c_2 v_2 + \cdots+ c_k v_k=0$.
<br><br>

Huh??
<br>
Thus:<br><br>
<ul>
<li> $v_1,\ldots, v_k$ are linearly independent if when you form the matrix $A$ with columns the $v_i$, then the equation $Ax = 0$ has a unique solution (namely, $x=0$).</li>
<br>
<li>  (heuristically) $v_1,\ldots, v_k$ are linearly independent if---when viewed as vectors---they all point in genuinely different directions.
</li>
</ul>

<br><br>
Let's try this out...

""")
︡f5da7353-4f2e-441b-9fa1-9e89602f07e0︡{}︡{"html":"\n<h3>Linear Independence: this is a new idea that will be very useful in understanding everything that follows in this course!</h3>\n\n<b>Definition:</b> We say that the set of vectors $\\{v_1,\\ldots v_k\\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \\ldots, c_k$ that are not all zero such that $c_1 v_1 + c_2 v_2 + \\cdots+ c_k v_k=0$.\n<br><br>\n\nHuh??\n<br>\nThus:<br><br>\n<ul>\n<li> $v_1,\\ldots, v_k$ are linearly independent if when you form the matrix $A$ with columns the $v_i$, then the equation $Ax = 0$ has a unique solution (namely, $x=0$).</li>\n<br>\n<li>  (heuristically) $v_1,\\ldots, v_k$ are linearly independent if---when viewed as vectors---they all point in genuinely different directions.\n</li>\n</ul>\n\n<br><br>\nLet's try this out...\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠a180712c-44a6-4393-9229-870711fb355er︠

md(r"""
* Are $v\_1 = [1]$ and $v\_2=[5]$ linearly independent?  (Can you ever have two vectors in $\mathbb{R}^1$ that are linearly independent?)

* Are $v\_1 = (1,2)$ and $v\_2=(3,4)$ linearly independent?

* Are $v\_1 = (1,2)$, $v\_2=(3,4)$, and $v\_3=(5,6)$ linearly independent?  (Can you ever have 3 vectors in $\mathbb{R}^2$ that are linearly independent?)

* Are $v\_1 = (1,2,3)$ and $v\_2=(4,5,6)$ linearly independent?

* Are $v\_1 = (1,2,3)$, $v\_2=(4,5,6)$, and $v\_3=(7,8,9)$linearly independent?

* If $v=(0,0,...,0)$ is the set $\{v\}$ linearly independent? (Nope)

* Is the empty set linearly independent? (Yes)

* The columns of a square matrix $A$ are linearly independent if and only if $A$ is invertible.
""")
︡f4751dae-fb02-40bc-b9a6-9480e1ae6d64︡{}︡{"html":"<ul>\n<li><p>Are $v_1 = [1]$ and $v_2=[5]$ linearly independent?  (Can you ever have two vectors in $\\mathbb{R}^1$ that are linearly independent?)</p></li>\n<li><p>Are $v_1 = (1,2)$ and $v_2=(3,4)$ linearly independent?</p></li>\n<li><p>Are $v_1 = (1,2)$, $v_2=(3,4)$, and $v_3=(5,6)$ linearly independent?  (Can you ever have 3 vectors in $\\mathbb{R}^2$ that are linearly independent?)</p></li>\n<li><p>Are $v_1 = (1,2,3)$ and $v_2=(4,5,6)$ linearly independent?</p></li>\n<li><p>Are $v_1 = (1,2,3)$, $v_2=(4,5,6)$, and $v_3=(7,8,9)$linearly independent?</p></li>\n<li><p>If $v=(0,0,...,0)$ is the set ${v}$ linearly independent? (Nope)</p></li>\n<li><p>Is the empty set linearly independent? (Yes)</p></li>\n<li><p>The columns of a square matrix $A$ are linearly independent if and only if $A$ is invertible.</p></li>\n</ul>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠29324d42-f84f-4beb-b64e-037515c8779br︠
%md

# Challenge

## Exactly when are two vectors $v\_1$ and $v\_2$ in $\mathbb{R}^2$ linearly independent?


- Can either be the zero vector?
- Can they be equal?


︡16d2273d-57d5-4f67-bf9f-ce62b4500ba8︡{}︡{"html":"<h1>Challenge</h1>\n\n<h2>Exactly when are two vectors $v_1$ and $v_2$ in $\\mathbb{R}^2$ linearly independent?</h2>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠965116ac-9288-427d-996b-027d88f4c110r︠










%md

# Harder Challenge

## Exactly when are three vectors $v\_1$, $v\_2$, $v\_3$ in $\mathbb{R}^3$ linearly independent?




︡b1cbd41f-c1d7-4b74-b9d2-4478d7398384︡{}︡{"html":"<h1>Harder Challenge</h1>\n\n<h2>Exactly when are three vectors $v_1$, $v_2$, $v_3$ in $\\mathbb{R}^3$ linearly independent?</h2>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠cc077a9e-691b-47ec-b422-239c0497ab21r︠


















html(r"""
<h1>Linear Independence of Matrices</h1>

NOTE: The same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.

<br><br><br>
<b>Definition:</b> We say that the set of matrices $\{A_1,\ldots A_k\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \cdots + c_k A_k=0$.
<br><br>

- Try some examples...


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
</ol>

""")
︡b1a5b1b9-ccfe-4264-b588-7ac71e747f86︡{}︡{"html":"\n<h1>The Span of a Set of Vectors: Let's Try it out</h1>\n\n<ol>\n<li> What is the span of $\\{(5)\\} \\subset \\mathbb{R}^1$? </li>\n<li> What is the span of $\\{(1,2)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2), (2,4)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2), (3,4)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2,3)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,2,3), (4,5,6)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,0,0), (0,0,1), (0,0,1)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,2,3), (4,5,6), (7,8,9)\\} \\subset \\mathbb{R}^3$? </li>\n<br>\n<li> Do there always exist $n$ vectors that span $\\mathbb{R}^n$?  Are they linearly independent?</li>\n<br>\n<li> Can $\\mathbb{R}^n$ be spanned by less than $n$ vectors?  Rephrase this as a question about systems of lienar equations.</li>\n</ol>\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠c585f10d-4a6f-4ad3-b769-cbfb575c9a03r︠
# This is all in Sage... but you'll have to master this class to understand what it means.

span(QQ, [ [1,2,3], [4,5,6], [7,8,9] ])
︡6b160ae2-da71-4ef7-9882-1dbfb06dd287︡{}︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -1]\n[ 0  1  2]"}︡{"stdout":"\n"}︡{"stdout":"","done":true}︡
︠2fe696f6-96f8-4703-846c-9f2a115f61e7︠


