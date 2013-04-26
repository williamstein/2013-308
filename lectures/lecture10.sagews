︠f84dfeba-a90b-4c16-8ce9-583ba652f62bi︠
%html
<h1>Lecture 10: Review for Midterm 1</h1>
<h2>Reminders</h2>
<ul>
    <li>To me: start Google+ Hangout!</li>
    <li>Midterm 1 is in class on Wednesday; you may bring a double-sided piece of paper (and a calculator if you want)<br><br></li>
    <li>I have office hours 12:30-2:00 tomorrow (Tuesday) in Padelford C423.<br><br></li>
    <li>Ask me questions right after class <em>today</em>.<br><br></li>
</ul>
︡2cc1fa79-e01c-4f56-983c-31efd298ea26︡{"html":"<h1>Lecture 10: Review for Midterm 1</h1>\n<h2>Reminders</h2>\n<ul>\n    <li>To me: start Google+ Hangout!</li>\n    <li>Midterm 1 is in class on Wednesday; you may bring a double-sided piece of paper (and a calculator if you want)<br><br></li>\n    <li>I have office hours 12:30-2:00 tomorrow (Tuesday) in Padelford C423.<br><br></li>\n    <li>Ask me questions right after class <em>today</em>.<br><br></li>\n</ul>"}︡
︠def7a172-b17d-472d-ab13-78c1a98250bei︠

%html
<h2>Midterm 1 is about these sections of the book</h2>

<pre>
    - 2.3 - spanning sets and linear independence
    - 3.1 - matrix operations
    - 3.2 - matrix algebra
    - 3.3 - the inverse of a matrix
    - 3.5 - subspaces, basis, dimension, and rank
</pre>
<br><br>

<h4>This review: for each section, list keys ideas and discuss two practice exercise.</h4>








︡8a1ca322-b1b3-48d4-ab7d-60253ec8f4a8︡{"html":"<h2>Midterm 1 is about these sections of the book</h2>\n\n<pre>\n    - 2.3 - spanning sets and linear independence\n    - 3.1 - matrix operations\n    - 3.2 - matrix algebra\n    - 3.3 - the inverse of a matrix\n    - 3.5 - subspaces, basis, dimension, and rank\n</pre>\n<br><br>\n\n<h4>This review: for each section, list keys ideas and discuss two practice exercise.</h4>"}︡
︠97f0039f-06ad-4cee-8881-7fa4b8c2d50b︠






︠c2c90c9b-3589-4184-9a32-2479cca29e73i︠
%md
# 2.3: Spanning sets and linear independence
︡e344e6cd-6e3f-42fd-ba76-e8d30bd7f796︡{"html":"<h1>2.3: Spanning sets and linear independence</h1>\n"}︡
︠c083a0b2-f157-4278-a64e-867eeee62d7ci︠
%md
### Key Ideas
- A **linear combination** of vectors $v_1, \ldots, v_k$ is any sum of the form $c_1 v_1 + \cdots + c_k v_k$, with $c_i$ numbers.

- The **span** of vectors $v_1, \ldots, v_k$ is the set of all linear combinations of the $v_i$.  We denote this $${\rm span}(v_1, \ldots, v_k).$$

- The span of $v_1, \ldots, v_k$ is exactly the same as the span of the vectors that are the rows of the reduced row echelon form of the matrix with rows $v_1,\ldots, v_k$.  Thus *you* can tell whether or not two spans are equal.

︡d802d5bb-f143-4915-8d73-c3696b46f9a5︡{"html":"<h3>Key Ideas</h3>\n\n<ul>\n<li><p>A <strong>linear combination</strong> of vectors $v_1, \\ldots, v_k$ is any sum of the form $c_1 v_1 + \\cdots + c_k v_k$, with $c_i$ numbers.</p></li>\n<li><p>The <strong>span</strong> of vectors $v_1, \\ldots, v_k$ is the set of all linear combinations of the $v_i$.  We denote this $${\\rm span}(v_1, \\ldots, v_k).$$</p></li>\n<li><p>The span of $v_1, \\ldots, v_k$ is exactly the same as the span of the vectors that are the rows of the reduced row echelon form of the matrix with rows $v_1,\\ldots, v_k$.  Thus <em>you</em> can tell whether or not two spans are equal.</p></li>\n</ul>\n"}︡
︠ff04a4b8-4d3a-4173-8119-1a0dc0968099︠
%hide
%md
### Problem
Is $(7,8,9)$ a linear combination of the vectors $(1,2,3)$ and $(4,5,6)$?


︡69fe322d-a5ae-461e-b910-893dbe941efb︡{"html":"<h3>Problem</h3>\n\n<p>Is $(7,8,9)$ a linear combination of the vectors $(1,2,3)$ and $(4,5,6)$?</p>\n"}︡
︠414ee046-8800-476b-8b3b-4dfaacf23593i︠
md("""
Below you may use the following rref's below (on exam I'll
give a table like this of useful and useless rrefs).
""")
a = [matrix(QQ,2,[[1,2], [3,4]]), matrix(QQ,3,3,[1..9]), matrix(QQ,2,3,[1,2,3,4,5,7]),
     matrix(QQ,2,3,[4,5,7,7,8,9])]
for A in a:
    show([A, A.rref()])
`
︡73ebb174-09b0-467e-9ea0-de2f662d232f︡{"html":"<p>Below you may use the following rref&#8217;s below (on exam I&#8217;ll \ngive a table like this of useful and useless rrefs).</p>\n"}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rr}\n1 & 2 \\\\\n3 & 4\n\\end{array}\\right), \\left(\\begin{array}{rr}\n1 & 0 \\\\\n0 & 1\n\\end{array}\\right)\\right]","display":true}}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrr}\n1 & 2 & 3 \\\\\n4 & 5 & 6 \\\\\n7 & 8 & 9\n\\end{array}\\right), \\left(\\begin{array}{rrr}\n1 & 0 & -1 \\\\\n0 & 1 & 2 \\\\\n0 & 0 & 0\n\\end{array}\\right)\\right]","display":true}}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrr}\n1 & 2 & 3 \\\\\n4 & 5 & 7\n\\end{array}\\right), \\left(\\begin{array}{rrr}\n1 & 0 & -\\frac{1}{3} \\\\\n0 & 1 & \\frac{5}{3}\n\\end{array}\\right)\\right]","display":true}}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrr}\n4 & 5 & 7 \\\\\n7 & 8 & 9\n\\end{array}\\right), \\left(\\begin{array}{rrr}\n1 & 0 & -\\frac{11}{3} \\\\\n0 & 1 & \\frac{13}{3}\n\\end{array}\\right)\\right]","display":true}}︡
︠26e472b0-e33d-4521-8139-115fa9954c3b︠
%md
### Problem: which assertions are true?

1. We have ${\rm span}((1,2),(3,4)) = {\rm span}((1,0), (0,1))$.
2. We have ${\rm span}((1,2,3),(4,5,6)) = {\rm span}((4,5,6), (7,8,9))$.
3. We have ${\rm span}((1,2,3),(4,5,6),(7,8,9)) = {\rm span}((1,0,-1),(1,1,1))$.
4. We have ${\rm span}((1,2,3),(4,5,7)) = {\rm span}((4,5,7), (7,8,9))$.

︡e20d0363-4aca-42c5-a4ec-14d03b751ce1︡{"html":"<h3>Problem: which assertions are true?</h3>\n\n<ol>\n<li>We have ${\\rm span}((1,2),(3,4)) = {\\rm span}((1,0), (0,1))$.</li>\n<li>We have ${\\rm span}((1,2,3),(4,5,6)) = {\\rm span}((4,5,6), (7,8,9))$.</li>\n<li>We have ${\\rm span}((1,2,3),(4,5,6),(7,8,9)) = {\\rm span}((1,0,-1),(1,1,1))$.</li>\n<li>We have ${\\rm span}((1,2,3),(4,5,7)) = {\\rm span}((4,5,7), (7,8,9))$.</li>\n</ol>\n"}︡
︠d268cab3-966b-4faf-8da9-63909cd3174c︠
%md
### Problem: which assertions are true?

1. Any two vectors in $\mathbb{R}^3$ are linearly independent.
2. Any three vectors in $\mathbb{R}^2$ are linearly dependent.
3. There are only two possible spans in $\mathbb{R}^1$. (i.e., two distinct sets that are spans)
4. There are only three possibles spans in $\mathbb{R}^2$.
5. It is possible for 6 vectors to be linearly independent in $\mathbb{R}^5$.

︡094fb84b-dca5-4452-8e56-f579fb42c31a︡{"html":"<h3>Problem: which assertions are true?</h3>\n\n<ol>\n<li>Any two vectors in $\\mathbb{R}^3$ are linearly independent.</li>\n<li>Any three vectors in $\\mathbb{R}^2$ are linearly dependent.</li>\n<li>There are only two possible spans in $\\mathbb{R}^1$. (i.e., two distinct sets that are spans)</li>\n<li>There are only three possibles spans in $\\mathbb{R}^2$.</li>\n<li>It is possible for 6 vectors to be linearly independent in $\\mathbb{R}^5$.</li>\n</ol>\n"}︡
︠fbfb41e1-9c74-4849-b9f0-45d064c4019e︠

︠2a4c2acc-154f-40d6-8b38-df75da656a4di︠
%md
# 3.1: Matrix operations
︡3c353f5f-f02a-4ad4-aa61-4cb18edb914e︡{"html":"<h1>3.1: Matrix operations</h1>\n"}︡
︠fad7ee31-f53d-4771-a999-6ac8fa4fa25ci︠
%md
### Key Ideas
- The **definition** of matrix addition and matrix multiplication.
- Notion of **transpose** and **symmetric** matrix.
- Raising a matrix to a power: $A^k = A \cdot A \cdots A$.
- Precisely when we **defined** what $A+B$ and $AB$ make sense, and what they are.

︡09a6bda5-5b54-4e21-9753-13321e857b1a︡{"html":"<h3>Key Ideas</h3>\n\n<ul>\n<li>The <strong>definition</strong> of matrix addition and matrix multiplication.</li>\n<li>Notion of <strong>transpose</strong> and <strong>symmetric</strong> matrix.</li>\n<li>Raising a matrix to a power: $A^k = A \\cdot A \\cdots A$.</li>\n<li>Precisely when we <strong>defined</strong> what $A+B$ and $AB$ make sense, and what they are.</li>\n</ul>\n"}︡
︠79f2a149-6f56-485f-b211-a960425f86bd︠

︠ad8fc21d-6326-48f8-8acb-395781f686e9i︠
%md
### Problem: Which of the following matrix multiplies is correct?

︡aaa4eb83-198c-4f77-b477-3d44dc46bed1︡{"html":"<h3>Problem: Which of the following matrix multiplies is correct?</h3>\n"}︡
︠c392fb9b-faa5-4283-a163-d631874367a2︠
for k in [2,3]:
    for i in [1..2]:
        B = 5-k
        a = random_matrix(ZZ,k,x=-B,y=B); b = random_matrix(ZZ,k,x=-B,y=B)
        c = a*b
        if randint(0,1) == 0:
            c[randint(0,k-1),randint(0,k-1)] += 1
        html("$$%s %s =_? %s$$"%(latex(a), latex(b), latex(c)))
︡d61138c0-f410-4243-a8a2-9be608aceaf9︡{"html":"$$\\left(\\begin{array}{rr}\n-1 & 2 \\\\\n-1 & 0\n\\end{array}\\right) \\left(\\begin{array}{rr}\n2 & -2 \\\\\n-1 & -2\n\\end{array}\\right) =_? \\left(\\begin{array}{rr}\n-4 & -2 \\\\\n-2 & 2\n\\end{array}\\right)$$"}︡{"html":"$$\\left(\\begin{array}{rr}\n1 & 2 \\\\\n-1 & -3\n\\end{array}\\right) \\left(\\begin{array}{rr}\n-1 & -2 \\\\\n-3 & -2\n\\end{array}\\right) =_? \\left(\\begin{array}{rr}\n-7 & -6 \\\\\n10 & 9\n\\end{array}\\right)$$"}︡{"html":"$$\\left(\\begin{array}{rrr}\n-1 & 0 & 0 \\\\\n1 & 1 & -2 \\\\\n0 & -1 & 0\n\\end{array}\\right) \\left(\\begin{array}{rrr}\n0 & 0 & 1 \\\\\n-2 & -2 & -1 \\\\\n0 & 1 & 1\n\\end{array}\\right) =_? \\left(\\begin{array}{rrr}\n1 & 0 & -1 \\\\\n-2 & -4 & -2 \\\\\n2 & 2 & 1\n\\end{array}\\right)$$"}︡{"html":"$$\\left(\\begin{array}{rrr}\n-2 & 1 & 1 \\\\\n-2 & 1 & 0 \\\\\n-1 & -1 & -1\n\\end{array}\\right) \\left(\\begin{array}{rrr}\n0 & -2 & -1 \\\\\n0 & -1 & -2 \\\\\n-2 & -1 & 1\n\\end{array}\\right) =_? \\left(\\begin{array}{rrr}\n-2 & 2 & 1 \\\\\n0 & 3 & 0 \\\\\n2 & 4 & 2\n\\end{array}\\right)$$"}︡
︠157bf50d-364d-4ca4-b25a-0cfb4c6aa58e︠

︠989b86f7-aa74-4abf-8f90-011e6042c378i︠
%md
### Problem: Let $A$ and $B$ be square $3\times 3$ matrices.

1. Is the product $A A^T$ of $A$ times its transpose $A^T$ necessarily a symmetric matrix?

2. Is $AB + BA$ necessarily symmetric?

︡55070aed-3330-4923-8fb8-174cd3c132b2︡{"html":"<h3>Problem: Let $A$ and $B$ be square $3\\times 3$ matrices.</h3>\n\n<ol>\n<li><p>Is the product $A A^T$ of $A$ times its transpose $A^T$ necessarily a symmetric matrix?</p></li>\n<li><p>Is $AB + BA$ necessarily symmetric?</p></li>\n</ol>\n"}︡
︠379591ce-bed5-4341-98cf-70293daf9ecf︠

︠bcd8069f-8136-4593-9fa1-2e2ebcfaf7e9i︠
%md
# 3.2: Matrix algebra
︡7389113e-335a-466f-83f7-cedd64bff7c2︡{"html":"<h1>3.2: Matrix algebra</h1>\n"}︡

︠3fb19a00-9223-4b2c-b2f4-73a89f271829i︠
%md
### Key Ideas:

- facts about matrix arithmetic such as $(A+B)+C = A+(B+C)$, $A(BC)=(AB)C$, etc.

- facts about transpose such as $(AB)^T = B^T A^T$, etc.


︡ed6d6d2c-2209-427e-9502-5b4fe287de0c︡{"html":"<h3>Key Ideas:</h3>\n\n<ul>\n<li><p>facts about matrix arithmetic such as $(A+B)+C = A+(B+C)$, $A(BC)=(AB)C$, etc.</p></li>\n<li><p>facts about transpose such as $(AB)^T = B^T A^T$, etc.</p></li>\n</ul>\n"}︡
︠70418f6e-f3bb-4ee5-8e0d-dcbc157e4000i︠
%md
### Problem: Which of these equations are true for *all* $1\times 1$ matrices $A,B,C$?

1. $A+B +C = 0$.

2. $(AB)^T = A^T B^T$.

3. $AB = BA$.

4. $(A-B)-C = A-(B-C)$.

### Problem: Which of these equations are true for *all* $3\times 3$ matrices $A,B,C$?

1. $A+B +C = 0$.

2. $(AB)^T = A^T B^T$.

3. $AB = BA$.

4. $(A-B)-C = A-(B-C)$.




︡8efa0562-4e5b-4a49-a654-b23f6228806d︡{"html":"<h3>Problem: Which of these equations are true for <em>all</em> $1\\times 1$ matrices $A,B,C$?</h3>\n\n<ol>\n<li><p>$A+B +C = 0$.</p></li>\n<li><p>$(AB)^T = A^T B^T$.</p></li>\n<li><p>$AB = BA$.</p></li>\n<li><p>$(A-B)-C = A-(B-C)$.</p></li>\n</ol>\n\n<h3>Problem: Which of these equations are true for <em>all</em> $3\\times 3$ matrices $A,B,C$?</h3>\n\n<ol>\n<li><p>$A+B +C = 0$.</p></li>\n<li><p>$(AB)^T = A^T B^T$.</p></li>\n<li><p>$AB = BA$.</p></li>\n<li><p>$(A-B)-C = A-(B-C)$.</p></li>\n</ol>\n"}︡
︠b1f70302-7b4c-4a7b-9ec8-6e02c5fe0963︠

︠4d29d9e4-9559-4c1f-a84f-d4a87e3f809ei︠

%md
# 3.3: The inverse of a matrix
︡02be3a12-4146-4041-9550-0d0a08e374da︡{"html":"<h1>3.3: The inverse of a matrix</h1>\n"}︡
︠69be8885-48d5-46d1-8339-c418374443e0i︠
%md
### Key ideas

- The identity matrix $I\_n$ (there is one for each $n\geq 1$): 1's down diagonal; 0's everywhere else.

- The **inverse** of a *square* matrix $A$ is the matrix $A^{-1}$ such that $A^{-1}A = A A^{-1}=I$.

- How to decide whether or not $A$ has an inverse (and how to find it): put $[A|I]$ in rref; if you get $[I|B]$, then $B=A^{-1}$.

- Formula for inverse of a 2x2 matrix.

- If $A$ is invertible then $Ax=b$ has exactly one solution: $x = A^{-1}b$.
︡6ad5452d-7d76-40f6-9e66-9ccc15475f18︡{"html":"<h3>Key ideas</h3>\n\n<ul>\n<li><p>The identity matrix $I_n$ (there is one for each $n\\geq 1$): 1&#8217;s down diagonal; 0&#8217;s everywhere else</p></li>\n<li><p>The <strong>inverse</strong> of a <em>square</em> matrix $A$ is the matrix $A^{-1}$ such that $A^{-1}A = A A^{-1}=I$.</p></li>\n<li><p>How to decide whether or not $A$ has an inverse (and how to find it): put $[A|I]$ in rref; if you get $[I|B]$, then $B=A^{-1}$.  </p></li>\n<li><p>Formula for inverse of a 2x2 matrix.</p></li>\n<li><p>If $A$ is invertible then $Ax=b$ has exactly one solution: $x = A^{-1}b$.</p></li>\n</ul>\n"}︡
︠cf8377c3-982a-4d1a-84ce-64b6b4fdf413oi︠
%hide
latex(matrix(ZZ,2,2,[1..4]))
︡e664ebad-e56f-4094-adad-642717871585︡{"stdout":"\\left(\\begin{array}{rr}\n1 & 2 \\\\\n3 & 4\n\\end{array}\\right)"}︡{"stdout":"\n"}︡
︠ae8aef8d-c6d6-4faf-b4c2-a0275976058e︠
%md
### Problems
1. Consider the equation $Ax = \left(\begin{array}{r}-2 \\\\1\end{array}\right)$
and suppose $A^{-1}+I=\left(\begin{array}{rr}
1 & 2 \\\\
3 & 4
\end{array}\right)$.  What is $x$?

2. If $A$ has an inverse (is invertibe), does $A^{2013}$ necessarily have an inverse?

3. For which integers $n\geq 1$ is the square matrix with entries $1,2,3,\ldots,n^2$ invertible?


︡a0a5f3c8-b6f9-4041-adcb-3dbd1283e044︡{"html":"<h3>Problems</h3>\n\n<ol>\n<li><p>Consider the equation $Ax = \\left(\\begin{array}{r}-2 \\\\1\\end{array}\\right)$\nand suppose $A^{-1}+I=\\left(\\begin{array}{rr}\n1 &amp; 2 \\\\\n3 &amp; 4\n\\end{array}\\right)$.  What is $x$?</p></li>\n<li><p>If $A$ has an inverse (is invertible), does $A^{2013}$ necessarily have an inverse?</p></li>\n<li><p>For which integers $n\\geq 1$ is the square matrix with entries $1,2,3,\\ldots,n^2$ invertible?</p></li>\n</ol>\n"}︡
︠e41dd616-8f89-4e6b-b4ef-13e206789bf3︠
`
︠0032dd75-e402-48cd-947f-29e585456cc3i︠

%md
# 3.5: Subspaces, bases
︡d70be83b-f385-4dcd-a31c-ec634a04ffe4︡{"html":"<h1>3.5: Subspaces, bases</h1>\n"}︡
︠2da22e9c-e403-44d1-8bae-905c6277fb7fi︠
%md

### Key Ideas

 - The definition of **Subspace**: a nonempty subset $S$ of $\mathbb{R}^n$ such that whenever $u,v\in S$ and $a,b\in \mathbb{R}$, then $au + bv \in S$.

 - Classification of subspaces: {origin}, line through origin, plane, etc.

 - **Theorem**: *Every subspace can be expressed as a span.*
︡7901c205-1130-4c80-9d79-057f820d4790︡{"html":"<h3>Key Ideas</h3>\n\n<ul>\n<li><p>The definition of <strong>Subspace</strong>: a nonempty subset $S$ of $\\mathbb{R}^n$ such that whenever $u,v\\in S$ and $a,b\\in \\mathbb{R}$, then $au + bv \\in S$.</p></li>\n<li><p>Classification of subspaces: {origin}, line through origin, plane, etc.</p></li>\n<li><p><strong>Theorem</strong>: <em>Every subspace can be expressed as a span.</em></p></li>\n</ul>\n"}︡
︠e827151d-fce3-47f3-8bdf-7b537c8ba969i︠
%md
### Problems:

1. Is any line in $\mathbb{R}^2$ a subspace?

2. Is the union of two subspaces a subspace?

3. Is the intersection of two subspaces a subspace?

4. Let $A=[1,1,1]$ be the $1\times 3$ matrix of $1$'s.  The set $S = \\{x\in \mathbb{R}^3 : Ax=0\\}$ is a subspace.  Express it as the span of two vectors.

︡a38eece8-4041-411d-ab73-8e643717fcbd︡{"html":"<h3>Problems:</h3>\n\n<ol>\n<li><p>Is any line in $\\mathbb{R}^2$ a subspace?</p></li>\n<li><p>Is the union of two subspaces a subspace?</p></li>\n<li><p>Is the intersection of two subspaces a subspace?</p></li>\n<li><p>Let $A=[1,1,1]$ be the $1\\times 3$ matrix of $1$&#8217;s.  The set $S = \\{x\\in \\mathbb{R}^3 : Ax=0\\}$ is a subspace.  Express it as the span of two vectors.</p></li>\n</ol>\n"}︡
︠3468ede8-becc-4f59-8e12-af9a6e2b26a1︠



















