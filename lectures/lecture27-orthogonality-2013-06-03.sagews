︠82bd72da-7222-46e6-9ef3-c9f74adab498i︠
%md

# Lecture 27: Orthogonal vectors in $\mathbb{R}^n$

### June 3, 2013

#### Plan

 1. Start Screencast

 2. Questions

 3. Homework:
  - Mock Final Homework: Due **Wednesday**.
  - Friday: review lecture -- I will go over homework for the Friday lecture, and also answer other questions you might have.

 4. Today/Wednesday: Orthogonality

 5. Remark: people asked recently about undergrad courses I'm teaching next year.  I'm teaching a course on elementary number theory (as a Math 480) during Winter quarter, and a course on Sage (also Math 480) during the Spring quarter.
︡e1b7da26-c590-440e-ae7f-c3ee5e3155fd︡{"html":"<h1>Lecture 27: Orthogonal vectors in $\\mathbb{R}^n$</h1>\n\n<h3>June 3, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework:</p>\n\n<ul>\n<li>Mock Final Homework: Due <strong>Wednesday</strong>.</li>\n<li>Friday: review lecture &#8211; I will go over homework for the Friday lecture, and also answer other questions you might have.</li>\n</ul></li>\n<li><p>Today/Wednesday: Orthogonality</p></li>\n<li><p>Remark: people asked recently about undergrad courses I&#8217;m teaching next year.  I&#8217;m teaching a course on elementary number theory (as a Math 480) during Winter quarter, and a course on Sage (also Math 480) during the Spring quarter.</p></li>\n</ol>\n"}︡
︠f05c1d62-f3d2-4665-939d-dd91035959ad︠






︡c3fe5363-f69d-4bcd-989f-9c139090b96b︡
︠f0d5a9ca-3fc0-4fa1-92ec-0bdfbe5b9fcfi︠
%md
# Orthogonality: Overview

- This is Sections 5.1 and 5.2 of the textbook.

- Dot product: $(a_1,\ldots,a_n) \cdot (b_1,\ldots,b_n) = a_1 b_1 + a_2 b_2 + \cdots a_n b_n.$

- *Definition:* Vectors $\{v_1, \ldots, v_k\}$ are **orthogonal** if $v_i \cdot v_j =0$ for all $i\neq j$.

- *Proposition:* Any set of nonzero orthogonal vectors are linearly independent.

- *Definition:* An **orthogonal basis** is a basis consisting of orthogonal vectors.

- *Proposition:* If $v_1, \ldots, v_n$ an orthogonal basis $B$ for a subspace of $\mathbb{R}^m$ containing a vector $w$, then
$[w]_B = (\frac{w \cdot v_1}{v_1 \cdot v_1},\frac{w \cdot v_2}{v_2 \cdot v_2},\ldots, \frac{w \cdot v_n}{v_n \cdot v_n})$, so $w = \sum \frac{w \cdot v_i}{v_i \cdot v_i} v_i.$

- *Definition:* An **orthonormal basis** is an orthogonal one where $v_i \cdot v_i=1$ for each $i$, i.e., each vector has length $1$.

- *Definition:* An **orthogonal matrix** is one whose columns are orthonormal.  (Yes, it *should* be "orthonormal matrix", but isn't.)

- *Proposition:* A matrix $Q$ is orthogonal if and only if $Qv \cdot Qw = v \cdot w$ for all vectors $v,w$, i.e., it preserves the dot product.

- *Definition:* The **orthogonal complement** of a subspace $W\subset \mathbb{R}^n$ is
$W^{\perp} = \{v \in \mathbb{R}^n : v\cdot W = 0\},$
where by $v\cdot W=0$, we mean $v\cdot w = 0$ for all $w\in W$.

- *Gram-Schmidt:* Algorithm to transform any basis into an orthonormal basis.  Normalize first vector $v_1$ to have length $1$.  Use theorem above to to find a canonically defined vector that is orthogonal to $v_1$, and normalize it to have length $1$.  Repeat with all vectors to arrive at an orthogonal basis.

- *Theorem:* Let $W$ be a subspace.  For each $v\in\mathbb{R}^n$ there is a unique $w\in W$ and $w^{\perp} \in W^{\perp}$ such that $v=w+w^{\perp}$.  (In a more advanced course, we would write $\mathbb{R}^n = W \oplus W^{\perp}$ and say that $\mathbb{R}^n$ is the **direct sum** of $W$ and $W^{\perp}$.)  In fact, if $v_i$ is an orthonormal basis for $W$, then we can take  $w={\rm proj}_W(v) = (v\cdot v_1) v_1 + \cdots + (v\cdot v_k)  v_k$, and $w^{\perp} = v-w$.

- *Corollary:* Let $A$ be any $m\times n$ matrix.  Then ${\rm rank}(A) + {\rm nullity}(A) = n$.


︡8f6e52fd-4b52-4799-aff8-a73b60d735bc︡{"html":"<h1>Orthogonality: Overview</h1>\n\n<ul>\n<li><p>This is Sections 5.1 and 5.2 of the textbook.</p></li>\n<li><p>Dot product: $(a_1,\\ldots,a_n) \\cdot (b_1,\\ldots,b_n) = a_1 b_1 + a_2 b_2 + \\cdots a_n b_n.$</p></li>\n<li><p><em>Definition:</em> Vectors $\\{v_1, \\ldots, v_k\\}$ are <strong>orthogonal</strong> if $v_i \\cdot v_j =0$ for all $i\\neq j$.</p></li>\n<li><p><em>Proposition:</em> Any set of nonzero orthogonal vectors are linearly independent.</p></li>\n<li><p><em>Definition:</em> An <strong>orthogonal basis</strong> is a basis consisting of orthogonal vectors.</p></li>\n<li><p><em>Proposition:</em> If $v_1, \\ldots, v_n$ an orthogonal basis $B$ for a subspace of $\\mathbb{R}^m$ containing a vector $w$, then\n$[w]_B = (\\frac{w \\cdot v_1}{v_1 \\cdot v_1},\\frac{w \\cdot v_2}{v_2 \\cdot v_2},\\ldots, \\frac{w \\cdot v_n}{v_n \\cdot v_n})$, so $w = \\sum \\frac{w \\cdot v_i}{v_i \\cdot v_i} v_i.$</p></li>\n<li><p><em>Definition:</em> An <strong>orthonormal basis</strong> is an orthogonal one where $v_i \\cdot v_i=1$ for each $i$, i.e., each vector has length $1$.</p></li>\n<li><p><em>Definition:</em> An <strong>orthogonal matrix</strong> is one whose columns are orthonormal.  (Yes, it <em>should</em> be &#8220;orthonormal matrix&#8221;, but isn&#8217;t.)</p></li>\n<li><p><em>Proposition:</em> A matrix $Q$ is orthogonal if and only if $Qv \\cdot Qw = v \\cdot w$ for all vectors $v,w$, i.e., it preserves the dot product.</p></li>\n<li><p><em>Definition:</em> The <strong>orthogonal complement</strong> of a subspace $W\\subset \\mathbb{R}^n$ is\n$W^{\\perp} = \\{v \\in \\mathbb{R}^n : v\\cdot W = 0\\},$\nwhere by $v\\cdot W=0$, we mean $v\\cdot w = 0$ for all $w\\in W$.</p></li>\n<li><p><em>Gram-Schmidt:</em> Algorithm to transform any basis into an orthonormal basis.  Normalize first vector $v_1$ to have length $1$.  Use theorem above to to find a canonically defined vector that is orthogonal to $v_1$, and normalize it to have length $1$.  Repeat with all vectors to arrive at an orthogonal basis.</p></li>\n<li><p><em>Theorem:</em> Let $W$ be a subspace.  For each $v\\in\\mathbb{R}^n$ there is a unique $w\\in W$ and $w^{\\perp} \\in W^{\\perp}$ such that $v=w+w^{\\perp}$.  (In a more advanced course, we would write $\\mathbb{R}^n = W \\oplus W^{\\perp}$ and say that $\\mathbb{R}^n$ is the <strong>direct sum</strong> of $W$ and $W^{\\perp}$.)  In fact, if $v_i$ is an orthonormal basis for $W$, then we can take  $w={\\rm proj}_W(v) = (v\\cdot v_1) v_1 + \\cdots + (v\\cdot v_k)  v_k$, and $w^{\\perp} = v-w$.</p></li>\n<li><p><em>Corollary:</em> Let $A$ be any $m\\times n$ matrix.  Then ${\\rm rank}(A) + {\\rm nullity}(A) = n$.</p></li>\n</ul>\n"}︡
︠ee9b5e6a-f4ff-4284-8778-0bf3e82a0399i︠
%md

## Examples

- The standard basis $e_1,\ldots, e_n$ of $\mathbb{R}^n$ is an orthonormal basis.

- The basis $(1,1), (1,-1)$ is an orthogonal basis for $\mathbb{R}^2$, but is not orthonormal.

- If you draw a picture of an orthonormal basis, it is just some rotated/flipped version of the standard basis (the "right hand rule").

- The basis $(2,1,-1)$, ($0,1,1)$, $(1,-1,1)$ is orthogonal but not orthonormal.
︡27215147-26b6-42e4-84f5-a00c100e85ea︡{"html":"<h2>Examples</h2>\n\n<ul>\n<li><p>The standard basis $e_1,\\ldots, e_n$ of $\\mathbb{R}^n$ is an orthonormal basis.</p></li>\n<li><p>The basis $(1,1), (1,-1)$ is an orthogonal basis for $\\mathbb{R}^2$, but is not orthonormal.</p></li>\n<li><p>If you draw a picture of an orthonormal basis, it is just some rotated/flipped version of the standard basis (the &#8220;right hand rule\").</p></li>\n<li><p>The basis $(2,1,-1)$, ($0,1,1)$, $(1,-1,1)$ is orthogonal but not orthonormal.</p></li>\n</ul>\n"}︡
︠f03e6948-b122-465d-b781-0e4c3ed60e4d︠
show( arrow((0,0), (1,1)) + arrow((0,0),(1,-1)), aspect_ratio=1, svg=True)
︡4a7db062-0f7c-4ad6-bb51-853f6044c717︡{"file":{"show":true,"uuid":"95edd7d8-8bc1-409d-a7a2-459ce0def9d8","filename":"/mnt/home/D6VXKxGo/.sage/temp/compute1a/22459/tmp_fIoaZy.svg"}}︡
︠5250d56c-a110-48ee-9ba6-efd80355f8f8︠
g = arrow3d((0,0,0), (2,1,-1)) + arrow3d((0,0,0),(0,1,1)) + arrow3d((0,0,0),(1,-1,1), aspect_ratio=1)
show(g)
︡065a94e0-f033-4859-b0a2-225d6ab1876b︡{"file":{"show":true,"uuid":"11097612-de3e-430c-bb54-154c0bff9be0","filename":"/mnt/home/D6VXKxGo/.sage/temp/compute1a/2980/tmp_Jv9Ri9.png"}}︡
︠362fa241-023e-4cb4-9b99-30b7b01a495bi︠

%md

**Proposition:** *Any set $v_1,\ldots, v_k$ of nonzero orthogonal vectors are linearly independent.*

**Proof.** Suppose $c_1,\ldots, c_k\in \mathbb{R}$ with $c_1 v_1 + \cdots + c_k v_k = 0$.
Taking the dot product with $v_1$ yields
\[
   0 = 0 \cdot v_1 = (c_1 v_1 + \cdots + c_k v_k) \cdot v_1
   = c_1 v_1 \cdot v_1 + \cdots c_k v_k \cdot v_1 = c_1 v_1 \cdot v_1
\]
Since $v_1\neq 0$, we have $v_1 \cdot v_1\neq 0$, so $c_1 = 0$.

Similarly, $c_2 = \cdots = c_k =0$.

We conclude that all $c_i=0$, hence the $v_i$ are independent.
︡57fc287d-ac1f-4760-bb31-b0842cc18faa︡{"html":"<p><strong>Proposition:</strong> <em>Any set $v_1,\\ldots, v_k$ of nonzero orthogonal vectors are linearly independent.</em></p>\n\n<p><strong>Proof.</strong> Suppose $c_1,\\ldots, c_k\\in \\mathbb{R}$ with $c_1 v_1 + \\cdots + c_k v_k = 0$.\nTaking the dot product with $v_1$ yields\n\\[\n   0 = 0 \\cdot v_1 = (c_1 v_1 + \\cdots + c_k v_k) \\cdot v_1\n   = c_1 v_1 \\cdot v_1 + \\cdots c_k v_k \\cdot v_1 = c_1 v_1 \\cdot v_1\n\\]\nSince $v_1\\neq 0$, we have $v_1 \\cdot v_1\\neq 0$, so $c_1 = 0$.  </p>\n\n<p>Similarly, $c_2 = \\cdots = c_k =0$.</p>\n\n<p>We conclude that all $c_i=0$, hence the $v_i$ are independent.</p>\n"}︡
︠59c1ede5-7ed6-4961-a636-af23e169471f︠









︠6bf75632-56e1-40a1-81c5-a1588ce93eabi︠
%md

**Proposition:** A matrix $Q$ is orthogonal if and only if $Qv \cdot Qw = v \cdot w$ for all vectors $v,w$.

**Proof.**

Note that $Q$ being orthogonal implies that $Q^t Q = I_n$.

We have \[ Qv \cdot Qw = (Qv)^t Qw = v^t Q^t Q w = v^t I_n w = v \cdot w.\]
︡1c494a96-8d93-42c0-931b-624935d7a449︡{"html":"<p><strong>Proposition:</strong> A matrix $Q$ is orthogonal if and only if $Qv \\cdot Qw = v \\cdot w$ for all vectors $v,w$.</p>\n\n<p><strong>Proof.</strong></p>\n\n<p>Note that $Q$ being orthogonal implies that $Q^t Q = I_n$.</p>\n\n<p>We have \\[ Qv \\cdot Qw = (Qv)^t Qw = v^t Q^t Q w = v^t I_n w = v \\cdot w.\\]</p>\n"}︡
︠709c5092-9f55-40e5-9ba8-672784f57694︠






︠42cc7ef3-e631-42f1-a8d4-902e96ad2e91i︠
%md

**Theorem:**  *Let $W$ be a subspace.  For each $v\in\mathbb{R}^n$ there is a unique $w\in W$ and $w^{\perp} \in W^{\perp}$ such that $v=w+w^{\perp}$.*

**Proof.**

Choose an orthonormal basis $v_1,\ldots, v_k$ for $W$.

Define
\[
   w={\rm proj}_W(v) = (v\cdot v_1) v_1 + \cdots + (v\cdot v_k)  v_k
\]
and let $w^{\perp} = v - w$.
Then

- $w \in W$ since ${\rm proj}_W(v)$ is a linear combination of the $v_i$.

- $v = w+w^{\perp}$ by definition of $w^{\perp}$.

- Claim: $w^{\perp} \in W^{\perp}$.  For this, it suffices to show that $w^{\perp} \cdot v_i=0$ for each $i$, since any element of $W$ is a linear combination of the $v_i$.  We have
\begin{align*}
   w^{\perp} \cdot v_i &= (v-w) \cdot v_i \\
       &= (v - (v\cdot v_1) v_1 \cdots - (v\cdot v_k)  v_k) \cdot v_i\\
       &=v\cdot v_i - (v\cdot v_i)(v_i \cdot v_i) = 0.
\end{align*}

- Finally, uniqueness.  If $w'\in W$, $(w')^{\perp} \in W^{\perp}$ and $v = w' + (w')^{\perp}$,
then $0=v-v=w + w^{\perp} - w' - (w')^{\perp} = (w-w') - (w^{\perp}-(w')^{\perp})$, so
$w-w' = w^{\perp}-(w')^{\perp} \in W \cap W^{\perp}$.  But only the $0$ vector has dot product
$0$ with itself, so $w-w'=0$, hence $w=w'$, as claimed.   (In particular, the choice of orthonormal basis above doesn't matter.)


︡a7fad5b2-f6f3-4bca-ab43-2457089b2405︡{"html":"<p><strong>Theorem:</strong>  <em>Let $W$ be a subspace.  For each $v\\in\\mathbb{R}^n$ there is a unique $w\\in W$ and $w^{\\perp} \\in W^{\\perp}$ such that $v=w+w^{\\perp}$.</em></p>\n\n<p><strong>Proof.</strong></p>\n\n<p>Choose an orthonormal basis $v_1,\\ldots, v_k$ for $W$.</p>\n\n<p>Define\n\\[\n   w={\\rm proj}_W(v) = (v\\cdot v_1) v_1 + \\cdots + (v\\cdot v_k)  v_k\n\\]\nand let $w^{\\perp} = v - w$.\nThen</p>\n\n<ul>\n<li><p>$w \\in W$ since ${\\rm proj}_W(v)$ is a linear combination of the $v_i$.</p></li>\n<li><p>$v = w+w^{\\perp}$ by definition of $w^{\\perp}$.</p></li>\n<li><p>Claim: $w^{\\perp} \\in W^{\\perp}$.  For this, it suffices to show that $w^{\\perp} \\cdot v_i=0$ for each $i$, since any element of $W$ is a linear combination of the $v_i$.  We have\n\\begin{align*}\n   w^{\\perp} \\cdot v_i &= (v-w) \\cdot v_i \\\\\n       &= (v - (v\\cdot v_1) v_1 \\cdots - (v\\cdot v_k)  v_k) \\cdot v_i\\\\\n       &=v\\cdot v_i - (v\\cdot v_i)(v_i \\cdot v_i) = 0.\n\\end{align*}</p></li>\n<li><p>Finally, uniqueness.  If $w'\\in W$, $(w')^{\\perp} \\in W^{\\perp}$ and $v = w' + (w')^{\\perp}$,\nthen $0=v-v=w + w^{\\perp} - w' - (w')^{\\perp} = (w-w') - (w^{\\perp}-(w')^{\\perp})$, so\n$w-w' = w^{\\perp}-(w')^{\\perp} \\in W \\cap W^{\\perp}$.  But only the $0$ vector has dot product\n$0$ with itself, so $w-w'=0$, hence $w=w'$, as claimed.   (In particular, the choice of orthonormal basis above doesn&#8217;t matter.)</p></li>\n</ul>\n"}︡
︠93d90929-daf3-44da-805c-e45c82fd295f︠







︠176bbea0-e189-41ef-a7bc-c29ac0d70013i︠
%md

**Corollary:** *Let $A$ be any $m\times n$ matrix.  Then ${\rm rank}(A) + {\rm nullity}(A) = n$.*

**Proof.**

Let $W$ be the row space of $A$.

Observe that $W^{\perp}$ is the nullspace of $A$!

Thus by definition $r={\rm rank}(A)$ is the dimension of $W$,
and $s={\rm nullity}(A)$ is the dimension of $W^{\perp}$.

Let $v_1,\ldots, v_r$ be a basis for $W$ and $z_1, \ldots, z_s$ be a basis for $W^{\perp}$.
By the above theorem, every element of $\mathbb{R}^n$ can be written uniquely as something
in $W$ plus something in $W^{\perp}$, so
$v_1,\ldots, v_r, z_1, \ldots, z_s$
is a basis for $\mathbb{R}^n$.  We conclude that $r+s=n$, as claimed.

︡114c107f-b69a-4792-bfcf-6fb5e8a2255a︡{"html":"<p><strong>Corollary:</strong> <em>Let $A$ be any $m\\times n$ matrix.  Then ${\\rm rank}(A) + {\\rm nullity}(A) = n$.</em></p>\n\n<p><strong>Proof.</strong></p>\n\n<p>Let $W$ be the row space of $A$.</p>\n\n<p>Observe that $W^{\\perp}$ is the nullspace of $A$!</p>\n\n<p>Thus by definition $r={\\rm rank}(A)$ is the dimension of $W$,\nand $s={\\rm nullity}(A)$ is the dimension of $W^{\\perp}$.</p>\n\n<p>Let $v_1,\\ldots, v_r$ be a basis for $W$ and $z_1, \\ldots, z_s$ be a basis for $W^{\\perp}$.\nBy the above theorem, every element of $\\mathbb{R}^n$ can be written uniquely as something\nin $W$ plus something in $W^{\\perp}$, so \n$v_1,\\ldots, v_r, z_1, \\ldots, z_s$\nis a basis for $\\mathbb{R}^n$.  We conclude that $r+s=n$, as claimed.</p>\n"}︡
︠c35d5285-0490-4b45-bf8d-87d0d50eead4︠












