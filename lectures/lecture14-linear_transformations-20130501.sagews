︠59ab3704-9528-479d-a95e-0f4c36600f73i︠
%hide
%md

# Lecture 14 (May 1, 2013): Linear Transformations

Goals today:

1. Remember to turn on G+ screencast!
2. Reminder: homework due at midnight tonight
3. Note: there is new homework
4. Reminder: second midterm -- May 15, 2013
5. Other questions?
6. Today: linear transformations; Friday, start eigenvalues and eigenvectors
︡60512f4a-c4ee-4b4b-8d80-4470b549e53d︡{"html":"<h1>Lecture 14 (May 1, 2013): Linear Transformations</h1>\n\n<p>Goals today:</p>\n\n<ol>\n<li>Remember to turn on G+ screencast!</li>\n<li>Reminder: homework due at midnight tonight</li>\n<li>Note: there is new homework</li>\n<li>Reminder: second midterm &#8211; May 15, 2013</li>\n<li>Other questions?</li>\n<li>Today: linear transformations; Friday, start eigenvalues and eigenvectors</li>\n</ol>\n"}︡
︠d5b0db59-e6c3-4787-93e4-9aede3de874di︠
%hide
%md
### Recall: Standard Basis Vectors

Recall the standard basis vectors $e_i$ that have a $1$ in the $i$ position and $0$'s everwhere else.  They are a basis for $\mathbb{R}^n$.

︡319bcfe1-1171-40a4-b1b2-aa5b4e90bc30︡{"html":"<h3>Recall: Standard Basis Vectors</h3>\n\n<p>Recall the standard basis vectors $e_i$ that have a $1$ in the $i$ position and $0$&#8217;s everwhere else.  They are a basis for $\\mathbb{R}^n$.</p>\n"}︡
︠147cfc52-73ec-494e-bfb4-8c6d84e5ffbe︠
show((QQ^4).basis())
︡13abc850-071b-498c-bcd7-45056d45703f︡{"tex":{"tex":"\\left[\\left(1,\\,0,\\,0,\\,0\\right), \\left(0,\\,1,\\,0,\\,0\\right), \\left(0,\\,0,\\,1,\\,0\\right), \\left(0,\\,0,\\,0,\\,1\\right)\\right]","display":true}}︡
︠5fdb12d6-4e92-42ff-a9f0-387f81d0a9e3i︠
%hide
%md

### Definition: Linear Transformation

**Definition:** A *linear transformation* is a map $T:\mathbb{R}^m \to \mathbb{R}^n$ such that for all $u,v\in \mathbb{R}^m$ and $a,b\in\mathbb{R}$, we have $$T(au+bv) = aT(u) + bT(v).$$


### Linear transformations and matrices

Suppose $A$ is an $n \times m$ matrix.  Then $A$ defines a linear transformation $T=T_A$, given by $T_A(v) = Av$.   And all linear transformations are of this form:


**Proposition:** If $T$ is *any* linear transformation at all, then there is *a unique* matrix $A$ such that $T=T_A$.

Proof: Let $A$ be the matrix that has columns the images of the standard basis vectors $e_1,\ldots,e_m$ under $T$.  Note that $A e_i$ is the $i$th column of $A$, which is $T(e_i)$ by construction, so $T_A$ and $T$ agree on the standard basis vectors.   If $v$ is *any* element of $\mathbb{R}^m$, then we can write $v = \sum a_i e_i$, so $T(v) = \sum a_i T(e_i) = \sum a_i A e_i = \sum A a_i e_i = A v$.  This proves that $T_A(v) = Av$.
︡9932ab57-8b2b-439c-a63c-e512d2980a3b︡{"html":"<h3>Definition: Linear Transformation</h3>\n\n<p><strong>Definition:</strong> A <em>linear transformation</em> is a map $T:\\mathbb{R}^m \\to \\mathbb{R}^n$ such that for all $u,v\\in \\mathbb{R}^m$ and $a,b\\in\\mathbb{R}$, we have $$T(au+bv) = aT(u) + bT(v).$$</p>\n\n<h3>Linear transformations and matrices</h3>\n\n<p>Suppose $A$ is an $n \\times m$ matrix.  Then $A$ defines a linear transformation $T=T_A$, given by $T_A(v) = Av$.   And all linear transformations are of this form:</p>\n\n<p><strong>Proposition:</strong> If $T$ is <em>any</em> linear transformation at all, then there is <em>a unique</em> matrix $A$ such that $T=T_A$.</p>\n\n<p>Proof: Let $A$ be the matrix that has columns the images of the standard basis vectors $e_1,\\ldots,e_m$ under $T$.  Note that $A e_i$ is the $i$th column of $A$, which is $T(e_i)$ by construction, so $T_A$ and $T$ agree on the standard basis vectors.   If $v$ is <em>any</em> element of $\\mathbb{R}^m$, then we can write $v = \\sum a_i e_i$, so $T(v) = \\sum a_i T(e_i) = \\sum a_i A e_i = \\sum A a_i e_i = A v$.  This proves that $T_A(v) = Av$.</p>\n"}︡
︠f947875a-a26a-4b8a-a75b-8f3d6c6a947di︠
%hide
%md
### Examples:

Which of the following maps $T:\mathbb{R}^2\to \mathbb{R}^2$ is a linear transformation?
For the ones that are, find the matrix $A$ such that $T=T_A$. For the ones that aren't, give
an example of $u,v \in \mathbb{R}^2$ and $a,b\in\mathbb{R}$ such that $T(au+bv)\neq a T(u) + bT(v)$.

1. $T(x,y) = (x^2,y^2)$

2. $T(x,y) = (x,0)$

3. $T(x,y) = (-y,x+1)$

4. $T(v) = $ "rotate the vector $v$ by 90 degrees counterclockwise"

5. $T(x,y) = (2x, \pi y)$

6. $T(x,y) = xy$

7. $T(v) = $ "rotate the vector $v$ by 45 degrees clockwise"

8. $T:\mathbb{R}^2\to \mathbb{R}^3$ given by $T(x,y) = (x+2y, 2x-y, -y)$

︡c5394135-58c6-4b9b-ac24-b5cf19523412︡{"html":"<h3>Examples:</h3>\n\n<p>Which of the following maps $T:\\mathbb{R}^2\\to \\mathbb{R}^2$ is a linear transformation?\nFor the ones that are, find the matrix $A$ such that $T=T_A$. For the ones that aren&#8217;t, give\nan example of $u,v \\in \\mathbb{R}^2$ and $a,b\\in\\mathbb{R}$ such that $T(au+bv)\\neq a T(u) + bT(v)$.</p>\n\n<ol>\n<li><p>$T(x,y) = (x^2,y^2)$</p></li>\n<li><p>$T(x,y) = (x,0)$</p></li>\n<li><p>$T(x,y) = (-y,x+1)$</p></li>\n<li><p>$T(v) = $ &#8220;rotate the vector $v$ by 90 degrees counterclockwise&#8221;</p></li>\n<li><p>$T(x,y) = (2x, \\pi y)$</p></li>\n<li><p>$T(x,y) = xy$</p></li>\n<li><p>$T(v) = $ &#8220;rotate the vector $v$ by 45 degrees clockwise&#8221;</p></li>\n<li><p>$T:\\mathbb{R}^2\\to \\mathbb{R}^3$ given by $T(x,y) = (x+2y, 2x-y, -y)$</p></li>\n</ol>\n"}︡
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
︡19259808-04b6-4d60-b933-813384781182︡{"tex":{"tex":"\\left(\\begin{array}{rr}\n-\\frac{3}{2} \\, \\sqrt{2} & -\\sqrt{2} \\\\\n-\\frac{3}{2} \\, \\sqrt{2} & \\sqrt{2}\n\\end{array}\\right)","display":true}}︡
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
︡eb41085b-b278-4f3f-a9f9-372f78a74266︡{"html":"<h4>Strategy (2): transform $e_1$ and $e_2$.</h4>\n\n<p>First transform $e_1$:</p>\n\n<ul>\n<li>rotate left by 90 degrees: (0,1)</li>\n<li>scale $x$ by $2$ and $y$ by $-3$:  (0, -3)</li>\n<li>rotate clockwise by 45 degrees: ugh.  $(-3\\sqrt{2}/2, -3\\sqrt{2}/2)$.</li>\n</ul>\n\n<p>Then same for $e_2$:</p>\n\n<ul>\n<li>rotate left by 90 degrees: (-1,0)</li>\n<li>scale $x$ by $2$ and $y$ by $-3$: (-2,0)</li>\n<li>rotate clockwise by 45 degrees: ugh. $(-\\sqrt{2}, \\sqrt{2})$.</li>\n</ul>\n\n<p>Somehow, this is less tedious but requires <em>more thought</em>.</p>\n"}︡
︠d4e3960d-e171-4dba-a0d9-76b3affad82di︠
%md

## Next: Eigenvectors

Everything we just did for $\mathbb{R}^n$ works in exactly the same way for $\mathbb{C}^n$.

Let $T:\mathbb{C}^n\to\mathbb{C}^n$ be a linear transformation from a space back to itself.

An **eigenvector** is a nonzero vector $v$ such that $T(v) = c v$, for some scalar $c$. I.e.,
it is a vector that is simply rescaled by $T$.

**Amazing fact** For *most* linear transformations $T=T_A$, there is a basis for $\mathbb{C}^n$ of eigenvectors.   This implies that there is a matrix $B$ such that
$$
   B^{-1} A B = D
$$
is a diagonal matrix.

Yes, you heard me right, over the complex numbers, almost every matrix is really a diagonal matrix in disguise.

Linear transformations defined by diagonal matrices are EASY.

You like easy.
︡62abbf0a-278e-4610-8196-1072bdff3e8a︡{"html":"<h2>Next: Eigenvectors</h2>\n\n<p>Everything we just did for $\\mathbb{R}^n$ works in exactly the same way for $\\mathbb{C}^n$.</p>\n\n<p>Let $T:\\mathbb{C}^n\\to\\mathbb{C}^n$ be a linear transformation from a space back to itself.</p>\n\n<p>An <strong>eigenvector</strong> is a nonzero vector $v$ such that $T(v) = c v$, for some scalar $c$. I.e.,\nit is a vector that is simply rescaled by $T$.</p>\n\n<p><strong>Amazing fact</strong> For <em>most</em> linear transformations $T=T_A$, there is a basis for $\\mathbb{C}^n$ of eigenvectors.   This implies that there is a matrix $B$ such that \n$$\n   B^{-1} A B = D\n$$\nis a diagonal matrix.</p>\n\n<p>Yes, you heard me right, over the complex numbers, almost every matrix is really a diagonal matrix in disguise. </p>\n\n<p>Linear transformations defined by diagonal matrices are EASY.</p>\n\n<p>You like easy.</p>\n"}︡
︠0ec7dd64-ed0f-4422-a25c-783706881c6b︠













































