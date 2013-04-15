︠2df6ba73-dee5-4316-8e43-3e77701579eer︠



md(r"""

### Reminder: my office hours are at 12:30 (not 12) due to a scheduling conflict.  So... 12:30 - 2.  Also, right after class, ask me questions for a bit.

# Lecture 7: Linear Independence

---

## New Topic: Vectors, Matrics, and Linear Independence
- When I say **vector** I mean an $n\times 1$ matrix.  You can think of a vector as an arrow from the origin to the point in space with those $n$ coordinates.

- We will denote the set of all of vectors with $n$ real number entries by $\mathbb{R}^n$. Similarly, if the entries are complex numbers, we write $\mathbf{C}^n$, if rational numbers, we write $\mathbf{Q}^n$, and if the entries are numbers modulo a prime $p$, we write $\mathbb{F}_{p}^n$.

- If $A$ is an $n\times m$ matrix and $v\in \mathbb{R}^m$, then $Av$ is a matrix with $n$ rows (and $1$ column), so $Av \in \mathbb{R}^n$.  Thus $A$ defines a *function* $\mathbb{R}^m \to \mathbb{R}^n$.  This function is called a *linear transformation*, and has many nice properties, as we will soon see.



Since it is hard to type in an $n\times 1$ matrix, I'll often write "Consider the vector $v=(1,2,3)$", but I mean $v$ to be the $3 \times 1$ matrix with entries $1,2,3$.  OK?

""")
︡888485a4-1a6f-4678-adfa-6d52467a4022︡{}︡{"html":"<h3>Reminder: my office hours are at 12:30 (not 12) due to a scheduling conflict.  So... 12:30 - 2.  Also, right after class, ask me questions for a bit.</h3>\n\n<h1>Lecture 7: Linear Independence</h1>\n\n<hr />\n\n<h2>New Topic: Vectors, Matrics, and Linear Independence</h2>\n\n<ul>\n<li><p>When I say <strong>vector</strong> I mean an $n\\times 1$ matrix.  You can think of a vector as an arrow from the origin to the point in space with those $n$ coordinates.</p></li>\n<li><p>We will denote the set of all of vectors with $n$ real number entries by $\\mathbb{R}^n$. Similarly, if the entries are complex numbers, we write $\\mathbf{C}^n$, if rational numbers, we write $\\mathbf{Q}^n$, and if the entries are numbers modulo a prime $p$, we write $\\mathbb{F}_{p}^n$.</p></li>\n<li><p>If $A$ is an $n\\times m$ matrix and $v\\in \\mathbb{R}^m$, then $Av$ is a matrix with $n$ rows (and $1$ column), so $Av \\in \\mathbb{R}^n$.  Thus $A$ defines a <em>function</em> $\\mathbb{R}^m \\to \\mathbb{R}^n$.  This function is called a <em>linear transformation</em>, and has many nice properties, as we will soon see.</p></li>\n</ul>\n\n<p>Since it is hard to type in an $n\\times 1$ matrix, I'll often write \"Consider the vector $v=(1,2,3)$\", but I mean $v$ to be the $3 \\times 1$ matrix with entries $1,2,3$.  OK?</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠89c74d12-1d83-4885-afa3-d844f034b33er︠


html(r"""
<h3>Linear Independence: this is a new idea that will be very useful in understanding linear transformations:</h3>

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
︡d159f5fe-e014-4ba3-aca4-5ba9f5bcd140︡{}︡{"html":"\n<h3>Linear Independence: this is a new idea that will be very useful in understanding linear transformations:</h3>\n\n<b>Definition:</b> We say that the set of vectors $\\{v_1,\\ldots v_k\\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \\ldots, c_k$ that are not all zero such that $c_1 v_1 + c_2 v_2 + \\cdots+ c_k v_k=0$.\n<br><br>\n\nHuh??\n<br>\nThus:<br><br>\n<ul>\n<li> $v_1,\\ldots, v_k$ are linearly independent if when you form the matrix $A$ with columns the $v_i$, then the equation $Ax = 0$ has a unique solution (namely, $x=0$).</li>\n<br>\n<li>  (heuristically) $v_1,\\ldots, v_k$ are linearly independent if---when viewed as vectors---they all point in genuinely different directions.\n</li>\n</ul>\n\n<br><br>\nLet's try this out...\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠a180712c-44a6-4393-9229-870711fb355er︠

md(r"""
* Are $v\_1 = [1]$ and $v\_2=[5]$ linearly independent?  (Can you ever have two vectors in $\mathbb{R}^1$ that are linearly independent?)

* Are $v\_1 = (1,2)$ and $v\_2=(3,4)$ linearly independent?

* Are $v\_1 = (1,2)$, $v\_2=(3,4)$, and $v\_3=(5,6)$ linearly independent?  (Can you ever have 3 vectors in $\mathbf{R}^2$ that are linearly independent?)

* Are $v\_1 = (1,2,3)$ and $v\_2=(4,5,6)$ linearly independent?

* Are $v\_1 = (1,2,3)$, $v\_2=(4,5,6)$, and $v\_3=(7,8,9)$linearly independent?

* If $v=(0,0,...,0)$ is the set $\{v\}$ linearly independent? (Nope)

* Is the empty set linearly independent? (Yes)

* The columns of a square matrix $A$ are linearly independent if and only if $A$ is invertible.
""")
︡82e9e7cc-05f9-476a-bff4-e64de509c42a︡{}︡{"html":"<ul>\n<li><p>Are $v_1 = [1]$ and $v_2=[5]$ linearly independent?  (Can you ever have two vectors in $\\mathbb{R}^1$ that are linearly independent?)</p></li>\n<li><p>Are $v_1 = (1,2)$ and $v_2=(3,4)$ linearly independent?</p></li>\n<li><p>Are $v_1 = (1,2)$, $v_2=(3,4)$, and $v_3=(5,6)$ linearly independent?  (Can you ever have 3 vectors in $\\mathbf{R}^2$ that are linearly independent?)</p></li>\n<li><p>Are $v_1 = (1,2,3)$ and $v_2=(4,5,6)$ linearly independent?</p></li>\n<li><p>Are $v_1 = (1,2,3)$, $v_2=(4,5,6)$, and $v_3=(7,8,9)$linearly independent?</p></li>\n<li><p>If $v=(0,0,...,0)$ is the set ${v}$ linearly independent? (Nope)</p></li>\n<li><p>Is the empty set linearly independent? (Yes)</p></li>\n<li><p>The columns of a square matrix $A$ are linearly independent if and only if $A$ is invertible.</p></li>\n</ul>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠cc077a9e-691b-47ec-b422-239c0497ab21r︠
html(r"""
<h1>Linear Independence of Matrices</h1>

NOTE: The same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.

<b>Definition:</b> We say that the set of matrices $\{A_1,\ldots A_k\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \cdots + c_k A_k=0$.
<br><br>

- Try some examples...


""")
︡056b60ce-03f0-4456-a1bb-fe18f7eda739︡{}︡{"html":"\n<h1>Linear Independence of Matrices</h1>\n\nThe same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.\n\n<b>Definition:</b> We say that the set of matrices $\\{A_1,\\ldots A_k\\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \\ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \\cdots + c_k A_k=0$.\n<br><br>\n\n- Try some examples...\n\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠b3e553db-b462-4706-ac93-fe2ed98c8e0fr︠




︠a8683668-fe10-40b5-a8af-70913f77b5e6︠



