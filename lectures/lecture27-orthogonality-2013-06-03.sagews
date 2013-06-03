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
︡832deba3-ad7c-435d-b160-34fd4567e729︡{"html":"<h1>Lecture 27: Orthogonal vectors in $\\mathbb{R}^n$</h1>\n\n<h3>June 3, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Questions</p></li>\n<li><p>Homework:</p>\n\n<ul>\n<li>Mock Final Homework: Due <strong>Wednesday</strong>.</li>\n<li>Friday: review lecture &#8211; I will go over homework for the Friday lecture, and also answer other questions you might have.</li>\n</ul></li>\n<li><p>Today/Wednesday: Orthogonality</p></li>\n<li><p>Remark: people asked recently about undergrad courses I&#8217;m teaching next year.  I&#8217;m teaching a course on elementary number theory (as a Math 480) during Winter quarter, and a course on Sage (also Math 480) during the Spring quarter.</p></li>\n</ol>\n"}︡
︠f05c1d62-f3d2-4665-939d-dd91035959ad︠






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

- *Proposition:* A matrix $Q$ is orthogonal if and only if $Qv \cdot Qw = v \cdot w$ for every vector $v,w$, i.e., it preserves the dot product.

- *Definition:* The **orthogonal complement** of a subspace $W\subset \mathbb{R}^n$ is
$W^{\perp} = \{v \in \mathbb{R}^n : v\cdot W = 0\},$
where by $v\cdot W=0$, we mean $v\cdot w = 0$ for all $w\in W$.

- *Theorem:* Let $W$ be a subspace.  For each $v\in\mathbb{R}^n$ there is a unique $w\in W$ and $w^{\perp} \in W^{\perp}$ such that $v=w+w^{\perp}$.  (In a more advanced course, we would write $\mathbb{R}^n = W \oplus W^{\perp}$ and say that $\mathbb{R}^n$ is the **direct sum** of $W$ and $W^{\perp}$.)  In fact, we have $w={\rm proj}_W(v) = \frac{w\cdot v_1}{v_1\cdot v_1} v_1 + \cdots + \frac{w\cdot v_k}{v_k\cdot v_k} v_k$, and $w^{\perp} = v-w$.

- *Corollary:* Let $A$ be any $m\times n$ matrix.  Then ${\rm rank}(A) + {\rm nullity}(A) = n$.
︡50ebc58d-14e8-4c02-bc25-59588d26f62d︡{"html":"<h1>Orthogonality: Overview</h1>\n\n<ul>\n<li><p>This is Sections 5.1 and 5.2 of the textbook.</p></li>\n<li><p>Dot product: $(a_1,\\ldots,a_n) \\cdot (b_1,\\ldots,b_n) = a_1 b_1 + a_2 b_2 + \\cdots a_n b_n.$</p></li>\n<li><p><em>Definition:</em> Vectors $\\{v_1, \\ldots, v_k\\}$ are <strong>orthogonal</strong> if $v_i \\cdot v_j =0$ for all $i\\neq j$.</p></li>\n<li><p><em>Proposition:</em> Any set of nonzero orthogonal vectors are linearly independent.</p></li>\n<li><p><em>Definition:</em> An <strong>orthogonal basis</strong> is a basis consisting of orthogonal vectors.</p></li>\n<li><p><em>Proposition:</em> If $v_1, \\ldots, v_n$ an orthogonal basis $B$ for a subspace of $\\mathbb{R}^m$ containing a vector $w$, then\n$[w]_B = (\\frac{w \\cdot v_1}{v_1 \\cdot v_1},\\frac{w \\cdot v_2}{v_2 \\cdot v_2},\\ldots, \\frac{w \\cdot v_n}{v_n \\cdot v_n})$, so $w = \\sum \\frac{w \\cdot v_i}{v_i \\cdot v_i} v_i.$</p></li>\n<li><p><em>Definition:</em> An <strong>orthonormal basis</strong> is an orthogonal one where $v_i \\cdot v_i=1$ for each $i$, i.e., each vector has length $1$.</p></li>\n<li><p><em>Definition:</em> An <strong>orthogonal matrix</strong> is one whose columns are orthonormal.  (Yes, it <em>should</em> be &#8220;orthonormal matrix&#8221;, but isn&#8217;t.)</p></li>\n<li><p><em>Proposition:</em> A matrix $Q$ is orthogonal if and only if $Qv \\cdot Qw = v \\cdot w$ for every vector $v,w$, i.e., it preserves the dot product.</p></li>\n<li><p><em>Definition:</em> The <strong>orthogonal complement</strong> of a subspace $W\\subset \\mathbb{R}^n$ is\n$W^{\\perp} = \\{v \\in \\mathbb{R}^n : v\\cdot W = 0\\},$\nwhere by $v\\cdot W=0$, we mean $v\\cdot w = 0$ for all $w\\in W$.</p></li>\n<li><p><em>Theorem:</em> Let $W$ be a subspace.  For each $v\\in\\mathbb{R}^n$ there is a unique $w\\in W$ and $w^{\\perp} \\in W^{\\perp}$ such that $v=w+w^{\\perp}$.  (In a more advanced course, we would write $\\mathbb{R}^n = W \\oplus W^{\\perp}$ and say that $\\mathbb{R}^n$ is the <strong>direct sum</strong> of $W$ and $W^{\\perp}$.)  In fact, we have $w={\\rm proj}_W(v) = \\frac{w\\cdot v_1}{v_1\\cdot v_1} v_1 + \\cdots + \\frac{w\\cdot v_k}{v_k\\cdot v_k} v_k$, and $w^{\\perp} = v-w$.</p></li>\n<li><p><em>Corollary:</em> Let $A$ be any $m\\times n$ matrix.  Then ${\\rm rank}(A) + {\\rm nullity}(A) = n$.</p></li>\n</ul>\n"}︡
︠ee9b5e6a-f4ff-4284-8778-0bf3e82a0399︠






