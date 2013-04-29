
︠2ff86271-3c81-4b89-840b-24cf728390c3︠
md("""
# Symmetric Matrices

Recall that if $A$ is a matrix, we defined the *transpose* $A^T$ of $A$.

If $A = (a\_{i,j})$ then $A^T = (a\_{j,i})$, for example.

**Definition**: A matrix is *symmetric* if $A^T = A$.

**Surprisingly Important Fact**: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.

Let's *prove* this formula in a moment by writing it all out in detail.  This is perhaps the first such proof we've done so far.

First note this corollary:

**Corollary**: If $A$ is a matrix, then $A A^T$ is symmetric. (Thus there is a symmetric matrix naturally associated to any matrix.)

Proof: Note that $(A A^T)^T = (A^T)^T A^T = A A^T$.


That was an easy proof.  But it relies on our formula for $(AB)^T$.
""")
︡142a0ce6-0a63-475d-8703-e7375e61adac︡{"done":false,"event":"output"}︡{"html":"<h1>Symmetric Matrices</h1>\n\n<p>Recall that if $A$ is a matrix, we defined the <em>transpose</em> $A^T$ of $A$.</p>\n\n<p>If $A = (a_{i,j})$ then $A^T = (a_{j,i})$, for example.</p>\n\n<p><strong>Definition</strong>: A matrix is <em>symmetric</em> if $A^T = A$.</p>\n\n<p><strong>Surprisingly Important Fact</strong>: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.</p>\n\n<p>Let's <em>prove</em> this formula in a moment by writing it all out in detail.  This is perhaps the first such proof we've done so far.</p>\n\n<p>First note this corollary:</p>\n\n<p><strong>Corollary</strong>: If $A$ is a matrix, then $A A^T$ is symmetric. (Thus there is a symmetric matrix naturally associated to any matrix.)</p>\n\n<p>Proof: Note that $(A A^T)^T = (A^T)^T A^T = A A^T$.</p>\n\n<p>That was an easy proof.  But it relies on our formula for $(AB)^T$.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠2490972c-6ebc-496f-9e91-2e58b1b53617︠






md(r"""
**Surprisingly Important Fact**:

### If $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.

Recall our *formula* for matrix multiplication.

Write $A=(a\_{i,j})$ and $B=(b\_{j,k})$.

Then the $i,k$ entry of $AB$ is $\sum_{j=1}^m a\_{i,j} b\_{j,k}$, where $m$ is the number of columns of $A$.

Thus the $k,i$ entry of $(AB)^T$ is $\sum\_{j=1}^m a\_{i,j} b\_{j,k}$.

Next, we consider the $k,i$ entry of $B^T A^T$.

As I will explain in class in words, we see that it is $\sum\_{j=1}^{n} b\_{j,k} a\_{i,j}$.  But those are the same (multiplication of numbers commutes)!  Nice.

""")

︡77344558-a714-4c87-a816-8c8bbd018cdc︡{"done":false,"event":"output"}︡{"html":"<p><strong>Surprisingly Important Fact</strong>: </p>\n\n<h3>If $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.</h3>\n\n<p>Recall our <em>formula</em> for matrix multiplication.</p>\n\n<p>Write $A=(a_{i,j})$ and $B=(b_{j,k})$.</p>\n\n<p>Then the $i,k$ entry of $AB$ is $\\sum_{j=1}^m a_{i,j} b_{j,k}$, where $m$ is the number of columns of $A$.</p>\n\n<p>Thus the $k,i$ entry of $(AB)^T$ is $\\sum_{j=1}^m a_{i,j} b_{j,k}$.</p>\n\n<p>Next, we consider the $k,i$ entry of $B^T A^T$.</p>\n\n<p>As I will explain in class in words, we see that it is $\\sum_{j=1}^{n} b_{j,k} a_{i,j}$.  But those are the same (multiplication of numbers commutes)!  Nice.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠6399de94-bd6f-4c20-9ee5-316d0b992f5c︠









md(r"""
# Next topic: Inverses of Matrices

Recall from algebra that if you want to solve
$ax  = b$
you can just multiply both sides by $a^{-1}$ and get $x=a^{-1}b$.

We wrote a system of linear equations as
$$Ax = b.$$
where $A$ is an $n\times m$ matrix, and $x$ and $b$ are $n\times1$ matrices, and we
don't know $x$.   One way to solve for $x$ is to reduce the (augmented) matrix $[A|b]$ to reduced
row echelon form, and read off the solution(s).

Why not just multiply both sides by $A^{-1}$, whatever that is?
""")
︡fa7c80ac-d255-4294-a745-9210466744b7︡{"done":false,"event":"output"}︡{"html":"<h1>Next topic: Inverses of Matrices</h1>\n\n<p>Recall from algebra that if you want to solve\n$ax  = b$\nyou can just multiply both sides by $a^{-1}$ and get $x=a^{-1}b$.</p>\n\n<p>We wrote a system of linear equations as\n$$Ax = b.$$\nwhere $A$ is an $n\\times m$ matrix, and $x$ and $b$ are $n\\times1$ matrices, and we\ndon't know $x$.   One way to solve for $x$ is to reduce the (augmented) matrix $[A|b]$ to reduced\nrow echelon form, and read off the solution(s).</p>\n\n<p>Why not just multiply both sides by $A^{-1}$, whatever that is?</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠a94b5583-006f-43eb-8c23-b65686394afc︠







md(r"""
Let $I_n$ be the $n\times n$ identity matrix; it is the identity matrix with $1$'s down the diagonal.

**Definition:** An *inverse* of an $n\times n$ matrix $A$ (if it is exists) is a matrix $B$ such that $AB=I\_n$ and $BA=I\_n$.

Key Points:

- An inverse may or may not exist.  Can *you* think of an example right now in which there is no inverse? I won't go on with the lecture until you do.
- If there is an inverse, then it is unique.
- If $A$ has an inverse we say "A is *invertible*".
- There is an algorithm to compute the inverse (when it is exists), but it is much harder than just solving $Ax=b$ directly!
- If you want to solve $Ax=b$ for many values of $b$, then the inverse is super useful!
- In a very clever way, it turns out that this is just what is needed to solve $Ax=b$.  The fastest algorithm for solving $Ax=b$ (over the rational numbers) for a single $b$ involves solving *many* different equations $Ax=c$ modulo a prime number $p$, and combining the information together.   See [IML](https://cs.uwaterloo.ca/~astorjoh/iml.html), which Sage uses for this problem.
""")
︡bfb466a4-2d0c-407f-b455-385797a9f9b9︡{"done":false,"event":"output"}︡{"html":"<p>Let $I_n$ be the $n\\times n$ identity matrix; it is the identity matrix with $1$'s down the diagonal.</p>\n\n<p><strong>Definition:</strong> An <em>inverse</em> of an $n\\times n$ matrix $A$ (if it is exists) is a matrix $B$ such that $AB=I_n$ and $BA=I_n$.</p>\n\n<p>Key Points:</p>\n\n<ul>\n<li>An inverse may or may not exist.  Can <em>you</em> think of an example right now in which there is no inverse? I won't go on with the lecture until you do.</li>\n<li>If there is an inverse, then it is unique.</li>\n<li>If $A$ has an inverse we say \"A is <em>invertible</em>\".</li>\n<li>There is an algorithm to compute the inverse (when it is exists), but it is much harder than just solving $Ax=b$ directly!</li>\n<li>If you want to solve $Ax=b$ for many values of $b$, then the inverse is super useful!</li>\n<li>In a very clever way, it turns out that this is just what is needed to solve $Ax=b$.  The fastest algorithm for solving $Ax=b$ (over the rational numbers) for a single $b$ involves solving <em>many</em> different equations $Ax=c$ modulo a prime number $p$, and combining the information together.   See <a href=\"https://cs.uwaterloo.ca/~astorjoh/iml.html\">IML</a>, which Sage uses for this problem.</li>\n</ul>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠30de66c4-087e-4a12-a489-995bcd8300e9︠
# This uses the algorithm mentioned above, behind the scenes

A = random_matrix(ZZ, 8)
b = random_matrix(ZZ, 8, 1)
show([A,b])
show(A \ b)

︡16a990a1-5d69-4091-9058-1b3b4b6c2a17︡{"done":false,"event":"output"}︡{"tex":{"tex":"\\left[\\left(\\begin{array}{rrrrrrrr}\n-1 & 3 & 0 & 0 & -1 & -2 & -1 & 1 \\\\\n-11 & 6 & 1 & 1 & 4 & -2 & -1 & 1 \\\\\n1 & 0 & 1 & 0 & 1 & 2 & -3 & 2 \\\\\n1 & -1 & 0 & 1 & 0 & -1 & -1 & -79 \\\\\n-1 & -2 & 4 & -2 & 1 & 226 & -1 & 1 \\\\\n2 & -2 & 90 & 1 & -3 & -1 & 4 & 1 \\\\\n-19 & -2 & 0 & 1 & -1 & 2 & 0 & 1 \\\\\n3 & 0 & 1 & 4 & 2 & 1 & 3 & 1\n\\end{array}\\right), \\left(\\begin{array}{r}\n0 \\\\\n2 \\\\\n0 \\\\\n1 \\\\\n1 \\\\\n1 \\\\\n0 \\\\\n1\n\\end{array}\\right)\\right]","display":true},"done":false,"event":"output"}︡{"tex":{"tex":"\\left(\\begin{array}{r}\n-\\frac{64198678}{2813498539} \\\\\n\\frac{327531273}{2813498539} \\\\\n\\frac{53228419}{2813498539} \\\\\n\\frac{198943470}{2813498539} \\\\\n\\frac{750048918}{2813498539} \\\\\n\\frac{13754519}{2813498539} \\\\\n\\frac{228118615}{2813498539} \\\\\n-\\frac{41115926}{2813498539}\n\\end{array}\\right)","display":true},"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠66f5d12c-a143-4c81-b304-d970495a04ab︠
# Incidentally, the ENTRIES of the inverse
# of A are all typically huge:

show(A^(-1))

︡bb4c7fa6-39c4-4996-b68a-e03c8342cda1︡{"done":false,"event":"output"}︡{"tex":{"tex":"\\left(\\begin{array}{rrrrrrrr}\n\\frac{31179762}{2813498539} & -\\frac{52468469}{2813498539} & \\frac{47386659}{2813498539} & \\frac{47286}{2813498539} & \\frac{186990}{2813498539} & -\\frac{14014}{97017191} & -\\frac{110439991}{2813498539} & \\frac{40910390}{2813498539} \\\\\n\\frac{537287961}{2813498539} & \\frac{159231938}{2813498539} & -\\frac{237191950}{2813498539} & \\frac{1219262}{2813498539} & \\frac{9462477}{2813498539} & \\frac{16166}{97017191} & -\\frac{133662436}{2813498539} & -\\frac{2083156}{2813498539} \\\\\n-\\frac{14715345}{2813498539} & \\frac{48088192}{8440495617} & \\frac{89298359}{8440495617} & \\frac{2876147}{8440495617} & -\\frac{50353}{8440495617} & \\frac{3193579}{291051573} & -\\frac{15955988}{8440495617} & -\\frac{31930712}{8440495617} \\\\\n\\frac{677814858}{2813498539} & -\\frac{766962452}{8440495617} & \\frac{1600322441}{8440495617} & \\frac{91893260}{8440495617} & -\\frac{18600430}{8440495617} & -\\frac{1091213}{291051573} & \\frac{753578482}{8440495617} & \\frac{2089107661}{8440495617} \\\\\n-\\frac{955332863}{2813498539} & \\frac{1230445673}{8440495617} & \\frac{373341304}{8440495617} & -\\frac{20864837}{8440495617} & -\\frac{12180362}{8440495617} & -\\frac{533656}{291051573} & -\\frac{569572060}{8440495617} & -\\frac{162223369}{8440495617} \\\\\n\\frac{14026746}{2813498539} & -\\frac{7888991}{8440495617} & -\\frac{6408379}{8440495617} & \\frac{1018862}{8440495617} & \\frac{37586816}{8440495617} & -\\frac{59855}{291051573} & \\frac{3092932}{8440495617} & \\frac{20171656}{8440495617} \\\\\n-\\frac{299744860}{2813498539} & \\frac{353700160}{8440495617} & -\\frac{2573688589}{8440495617} & -\\frac{75126334}{8440495617} & \\frac{20287781}{8440495617} & \\frac{816367}{291051573} & -\\frac{294150647}{8440495617} & \\frac{8119435}{8440495617} \\\\\n\\frac{5790187}{2813498539} & -\\frac{22124998}{8440495617} & \\frac{63723484}{8440495617} & -\\frac{104784947}{8440495617} & -\\frac{1320272}{8440495617} & -\\frac{24535}{291051573} & \\frac{14105108}{8440495617} & \\frac{27718952}{8440495617}\n\\end{array}\\right)","display":true},"done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠71ca7162-7a25-4b44-a431-9d44f3186e53︠
# It takes a fraction of a second to solve A*x = b
# when A is a 200 x 200 matrix.
A = random_matrix(ZZ,200)
b = random_matrix(ZZ,200,1)
%time x = A \ b

# The entries in the answer are HUGE.
x[0]   # <-- this is just the FIRST ENTRY!
︡e9af7553-ae4b-438a-b669-058a8cfa8b13︡{"done":false,"event":"output"}︡{"stdout":"CPU time: 0.19 s, Wall time: 0.18 s","done":false,"event":"output"}︡{"stdout":"\n","done":false,"event":"output"}︡{"stdout":"(-342267322409713715929354326711645377082911119884336076640198360800436985430879878798891409305842672745875615286798539304134016608713806976433812414674914939160558205395360778154931737481236152160266233632530099386160283284755103793296734836273857294025370542772132671434485840564316028865669238128120933969430058838788036266149910803599303068608770831573218270288667622146265583373018234872507224872405516914877820491331140090581008490823753557043992316525306594571914506107213/67221859132836909722887205852121213125416503917480577356273528318744003334714003501635595855949464943469316772181436732653705440519306764880971609114559823275601596945413148370397207382260554588522647740800863654233671196901199960478591289343517207414911282109078029470566989448789960849728639830971051819831249756654213924367904781531814746714785231628806926270770110646274321989368750015980832888731422421462470947517713134710109339221965554928880176496028695170803666092614)","done":false,"event":"output"}︡{"stdout":"\n","done":false,"event":"output"}︡{"stdout":"","done":true,"event":"output"}︡
︠7a88e081-bded-4a18-950b-5f82ea26dd09︠

md(r"""
So now that you find inverses interesting, let's study them.

**Proposition:**  If $A$ has an inverse, then it is unique.

Why?  Suppose $B$ and $C$ are both inverses of $A$.  This simply means that
$$AB = BA = I$$
and
$$AC = CA = I.$$

Multiply the equation $AB=I$ through on the left by $C$ to get $C(AB) = C$.
But $C(AB) = (CA)B$, and from the section equation above, we have $CA=I$, so we get $B=IB=C$, as claimed.


""")







︡6e0af743-a0a3-458a-b605-a9fc778d1da7︡{"done":false,"event":"output"}︡{"html":"<p>So now that you find inverses interesting, let's study them.</p>\n\n<p><strong>Proposition:</strong>  If $A$ has an inverse, then it is unique.</p>\n\n<p>Why?  Suppose $B$ and $C$ are both inverses of $A$.  This simply means that\n$$AB = BA = I$$\nand\n$$AC = CA = I$$.</p>\n\n<p>Multiply the equation $AB=I$ through on the left by $C$ to get $C(AB) = C$. <br />\nBut $C(AB) = (CA)B$, and from the section equation above, we have $CA=I$, so we get $B=IB=C$, as claimed.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠4e1479d9-6ccb-4d25-a8ec-b9939dc006b8︠










md(r"""
If $A$ is an invertible matrix, write $A^{-1}$ for *the* inverse of $A$.

- What is the inverse of $A=[2]$  (here $n=1$)?
- What is the inverse of $$A=\left(\begin{array}{rr}1 & 2 \\\\ 3 & 4 \end{array}\right)?$$

## How can we find the inverse of a matrix in general?
Answer: we already know how!  It's exactly the same as solving $AX = I\_n$, which we could solve for each column of $I\_n$.  (Here, explain on the board how we can use the $AX = $ same as applying $A$ to the columns of $X$.)  We can do the work for all the columns at once.

An algorithm to compute $A^{-1}$ if it exists (or prove it doesn't exist):

- Form the augmented matrix $[A|I]$
- Put it in reduced row echelon form, as written as $[E|F]$.
- If $A$ is invertible, then $[E|F] = [I|A^{-1}]$.   (This requires some thought to believe.)
""")
︡a7be9128-74ea-41f6-9a2a-f298263b8dc7︡{"done":false,"event":"output"}︡{"html":"<p>If $A$ is an invertible matrix, write $A^{-1}$ for <em>the</em> inverse of $A$.</p>\n\n<ul>\n<li>What is the inverse of $A=[2]$  (here $n=1$)?</li>\n<li>What is the inverse of $$A=\\left(\\begin{array}{rr}1 &amp; 2 \\\\ 3 &amp; 4 \\end{array}\\right)?$$</li>\n</ul>\n\n<h2>How can we find the inverse of a matrix in general?</h2>\n\n<p>Answer: we already know how!  It's exactly the same as solving $AX = I_n$, which we could solve for each column of $I_n$.  (Here, explain on the board how we can use the $AX = $ same as applying $A$ to the columns of $X$.)  We can do the work for all the columns at once.</p>\n\n<p>An algorithm to compute $A^{-1}$ if it exists (or prove it doesn't exist):</p>\n\n<ul>\n<li>Form the augmented matrix $[A|I]$</li>\n<li>Put it in reduced row echelon form, as written as $[E|F]$.</li>\n<li>If $A$ is invertible, then $[E|F] = [I|A^{-1}]$.   (This requires some thought to believe.)</li>\n</ul>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠8828a3d2-3dfe-4886-a97d-1564ac3d1ccd︠
md(r"""

So, what happens with
$$
A=
\left(\begin{array}{rrr}
1 & 2 & 3 \\\\
4 & 5 & 6 \\\\
7 & 8 & 9
\end{array}\right)
$$

**Observation:**  The matrix $A$ is invertible if and only if $Ax = b$ has a unique solution.

One implication is easy.  If $A$ is invertible, then we have to have $x = A^{-1} b$.

The other implication is harder.  If $Ax=b$ has exactly one solution, then when we solve $Ax=b$ by putting $[A|b]$ into reduced row echelon form, there are no non-pivot columns.  Since $A$ is square, this means the reduced row echelon form of $[A|b]$ is $[I|x]$.  But the first $n$ columns of the reduced row echelon form of $[A|b]$ depend only on $A$ (not on $b$), so when let $b$ equal each of the columns of $I_n$, there will always be a solution, hence $A$ has an inverse.
""")

︡7796dc8f-24c6-41cd-be62-11e6d1bf3596︡{"done":false,"event":"output"}︡{"html":"<p>So, what happens with\n$$\nA=\n\\left(\\begin{array}{rrr}\n1 &amp; 2 &amp; 3 \\\\\n4 &amp; 5 &amp; 6 \\\\\n7 &amp; 8 &amp; 9\n\\end{array}\\right)\n$$</p>\n\n<p><strong>Observation:</strong>  The matrix $A$ is invertible if and only if $Ax = b$ has a unique solution.</p>\n\n<p>One implication is easy.  If $A$ is invertible, then we have to have $x = A^{-1} b$.</p>\n\n<p>The other implication is harder.  If $Ax=b$ has exactly one solution, then when we solve $Ax=b$ by putting $[A|b]$ into reduced row echelon form, there are no non-pivot columns.  Since $A$ is square, this means the reduced row echelon form of $[A|b]$ is $[I|x]$, since $A$ is square.  But the first $n$ columns of the reduced row echelon form of $[A|b]$ depend only on $A$ (not on $b$), so when let $b$ equal each of the columns of $I_n$, there will always be a solution, hence $A$ has an inverse.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠d6cee4af-94a5-444b-9136-9c3809ab080e︠










md(r"""
Prove the following for yourself:

1. If $A$ is an invertible matrix, then $(A^{-1})^{-1} = A$.

2. If $A$ and $B$ are invertible $n\times n$ matrices, then $(AB)^{-1} = B^{-1} A^{-1}$.

""")




︡86e44795-af74-478c-b3f6-ec35bd1e99de︡{"done":false,"event":"output"}︡{"html":"<p>Prove the following for yourself:</p>\n\n<ol>\n<li><p>If $A$ is an invertible matrix, then $(A^{-1})^{-1} = A$.</p></li>\n<li><p>If $A$ and $B$ are invertible $n\\times n$ matrices, then $(AB)^{-1} = B^{-1} A^{-1}$.</p></li>\n</ol>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠2e26772c-be41-4d0c-bc1e-a5b331f945d1︠












︠eebc7e06-3fa8-4de8-b5fe-d3b32cfee1dd︠


