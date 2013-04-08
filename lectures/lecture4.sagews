
︠6da954af-0f30-4b44-8430-c926de895edbr︠md("""
# Lecture 4: More Matrix Algebra
1. Algebraic Properties of Matrices (surprise: multiplication *not* commutative)
2. Symmetric Matrices (surprise: $A^T \cdot A$ is symmetric)
3. Next time: the inverse of a Matrix (surprise: sometimes it does not exist)

### REMINDERS
- office hours 12 to 1:30 tomorrow (Tuesday) in Padelford C423.
- homework due Wednesday, which means send an email to 2013uw308@gmail.com once you do it.
- next homework: assigned on Wednesday
- midterm dates: ???
""")


︡69b1d765-4b2a-40cd-88fe-266a1c7162cb︡{"done":false,"event":"output"}︡{"html":"<h1>Lecture 4: More Matrix Algebra</h1>\n\n<ol>\n<li>Algebraic Properties of Matrices (surprise: multiplication <em>not</em> commutative)</li>\n<li>Symmetric Matrices (surprise: $A^T \\cdot A$ is symmetric)</li>\n<li>The Inverse of a Matrix (surprise: sometimes it does not exist)</li>\n</ol>\n\n<h3>REMINDERS</h3>\n\n<ul>\n<li>office hours 12 to 1:30 tomorrow (Tuesday) in Padelford C423.</li>\n<li>homework due Wednesday, which means send an email to 2013uw308@gmail.com once you do it.</li>\n<li>next homework: assigned on Wednesday</li>\n<li>midterm dates: ???</li>\n</ul>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠60bc6749-5670-4e3a-8cf7-de20a70558cdr︠



md("""
# Algebraic Properties of Matrices

## Obvious
- $A+B = B+A$
- $A(B+C) = AB + AC$

## Not Obvious
- $(AB)C = A(BC)$

""")

︡c5257cd6-6bfc-4584-bcf7-27b163186bf7︡{"done":false,"event":"output"}︡{"html":"<h1>Algebraic Properties of Matrices</h1>\n\n<h2>Obvious</h2>\n\n<ul>\n<li>$A+B = B+A$</li>\n<li>$A(B+C) = AB + AC$</li>\n</ul>\n\n<h2>Not Obvious</h2>\n\n<ul>\n<li>$(AB)C = A(BC)$</li>\n</ul>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠54ca702d-9230-4964-ba86-7bf572cf9cffr︠




%md
# Distributive property: Why is
$$A(B+C) = AB + AC?$$

1. Note that $AB$ is the same as applying $A$ to each of the columns of $B$.   (A very useful conceptual trick, by the way.)

2. Check the above when $B$ and $C$ have exactly one column, where it is easy to see.




︡07408cae-206f-4ccb-8598-0fc0f9b3bcc3︡{"done":false,"event":"output"}︡{"html":"<h1>Distributive law: Why is</h1>\n\n<p>$$A(B+C) = AB + AC?$$\n1. Note that $AB$ is the same as applying $A$ to each of the columns of $B$.   (A very useful conceptual trick, by the way.)\n2. Check the above when $B$ and $C$ have exactly one column, where it is easy to see.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠f6e813ce-d944-42cb-a1ed-19b3e445faadr︠








%md

# Associative property: Why is
$$A(BC) = (AB)C$$

First, a convincing example?


︡4f345852-f13c-4ade-bc5b-37c2c5a41657︡{"done":false,"event":"output"}︡{"html":"<h1>Associative property: Why is</h1>\n\n<p>$$A(BC) = (AB)C$$\nFirst, a convincing example?</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠996884ef-d359-4788-9494-aa9fc3f8e073r︠n =4;
A = random_matrix(ZZ,n); B = random_matrix(ZZ, n); C = random_matrix(ZZ,n)
show([A,B,C])




︡fc3a3e0c-5f07-4289-9174-0b921f10f479︡{"done":false,"event":"output"}︡
︠0484357d-c6ce-4698-af9d-317dc4a394f4r︠show([A*(B*C), (A*B)*C])

︡88f18b9c-f502-44bc-bc5b-b5e5b563bb05︡{"done":false,"event":"output"}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrrr}\n0 & 0 & 0 & 0 \\\\\n305 & -2142 & -389 & -192 \\\\\n88 & -667 & -364 & -50 \\\\\n-53 & 351 & 80 & 31\n\\end{array}\\right), \\left(\\begin{array}{rrrr}\n0 & 0 & 0 & 0 \\\\\n305 & -2142 & -389 & -192 \\\\\n88 & -667 & -364 & -50 \\\\\n-53 & 351 & 80 & 31\n\\end{array}\\right)\\right]","display":true},"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠6b037042-5e23-49a4-a9e1-e3b248a7d746r︠





md("""

# The Reason Associativity works...

- We will not give a proof just yet.
- However, the *reason* is because matrice can be viewed as *functions* with matrix multiplication being the same thing as function composition, and function composition is associative: $f(g(x)) = (f\circ g)(x)$.


(Secret Reason: Matrices are functions on vectors; matrix multiplication is function composition.)
""")

︡12b89a6ed-3637-41a9-afb2-ffd8b9d88467︡{"done":false,"event":"output"}︡{"html":"<h1>The Reason Associativity works...</h1>\n\n<ul>\n<li>We will not give a proof just yet.</li>\n<li>However, the <em>reason</em> is because matrice can be viewed as <em>functions</em> with matrix multiplication being the same thing as function composition, and function composition is associative: $f(g(x)) = (f\\circ g)(x)$.</li>\n</ul>\n\n<p>(Secret Reason: Matrices are functions on vectors; matrix multiplication is function composition.)</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠b4d2d92e-b4bc-497a-ab49-1e0b3320ca93r︠










md(r"""
# And now for a surprise: matrix multiplication doesn't commute

Often $AB \neq BA$!!

- Of course, sometimes matrices do commute: for example, if both are $1\times 1$ matrices or if one of the two matrices is 0.
- *Question*: What is the simplest example of two matrices $A,B$ that do *not* commute?
- Can you think of a $3\times 3$ matrix $A\neq 0$ such that $AB=BA$ for all $3\times 3$ matrices $B$?
- Here are some random examples...
""")





︡09cbec94-6401-41fd-9714-83db6b4b84ff︡{"done":false,"event":"output"}︡{"html":"<h1>And now for a surprise: matrix multiplication doesn't commute</h1>\n\n<p>Often $AB \\neq BA$!!</p>\n\n<ul>\n<li>Of course, sometimes matrices do commute: for example, if both are $1\\times 1$ matrices or if one of the two matrices is 0.</li>\n<li><em>Question</em>: What is the simplest example of two matrices $A,B$ that do <em>not</em> commute?</li>\n<li>Can you think of a $3\\times 3$ matrix $A\\neq 0$ such that $AB=BA$ for all $3\\times 3$ matrices $B$?</li>\n<li>Here are some random examples...</li>\n</ul>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠33996dd1-6133-4500-872b-ff2b5d338d45r︠# Matrix multiplication totally fails to commute:
n=4; A = random_matrix(ZZ,n); B = random_matrix(ZZ, n)
show([A*B, B*A])

︡353cadff-c8c5-47c6-8ac8-9504c1206bf1︡{"done":false,"event":"output"}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrrr}\n-87 & -43 & -18 & 8 \\\\\n-4 & -4 & -6 & 2 \\\\\n-141 & 31 & -205 & -223 \\\\\n-45 & -15 & -183 & -181\n\\end{array}\\right), \\left(\\begin{array}{rrrr}\n-183 & 2 & 109 & 3 \\\\\n70 & -5 & 256 & 46 \\\\\n396 & -6 & -202 & 8 \\\\\n-29 & -4 & 211 & -87\n\\end{array}\\right)\\right]","display":true},"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡












︠2b57dd36-6d85-4b0f-ad71-b11a3948d8f6r︠md("""
# Symmetric Matrices

Recall that if $A$ is a matrix, we defined the *transpose* $A^T$ of $A$.

If $A = (a\_{i,j})$ then $A^T = (a\_{j,i})$, for example.

**Definition**: A matrix is *symmetric* if $A^T = A$.

**Fact**: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.

Let's *prove* this formula in a moment by writing it all out in detail.  This is perhaps the first such proof we've done so far.

First note this corollary:

**Corollary**: If $A$ is a square matrix, then $A A^T$ is symmetric.

Proof: Note that $(A A^T)^T = (A^T)^T A^T = A A^T$.
""")








︡92b55601-79ad-4dc6-9c96-9e1c1ee298a5︡{"done":false,"event":"output"}︡{"html":"<h1>Symmetric Matrices</h1>\n\n<p>Recall that if $A$ is a matrix, we defined the <em>transpose</em> $A^T$ of $A$.</p>\n\n<p>If $A = (a_{i,j})$ then $A^T = (a_{j,i})$, for example.</p>\n\n<p><strong>Definition</strong>: A matrix is <em>symmetric</em> if $A^T = A$.</p>\n\n<p><strong>Fact</strong>: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.</p>\n\n<p>Let's <em>prove</em> this formula in a moment by writing it all out in detail.  This is perhaps the first such proof we've done so far.</p>\n\n<p>First note this corollary:</p>\n\n<p><strong>Corollary</strong>: If $A$ is a square matrix, then $A A^T$ is symmetric.</p>\n\n<p>Proof: Note that $(A A^T)^T = (A^T)^T A^T = A A^T$.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠c3ce6771-995e-4db4-809e-058ab7768dcdr︠md("""
That was an easy proof.

"""
︡c4203e22-c7b2-4791-8525-095b9f7baf4b︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠7e55ba2a-094c-4e2a-b31f-24e55373161cr︠
︡5aaa9d2e-655b-4d39-87df-09622437883d︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠cac89ece-dbbc-48a5-beac-e7e82b51db10r︠
︡518f9db6-59af-4b27-b106-aedfccd635e1︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠68290b45-732e-4c50-9ea1-0a76e2810633r︠
︡f3e7c690-7066-4680-a91c-52148fb19331︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠bb6ac633-2098-42aa-94a9-0ad8d58b2a8ar︠
︡dba0e4bf-738c-4516-a4c7-058f50095d1c︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠de8fb6c6-de51-4869-9dd7-5cb53a8552a0r︠
︡53d31d43-dbed-4225-9d51-122179b1af4b︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠3e69bcfe-d621-473d-98ce-b1055ee7a766r︠
︡4584bc0b-1fc5-4a0b-ae7e-c5667df578b6︡{"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠a62400ac-7c61-4caa-9fbf-813ba1628bb0︠