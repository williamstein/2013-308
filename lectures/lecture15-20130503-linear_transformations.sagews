︠627ea726-2aa9-46b2-9537-74b9b6dc3b08i︠
%hide
%md

# Lecture 15 (May 3, 2013): Linear Transformations, part 2

### Goals today:

1. Remember to turn on G+ screencast!
2. Questions?
3. Today: Finish linear transformations; start eigenvalues and eigenvectors
︡8b7571a3-b3c7-42d4-8885-e569a00d6cc2︡{"html":"<h1>Lecture 15 (May 3, 2013): Linear Transformations, part 2</h1>\n\n<h3>Goals today:</h3>\n\n<ol>\n<li>Remember to turn on G+ screencast!</li>\n<li>Questions?</li>\n<li>Today: Finish linear transformations; start eigenvalues and eigenvectors</li>\n</ol>\n"}︡
︠d5778c59-ec8d-43e3-a76c-01366d75491f︠
︠d3f2a119-01cc-40e5-ac13-fab2a2b68a95i︠
%md

## Composing Linear Transformations

**Proposition** *The composition of two linear transformations is a linear transformation.*

Proof.

Suppose we have linear transformations $S$ and $T$ like this:
$$
   \mathbb{R}^m \xrightarrow{S} \mathbb{R}^n \xrightarrow{T} \mathbb{R}^k
$$
The claim is that doing $S$ then $T$, i.e., $T\circ S$, is a linear transformation.
Let's check this using the definition, since it is good practice.

Let $a,b \in \mathbb{R}$ and $u,v\in \mathbb{R}^m$. We have
$$
  (T\circ S)(au + bv) = T(S(au+bv)) = T(aS(u)+bS(v))
$$
$$
  =a T(S(u))+bT(S(v)) = a (T\circ S)(u) + b (T\circ S)(v).
$$


︡f56f2c4e-8b7c-4a4b-91d3-70c3dc17a3f3︡{"html":"<h2>Composing Linear Transformations</h2>\n\n<p><strong>Proposition</strong> <em>The composition of two linear transformations is a linear transformation.</em></p>\n\n<p>Proof.</p>\n\n<p>Suppose we have linear transformations $S$ and $T$ like this:\n$$\n   \\mathbb{R}^m \\xrightarrow{S} \\mathbb{R}^n \\xrightarrow{T} \\mathbb{R}^k\n$$\nThe claim is that doing $S$ then $T$, i.e., $T\\circ S$, is a linear transformation.\nLet&#8217;s check this using the definition, since it is good practice.</p>\n\n<p>Let $a,b \\in \\mathbb{R}$ and $u,v\\in \\mathbb{R}^m$. We have\n$$\n  (T\\circ S)(au + bv) = T(S(au+bv)) = T(aS(u)+bS(v)) \n$$\n$$\n  =a T(S(u))+bT(S(v)) = a (T\\circ S)(u) + b (T\\circ S)(v).\n$$</p>\n"}︡
︠8f69b683-a786-4d7d-b567-87524a9c6247i︠
%md

So now you automatically know that rotation by 45 degrees combined with scaling combined with rotating back by 30 degrees must be a linear transformation, hence represented by a single matrix.

*How amazingly efficient this is!!*
︡f6430cdf-ea32-43c6-bdca-6dd0e5812dc8︡{"html":"<p>So now you automatically know that rotation by 45 degrees combined with scaling combined with rotating back by 30 degrees must be a linear transformation, hence represented by a single matrix.  </p>\n\n<p><em>How amazingly efficient this is!!</em></p>\n"}︡
︠7e69d38b-2cd6-4672-bc64-eccc97f7f38ei︠
%hide
%md

## Composition of linear transformations and matrix multiplication

If $T_A$ and $T_B$ are linear transformations such that $T_A\circ T_B$ is defined, then
$$
  T_A \circ T_B = T_{AB}.
$$

To see this, just apply both sides to any standard basis vector $e_i$:
$$
  (T_A\circ T_B)(e_i) = T_A(T_B(e_i)) = T_A (B e_i) = A(B e_i)
$$
and
$$
  T_{AB} (e_i) = (AB)(e_i).
$$
Hey, we never **proved** that $A(BC) = (AB)C$, for matrices $A,B,C$.
However, it is easy to check in the above special case, since $e_i$ is so simple.
The statement
$$
   A(B e_i) = (AB) e_i
$$
is just the assertion that applying $A$ to the $i$th column of $B$ is the $i$th column of $AB$, which is very easy to see directly from the definition of matrix multiplication.
︡c7d03640-8e81-44fc-a63c-148fd9289b16︡{"html":"<h2>Composition of linear transformations and matrix multiplication</h2>\n\n<p>If $T_A$ and $T_B$ are linear transformations such that $T_A\\circ T_B$ is defined, then\n$$\n  T_A \\circ T_B = T_{AB}.\n$$</p>\n\n<p>To see this, just apply both sides to any standard basis vector $e_i$:\n$$\n  (T_A\\circ T_B)(e_i) = T_A(T_B(e_i)) = T_A (B e_i) = A(B e_i)\n$$\nand\n$$\n  T_{AB} (e_i) = (AB)(e_i).\n$$\nHey, we never <strong>proved</strong> that $A(BC) = (AB)C$, for matrices $A,B,C$.\nHowever, it is easy to check in the above special case, since $e_i$ is so simple.\nThe statement\n$$\n   A(B e_i) = (AB) e_i\n$$\nis just the assertion that applying $A$ to the $i$th column of $B$ is the $i$th column of $AB$, which is very easy to see directly from the definition of matrix multiplication.</p>\n"}︡
︠3086e934-9302-45be-b868-52e6e9d66008i︠
%hide
%md
**Corollary** For matrix $A,B,C$ such that $ABC$ is defined, we have $(AB)C=A(BC)$.

This is because function composition is associative:
$$
  T_{(AB)C} = T_{AB} \circ T_C = (T_A \circ T_B) \circ T_C
$$
$$
  = T_A \circ (T_B \circ T_C) = T_{A} \circ T_{BC} = T_{A(BC)}.
$$
︡3c0588bb-97da-4749-a967-b68d5b90d0fe︡{"html":"<p><strong>Corollary</strong> For matrix $A,B,C$ such that $ABC$ is defined, we have $(AB)C=A(BC)$.</p>\n\n<p>This is because function composition is associative:\n$$\n  T_{(AB)C} = T_{AB} \\circ T_C = (T_A \\circ T_B) \\circ T_C \n$$\n$$\n  = T_A \\circ (T_B \\circ T_C) = T_{A} \\circ T_{BC} = T_{A(BC)}.\n$$</p>\n"}︡
︠fcd31591-fa32-4e23-8ef7-4cba719905d7i︠
%hide
%md

**Problem:** Give a matrix $A$ such that $T_A : \mathbb{R}^2 \to \mathbb{R}^2$ is rotate left by 90 degrees, then scale the $x$ coordinate by a factor of $2$ and the $y$ coordinate by a factor of $-3$, then rotate clockwise by $45$ degrees.

**Solution:** We can do this in two ways.  (1) find matrices for each of the three linear transformations in the problem, then multiply them together, or (2) apply all three operations two $(1,0$ and $(0,1)$ to get the columns of $A$.  Both approaches must give the same answer in the end.
︡d641faf5-8fc4-49ef-a37a-db235919444b︡{"html":"<p><strong>Problem:</strong> Give a matrix $A$ such that $T_A : \\mathbb{R}^2 \\to \\mathbb{R}^2$ is rotate left by 90 degrees, then scale the $x$ coordinate by a factor of $2$ and the $y$ coordinate by a factor of $-3$, then rotate clockwise by $45$ degrees.</p>\n\n<p><strong>Solution:</strong> We can do this in two ways.  (1) find matrices for each of the three linear transformations in the problem, then multiply them together, or (2) apply all three operations two $(1,0$ and $(0,1)$ to get the columns of $A$.  Both approaches must give the same answer in the end.</p>\n"}︡
︠a3339b57-b756-479c-b9d8-c3185e87c5f9i︠
%hide
%md
#### Strategy (1): find the matrices and multiply

 - rotate left by 90 degrees $A_1 = \left(\begin{array}{rr}
0 & -1 \\\\
1 & 0
\end{array}\right)$

 - scale $x$ by $2$ and $y$ by $-3$: $A_2 = \left(\begin{array}{rr}
2 & 0 \\\\
0 & -3
\end{array}\right)$

 - rotate clockwise by 45 degrees: $A_3 = \left(\begin{array}{rr}
\sqrt{2}/2 & \sqrt{2}/2 \\\\
-\sqrt{2}/2 & \sqrt{2}/2
\end{array}\right)$

︡04bc8a57-3cb6-44ad-b0da-d62c8b3d1c78︡{"html":"<h4>Strategy (1): find the matrices and multiply</h4>\n\n<ul>\n<li><p>rotate left by 90 degrees $A_1 = \\left(\\begin{array}{rr}\n0 &amp; -1 \\\\\n1 &amp; 0\n\\end{array}\\right)$</p></li>\n<li><p>scale $x$ by $2$ and $y$ by $-3$: $A_2 = \\left(\\begin{array}{rr}\n2 &amp; 0 \\\\\n0 &amp; -3\n\\end{array}\\right)$</p></li>\n<li><p>rotate clockwise by 45 degrees: $A_3 = \\left(\\begin{array}{rr}\n\\sqrt{2}/2 &amp; \\sqrt{2}/2 \\\\\n-\\sqrt{2}/2 &amp; \\sqrt{2}/2\n\\end{array}\\right)$</p></li>\n</ul>\n"}︡
︠0d9941f0-bb58-4eb5-bd21-eec097cf8ae7︠
A1 = matrix(2,[0,-1,1,0])
A2 = matrix(2,[2,0,0,-3])
A3 = matrix(2,[sqrt(2)/2,sqrt(2)/2,-sqrt(2)/2,sqrt(2)/2])
show(A3*A2*A1)
︡f9f5b24c-e375-4b91-bbfa-2525aa8c6030︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n-\\frac{3}{2} \\, \\sqrt{2} & -\\sqrt{2} \\\\\n-\\frac{3}{2} \\, \\sqrt{2} & \\sqrt{2}\n\\end{array}\\right)","display":true}}︡
︠009b5750-4f91-4d1a-a3f8-6f2e4e0ac476︠
show(A1*A2*A3)
︡90b754a5-f4b8-401a-a8a6-c079889c4f2e︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n-\\frac{3}{2} \\, \\sqrt{2} & \\frac{3}{2} \\, \\sqrt{2} \\\\\n\\sqrt{2} & \\sqrt{2}\n\\end{array}\\right)","display":true}}︡
︠4ffed78a-0693-46a5-a9c2-07498804ba03i︠
%hide
%md
#### Strategy (2): transform $e_1$ and $e_2$.

First transform $e_1$:

 - rotate left by 90 degrees: (0,1)
 - scale $x$ by $2$ and $y$ by $-3$:  (0, -3)
 - rotate clockwise by 45 degrees: ugh.  $(-3\sqrt{2}/2, -3\sqrt{2}/2)$.

Then same for $e_2$:

 - rotate left by 90 degrees: (-1,0)
 - scale $x$ by $2$ and $y$ by $-3$: (-2,0)
 - rotate clockwise by 45 degrees: ugh. $(-\sqrt{2}, \sqrt{2})$.

Somehow, this is less tedious but requires *more thought*.
︡972f8700-cf30-4b85-b3c0-34d028db458a︡{"html":"<h4>Strategy (2): transform $e_1$ and $e_2$.</h4>\n\n<p>First transform $e_1$:</p>\n\n<ul>\n<li>rotate left by 90 degrees: (0,1)</li>\n<li>scale $x$ by $2$ and $y$ by $-3$:  (0, -3)</li>\n<li>rotate clockwise by 45 degrees: ugh.  $(-3\\sqrt{2}/2, -3\\sqrt{2}/2)$.</li>\n</ul>\n\n<p>Then same for $e_2$:</p>\n\n<ul>\n<li>rotate left by 90 degrees: (-1,0)</li>\n<li>scale $x$ by $2$ and $y$ by $-3$: (-2,0)</li>\n<li>rotate clockwise by 45 degrees: ugh. $(-\\sqrt{2}, \\sqrt{2})$.</li>\n</ul>\n\n<p>Somehow, this is less tedious but requires <em>more thought</em>.</p>\n"}︡
︠d4e3960d-e171-4dba-a0d9-76b3affad82d︠
%md

## Eigenvalues and Eigenvectors

<div class="lighten pull-right" style="background-color:#FFCCBE; border-radius:5px; border:1px solid grey; padding:5px; box-shadow:3px 3px 3px;">"Eigen" means "own", "special", "unique."</div>

Everything we just did for $\mathbb{R}^n$ works in exactly the same way for $\mathbb{C}^n$.

Let $T:\mathbb{C}^n\to\mathbb{C}^n$ be a linear transformation from a space back to itself.

An **eigenvector** is a nonzero vector $v$ such that $T(v) = c v$, for some scalar $c$. I.e.,
it is a vector that is simply rescaled by $T$.  It's somehow "special" (and easy to deal with).

**Amazing observation:** For *most* (but not all!) linear transformations $T=T_A$, there is a basis for $\mathbb{C}^n$ of eigenvectors.   When this is the case, there is a matrix $B$ such that
$$
   B^{-1} A B = D
$$
is a diagonal matrix.

Yes, you heard me right, over the complex numbers, almost every matrix is really a diagonal matrix in disguise.

#### Diagonal matrices are DEAD EASY.



︡e00db820-9dd6-44c4-92cc-d0427de0cd50︡{"html":"<h2>Eigenvalues and Eigenvectors</h2>\n\n<div class=\"lighten pull-right\" style=\"background-color:#FFCCBE; border-radius:5px; border:1px solid grey; padding:5px; box-shadow:3px 3px 3px;\">\"Eigen\" means \"own\", \"special\", \"unique.\"</div>\n\n<p>Everything we just did for $\\mathbb{R}^n$ works in exactly the same way for $\\mathbb{C}^n$.</p>\n\n<p>Let $T:\\mathbb{C}^n\\to\\mathbb{C}^n$ be a linear transformation from a space back to itself.</p>\n\n<p>An <strong>eigenvector</strong> is a nonzero vector $v$ such that $T(v) = c v$, for some scalar $c$. I.e.,\nit is a vector that is simply rescaled by $T$.  It&#8217;s somehow &#8220;special&#8221; (and easy to deal with).</p>\n\n<p><strong>Amazing observation:</strong> For <em>most</em> (but not all!) linear transformations $T=T_A$, there is a basis for $\\mathbb{C}^n$ of eigenvectors.   When this is the case, there is a matrix $B$ such that\n$$\n   B^{-1} A B = D\n$$\nis a diagonal matrix.</p>\n\n<p>Yes, you heard me right, over the complex numbers, almost every matrix is really a diagonal matrix in disguise.</p>\n\n<h4>Diagonal matrices are DEAD EASY.</h4>\n"}︡
︠0ec7dd64-ed0f-4422-a25c-783706881c6bi︠
%hide
%md

## One Example Application.

Let $A=\left(\begin{array}{rr}
-\frac{3}{2} & -\frac{1}{2} \\\\
\frac{5}{2} & \frac{3}{2}
\end{array}\right)$.  What is $A^{100}$?

#### Solution:
By a process we'll learn starting Monday, we find that:
$$
  A = \left(\begin{array}{rr}
-5 & -1 \\\\
1 & 1
\end{array}\right)^{-1} \cdot
\left(\begin{array}{rr}
-1 & 0 \\\\
0 & 1
\end{array}\right)\cdot
\left(\begin{array}{rr}
-5 & -1 \\\\
1 & 1
\end{array}\right)
$$
Thus
$$
  A^{100} = \left(\begin{array}{rr}
-5 & -1 \\\\
1 & 1
\end{array}\right)^{-1} \cdot
\left(\begin{array}{rr}
-1 & 0 \\\\
0 & 1
\end{array}\right)^{100}\cdot
\left(\begin{array}{rr}
-5 & -1 \\\\
1 & 1
\end{array}\right)
 = I_2
$$

︡8b09295d-e86c-47f4-96ae-cdf3230df667︡{"html":"<h2>One Example Application.</h2>\n\n<p>Let $A=\\left(\\begin{array}{rr}\n-\\frac{3}{2} &amp; -\\frac{1}{2} \\\\\n\\frac{5}{2} &amp; \\frac{3}{2}\n\\end{array}\\right)$.  What is $A^{100}$?</p>\n\n<h4>Solution:</h4>\n\n<p>By a process we&#8217;ll learn starting Monday, we find that:\n$$\n  A = \\left(\\begin{array}{rr}\n-5 &amp; -1 \\\\\n1 &amp; 1\n\\end{array}\\right)^{-1} \\cdot\n\\left(\\begin{array}{rr}\n-1 &amp; 0 \\\\\n0 &amp; 1\n\\end{array}\\right)\\cdot\n\\left(\\begin{array}{rr}\n-5 &amp; -1 \\\\\n1 &amp; 1\n\\end{array}\\right)\n$$\nThus\n$$\n  A^{100} = \\left(\\begin{array}{rr}\n-5 &amp; -1 \\\\\n1 &amp; 1\n\\end{array}\\right)^{-1} \\cdot\n\\left(\\begin{array}{rr}\n-1 &amp; 0 \\\\\n0 &amp; 1\n\\end{array}\\right)^{100}\\cdot\n\\left(\\begin{array}{rr}\n-5 &amp; -1 \\\\\n1 &amp; 1\n\\end{array}\\right)\n = I_2\n$$</p>\n"}︡
︠6e5cd67a-d367-4bea-af67-648fa3457841︠
D = matrix(QQ,2,2,[-1,0,0,1]);
S = random_matrix(ZZ,2,2)
A = S^(-1)*D*S
A
︡af9a435b-4f74-450d-a009-69006ae0fcfa︡{"stdout":"[-3/2 -1/2]\n[ 5/2  3/2]"}︡{"stdout":"\n"}︡
︠9b2a1881-c4b3-4b58-8f70-6c993bf0d948︠
A^(100)
︡c4eafd38-1dd6-4541-a05c-5fbbf67e0747︡{"stdout":"[1 0]\n[0 1]"}︡{"stdout":"\n"}︡
︠6772f2e9-ac7f-435b-b80d-3c293fb4bf0e︠
















