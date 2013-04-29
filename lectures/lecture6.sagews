
︠75ef5792-f8d6-4f72-989a-3524fdb3cf95︠
%md
# Lecture 6 (Math 308):
## Matrix Inverses (part 2); start on Linear Independence
### William Stein
### Reminder: start screen recording!!!!

︡c5955ce2-05df-46e3-8312-10d3f46d6147︡{}︡{"html":"<h1>Lecture 6 (Math 308):</h1>\n\n<h2>Matrix Inverses (part 2); start on Linear Independence</h2>\n\n<h3>William Stein</h3>\n\n<h3>Reminder: start screen recording!!!!</h3>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠d3168c05-a8ae-4cab-8eab-6b092ee8451b︠


md(r"""
If $A$ is an invertible matrix, write $A^{-1}$ for *the* inverse of $A$, if it exists.

- Question I left you with last time:
$$
A=
\left(\begin{array}{rrr}
1 & 2 & 3 \\\\
4 & 5 & 6 \\\\
7 & 8 & 9
\end{array}\right)
$$

## Here is **one way** to find the inverse of a matrix, in general.
This problem is exactly the same as solving $AX = I\_n$, which we can solve by solving for each column of $I\_n$.  (Here, explain on the board how we can use the $AX = $ same as applying $A$ to the columns of $X$.)  We can do the work for all the columns at once.

An algorithm to compute $A^{-1}$ if it exists (or prove it doesn't exist):

- Form the augmented matrix $[A|I]$
- Put $[A|I]$ in reduced row echelon form, which we write as $[E|F]$.
- If $A$ is invertible, then $[E|F] = [I|A^{-1}]$.
""")

︡158cc2c1-d380-4d39-9654-7fccb48a529a︡{}︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n"}︡{"stderr":"  File \"/home/wstein/.sagemathcloud/sage_server.py\", line 406, in execute\n"}︡{"stderr":"    exec compile(block, '', 'single') in namespace, locals\n"}︡{"stderr":"  File \"\", line 22, in <module>\n"}︡{"stderr":"  File \"/home/wstein/.sagemathcloud/sage_salvus.py\", line 2244, in md\n"}︡{"stderr":"    import markdown2\n"}︡{"stderr":"ImportError: No module named markdown2\n"}︡{"stdout":"","done":true}︡
︠50b4fc63-305f-4169-93f3-0b729603c0cd︠
AI = matrix(3,6,[1,2,3,1,0,0,  4,5,6,0,1,0,  7,8,13,0,0,1])
AI.rref()
︡43fb5e1e-56db-4a71-986b-a85aca1605f3︡{}︡{"stdout":"[     1      0      0 -17/12    1/6    1/4]\n[     0      1      0    5/6    2/3   -1/2]\n[     0      0      1    1/4   -1/2    1/4]"}︡{"stdout":"\n"}︡{"stdout":"","done":true}︡
︠8828a3d2-3dfe-4886-a97d-1564ac3d1ccd︠










md(r"""
**Proposition:**  *The matrix $A$ is invertible if and only if $Ax = b$ has a unique solution for every $b$.*

One implication is easy.  If $A$ is invertible, then the only possible solution is $x = A^{-1} b$ and this $x$ is in fact a solution.

The other implication is harder.  If $Ax=b$ has exactly one solution, then when we solve $Ax=b$ by putting $[A|b]$ into reduced row echelon form, there are no non-pivot columns.  Since $A$ is square, this means the reduced row echelon form of $[A|b]$ is $[I|x]$.  But the first $n$ columns of the reduced row echelon form of $[A|b]$ depend only on $A$ (not on $b$), so if we let $b$ equal each of the columns of $I_n$, there will always be a solution, hence $A$ has an inverse.


<br>
**Note the surprising idea above:** The number of solutions of $Ax=b$ has little to do with $b$ and a *lot* to do with $A$!   More precisely, if we fix a matrix $A$, then for each $b$ there are either no solution or there is a $d$-dimensional space of solutions, where $d$ is the number of non-pivot columns.  Notice that $d$ only depends on $A$, since when you compute the rref of $[A|b]$, what happens with the first $n$ columns has nothing to do with $b$.
""")





︡609afccd-9a44-45fb-bf3a-f1ef0ccfb717︡{"done":false,"event":"output"}︡{"html":"<p><strong>Proposition:</strong>  <em>The matrix $A$ is invertible if and only if $Ax = b$ has a unique solution for every $b$.</em></p>\n\n<p>One implication is easy.  If $A$ is invertible, then the only possible solution is $x = A^{-1} b$ and this $x$ is in fact a solution.</p>\n\n<p>The other implication is harder.  If $Ax=b$ has exactly one solution, then when we solve $Ax=b$ by putting $[A|b]$ into reduced row echelon form, there are no non-pivot columns.  Since $A$ is square, this means the reduced row echelon form of $[A|b]$ is $[I|x]$.  But the first $n$ columns of the reduced row echelon form of $[A|b]$ depend only on $A$ (not on $b$), so if we let $b$ equal each of the columns of $I_n$, there will always be a solution, hence $A$ has an inverse.</p>\n\n<p><br>\n<strong>Note the surprising idea above:</strong> The number of solutions of $Ax=b$ has little to do with $b$ and a lot to do with $A$.   If you fix a matrix $A$, then for each $b$ there are either no solution or there is a $d$-dimensional space of solutions, where $d$ is the number of non-pivot columns.  Notice that $d$ only depends on $A$, since when you compute the rref of $[A|b]$, what happens with the first $n$ columns has nothing to do with $b$.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠d6cee4af-94a5-444b-9136-9c3809ab080e︠










md(r"""
To get more of a feeling for inverses, let's prove the following:

1. If $A$ is an invertible matrix, then $(A^{-1})^{-1} = A$.

2. If $A$ and $B$ are invertible $n\times n$ matrices, then $(AB)^{-1} = B^{-1} A^{-1}$.

""")




︡fa5373f3-e5a4-4465-95d2-31af793e9509︡{"done":false,"event":"output"}︡{"html":"<p>To get more of a feeling for inverses, let's prove the following:</p>\n\n<ol>\n<li><p>If $A$ is an invertible matrix, then $(A^{-1})^{-1} = A$.</p></li>\n<li><p>If $A$ and $B$ are invertible $n\\times n$ matrices, then $(AB)^{-1} = B^{-1} A^{-1}$.</p></li>\n</ol>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠f995792e-0b0d-4453-83ba-d90d2f23c252︠
md("## A random matrix and its inverse:")

A = random_matrix(ZZ,4);
show([A, A^(-1)])
︡7784daf2-72d7-4550-8a52-ce7819db1a85︡{"done":false,"event":"output"}︡{"html":"<h2>A random matrix and its inverse:</h2>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrrr}\n-5 & 0 & -1 & 1 \\\\\n-1 & -2 & -9 & -1 \\\\\n-401 & 0 & 6 & -1 \\\\\n0 & -4 & -1 & 1\n\\end{array}\\right), \\left(\\begin{array}{rrrr}\n-\\frac{7}{1641} & -\\frac{2}{1641} & -\\frac{4}{1641} & \\frac{1}{1641} \\\\\n\\frac{803}{3282} & -\\frac{5}{3282} & -\\frac{5}{1641} & -\\frac{409}{1641} \\\\\n-\\frac{1201}{8205} & -\\frac{812}{8205} & \\frac{17}{8205} & \\frac{406}{8205} \\\\\n\\frac{6829}{8205} & -\\frac{862}{8205} & -\\frac{83}{8205} & \\frac{431}{8205}\n\\end{array}\\right)\\right]","display":true},"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠ae211afe-2b66-414c-a558-99ef45818ceb︠
%var a,b,c,d
A = matrix(2,4,[a,b, 1,0,  c,d, 0,1])
show(A.rref())
︡ab635efc-5842-47c6-b6d0-8032b3f27480︡{}︡{"tex":{"tex":"\\left(\\begin{array}{rrrr}\n1 & 0 & -\\frac{b c}{{\\left(\\frac{b c}{a} - d\\right)} a^{2}} + \\frac{1}{a} & \\frac{b}{{\\left(\\frac{b c}{a} - d\\right)} a} \\\\\n0 & 1 & \\frac{c}{{\\left(\\frac{b c}{a} - d\\right)} a} & -\\frac{1}{\\frac{b c}{a} - d}\n\\end{array}\\right)","display":true}}︡{"stdout":"","done":true}︡
︠b3137098-e22f-49fa-9099-03fc1721fe9f︠




md(r"""
# New Topic: Vectors, Matrics, and Linear Independence

- When I say **vector** I mean an $n\times 1$ matrix.  You can think of a vector as an arrow from the origin to the point in space with those $n$ coordinates.

- We will denote the set of all of vectors with $n$ real number entries by $\mathbb{R}^n$. Similarly, if the entries are complex numbers, we write $\mathbf{C}^n$, if rational numbers, we write $\mathbf{Q}^n$, and if the entries are numbers modulo a prime $p$, we write $\mathbb{F}_{p}^n$.

- If $A$ is an $n\times m$ matrix and $v\in \mathbb{R}^m$, then $Av$ is a matrix with $n$ rows (and $1$ column), so $Av \in \mathbb{R}^n$.  Thus $A$ defines a *function* $\mathbb{R}^m \to \mathbb{R}^n$.  This function is called a *linear transformation*, and has many nice properties, as we will soon see.



Since it is hard to type in the slice an $n\times 1$ matrix, I'll often write "Consider the vector $v=(1,2,3)$", but I mean $v$ to be the $3 \times 1$ matrix with entries $1,2,3$.  OK?

""")





︡43f5a40e-0313-42c4-94e0-2725eb040841︡{"done":false,"event":"output"}︡{"html":"<h1>New Topic: Vectors, Matrics, and Linear Independence</h1>\n\n<ul>\n<li><p>When I say <strong>vector</strong> I mean an $n\\times 1$ matrix.  You can think of a vector as an arrow from the origin to the point in space with those $n$ coordinates. </p></li>\n<li><p>We will denote the set of all of vectors with $n$ real number entries by $\\mathbb{R}^n$. Similarly, if the entries are complex numbers, we write $\\mathbf{C}^n$, if rational numbers, we write $\\mathbf{Q}^n$, and if the entries are numbers modulo a prime $p$, we write $\\mathbb{F}_{p}^n$.</p></li>\n<li><p>If $A$ is an $n\\times m$ matrix and $v\\in \\mathbb{R}^m$, then $Av$ is a matrix with $n$ rows (and $1$ column), so $Av \\in \\mathbb{R}^n$.  Thus $A$ defines a <em>function</em> $\\mathbb{R}^m \\to \\mathbb{R}^n$.  This function is called a <em>linear transformation</em>, and has many nice properties, as we will soon see.</p></li>\n</ul>\n\n<p>Since it is hard to type in the slice an $n\\times 1$ matrix, I'll often write \"Consider the vector $v=(1,2,3)$\", but I mean $v$ to be the $3 \\times 1$ matrix with entries $1,2,3$.  OK?</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠036f3902-2be8-4482-b303-4ae81deb495a︠






html(r"""
<h3>Linear Independence: this is a new idea that will be very useful in understanding linear transformations:</h3>

<b>Definition:</b> We say that the set of vectors $\{v_1,\ldots v_k\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \ldots, c_k$ that are not all zero such that $c_1 v_1 + c_2 v_2 + \cdot c_k v_k=0$.
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

︡85c4a3fa-882f-4194-807a-6101ddc011b7︡{"done":false,"event":"output"}︡{"html":"\n<h3>Linear Independence: this is a new idea that will be very useful in understanding linear transformations:</h3>\n\n<b>Definition:</b> We say that the set of vectors $\\{v_1,\\ldots v_k\\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \\ldots, c_k$ that are not all zero such that $c_1 v_1 + c_2 v_2 + \\cdot c_k v_k=0$.\n<br><br>\n\nHuh??\n<br>\nThus:<br><br>\n<ul>\n<li> $v_1,\\ldots, v_k$ are linearly independent if when you form the matrix $A$ with columns the $v_i$, then the equation $Ax = 0$ has a unique solution (namely, $x=0$).</li>\n<br>\n<li>  (heuristically) $v_1,\\ldots, v_k$ are linearly independent if---when viewed as vectors---they all point in genuinely different directions.\n</li>\n</ul>\n\n<br><br>\nLet's try this out...\n\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠261c99bc-fe9d-461b-a5f1-3d371ed77d8d︠
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


︡8e351616-5661-46cc-a5f5-ac0b7bef72be︡{"done":false,"event":"output"}︡{"html":"<ul>\n<li><p>Are $v_1 = [1]$ and $v_2=[5]$ linearly independent?  (Can you ever have two vectors in $\\mathbb{R}^1$ that are linearly independent?)</p></li>\n<li><p>Are $v_1 = (1,2)$ and $v_2=(3,4)$ linearly independent?</p></li>\n<li><p>Are $v_1 = (1,2)$, $v_2=(3,4)$, and $v_3=(5,6)$ linearly independent?  (Can you ever have 3 vectors in $\\mathbf{R}^2$ that are linearly independent?)</p></li>\n<li><p>Are $v_1 = (1,2,3)$ and $v_2=(4,5,6)$ linearly independent?</p></li>\n<li><p>Are $v_1 = (1,2,3)$, $v_2=(4,5,6)$, and $v_3=(7,8,9)$linearly independent?</p></li>\n<li><p>If $v=(0,0,...,0)$ is the set ${v}$ linearly independent? (Nope)</p></li>\n<li><p>Is the empty set linearly independent? (Yes)</p></li>\n<li><p>The columns of a square matrix $A$ are linearly independent if and only if $A$ is invertible.</p></li>\n</ul>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠2e26772c-be41-4d0c-bc1e-a5b331f945d1︠

md("""
# Next week:
## things will get really interesting when we start talking about vector spaces!
""")



︡aa07ac5f-127c-4bf2-a082-1f93bea3d69f︡{"done":false,"event":"output"}︡{"html":"<h1>Next week:</h1>\n\n<h2>things will get really interesting when we start talking about vector spaces!</h2>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠12a916db-cc79-4c93-9e3b-511aab6d59d4︠




︠dd1c7f85-a2de-4e94-b94d-3eca861cff21︠

