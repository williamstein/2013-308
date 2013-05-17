︠687c9a70-9397-49ac-af9a-dce24b952731i︠
%hide
%md
# Lecture 21: More Abstract Vector Spaces
(Note: "Lecture 20" was a midterm.)

### May 17, 2013

#### Plan

 1. Start Screencast

 2. Return Midterm 2; mention grade distribution

 3. Questions about midterm (?)

 4. Start Chapter 6 "Vector Spaces".  We will spend most of rest of time on this (except that I might do Gramm-Schmidt from ch 5)
︡1926138f-4385-4357-83c4-b69b27e61796︡{"html":"<h1>Lecture 21: More Abstract Vector Spaces</h1>\n\n<p>(Note: &#8220;Lecture 20&#8221; was a midterm.)</p>\n\n<h3>May 17, 2013</h3>\n\n<h4>Plan</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Return Midterm 2; mention grade distribution</p></li>\n<li><p>Questions about midterm (?)</p></li>\n<li><p>Start Chapter 6 &#8220;Vector Spaces&#8221;.  We will spend most of rest of time on this (except that I might do Gramm-Schmidt from ch 5)</p></li>\n</ol>\n"}︡
︠a9d01fd9-5dd9-467c-9a92-2eeb2ce1cf6bi︠
scores = stats.TimeSeries([0.5789473684210527, 0.7368421052631579, 0.7368421052631579, 0.7368421052631579, 0.7894736842105263, 0.7894736842105263, 0.7894736842105263, 0.8421052631578947, 0.8421052631578947, 0.8421052631578947, 0.8421052631578947, 0.8421052631578947, 0.8421052631578947, 0.8421052631578947, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.8947368421052632, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 0.9473684210526315, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0526315789473684])
scores.plot_histogram(bins=len(scores)//2).show(frame=True, gridlines='minor')
html("<h3>Mean = %s</h3>"%scores.mean())
html("<h3>Standard Deviation = %s</h3>"%scores.standard_deviation())
︡ae263f41-ea5b-4b5c-bd90-a305ea61ade1︡{"file":{"show":true,"uuid":"9d1b3e65-29e4-4fb2-9f4b-04a877add3cf","filename":"/mnt/home/D6VXKxGo/.sage/temp/compute1a/15797/tmp_J9fmDL.png"}}︡{"html":"<h3>Mean = 0.898169336384</h3>"}︡{"html":"<h3>Standard Deviation = 0.0917677518111</h3>"}︡
︠c07385f0-5baf-4cd4-b927-dd1f2e2d39ebi︠
%md
# Chapter 6: Vector Spaces

This material is all about *ABSTRACTION*, i.e., taking the key ideas from what we have already done, and applying them in new and surprising ways:

- subspaces
- linear transformations
- matrices corresponding to linear transformations
- kernel/image of linear transformation (=solving systems)

<br>
---
Let's ABSTRACT...
<br>
︡92a43ec3-7616-405c-8cba-c94a455ce9f3︡{"html":"<h1>Chapter 6: Vector Spaces</h1>\n\n<p>This material is all about <em>ABSTRACTION</em>, i.e., taking the key ideas from what we have already done, and applying them in new and surprising ways:</p>\n\n<ul>\n<li>subspaces</li>\n<li>linear transformations</li>\n<li>matrices corresponding to linear transformations</li>\n<li>kernel/image of linear transformation (=solving systems)</li>\n</ul>\n\n<h2><br></h2>\n\n<p>Let&#8217;s ABSTRACT&#8230;\n<br></p>\n"}︡

︠ab8b3dcb-7515-482c-a1ca-bb2ce2ddf988i︠
%md

## Definition: "Field"

**Definition (Field):** A field $F$ is a set with an addition $+:F\times F\to F$ and multiplication $\cdot:F\times F\to F$ such that the following axioms hold for all $a,b,c\in F$:

   - *Associativity*:  We have $a\cdot (b\cdot c) = (a\cdot b)\cdot c$ and $a+(b+c) = (a+b)+c$
   - *Commutativity*: We have $a\cdot b=b\cdot a$ and $a+b=b+a$
   - *Identity elements*: There are $0,1\in F$ such that $0+a=a$ and $1\cdot a=a$.
   - *Inverses*: There is $-a\in F$ such that $a + (-a)=0$; also, whenever $a\neq 0$, there is $a^{-1}\in F$ with $a^{-1} \cdot a = 1$.
   - *Distributivity*: We have $a\cdot (b+c) = a\cdot b + a\cdot c$.

### Examples: these are fields

- The set $\mathbb{Q}$ of rational numbers (all fractions) is a field

- The set $\mathbb{R}$ of real numbers (decimals) is a field

- The set $\mathbb{C}$ of complex numbers (decimals) is a field

- Let $p$ be a prime number. The set $\mathbb{F}_p = \{0,1,\ldots, p-1\}$ of numbers modulo $p$ is a field.    (The book annoyingly denotes this by $\mathbb{Z}_p$, which makes me cringe.)

- The set $\mathbb{Q}[\sqrt{5}]$ of numbers of the form $\{a + b\sqrt{5} : a,b\in \mathbb{Q}\}$ is a field.

- The set $\mathbb{Q}(x)=\left\\{\frac{f(x)}{g(x)} : f,g\text{ polynomials with } g \neq 0\right\\}$ is the field of rational functions.
︡89842b56-ab81-4bed-ae23-8281548cb5f4︡{"html":"<h2>Definition: &#8220;Field&#8221;</h2>\n\n<p><strong>Definition (Field):</strong> A field $F$ is a set with an addition $+:F\\times F\\to F$ and multiplication $\\cdot:F\\times F\\to F$ such that the following axioms hold for all $a,b,c\\in F$:</p>\n\n<ul>\n<li><em>Associativity</em>:  We have $a\\cdot (b\\cdot c) = (a\\cdot b)\\cdot c$ and $a+(b+c) = (a+b)+c$</li>\n<li><em>Commutativity</em>: We have $a\\cdot b=b\\cdot a$ and $a+b=b+a$</li>\n<li><em>Identity elements</em>: There are $0,1\\in F$ such that $0+a=a$ and $1\\cdot a=a$.</li>\n<li><em>Inverses</em>: There is $-a\\in F$ such that $a + (-a)=0$; also, whenever $a\\neq 0$, there is $a^{-1}\\in F$ with $a^{-1} \\cdot a = 1$.</li>\n<li><em>Distributivity</em>: We have $a\\cdot (b+c) = a\\cdot b + a\\cdot c$.</li>\n</ul>\n\n<h3>Examples: these are fields</h3>\n\n<ul>\n<li><p>The set $\\mathbb{Q}$ of rational numbers (all fractions) is a field</p></li>\n<li><p>The set $\\mathbb{R}$ of real numbers (decimals) is a field</p></li>\n<li><p>The set $\\mathbb{C}$ of complex numbers (decimals) is a field</p></li>\n<li><p>Let $p$ be a prime number. The set $\\mathbb{F}_p = {0,1,\\ldots, p-1}$ of numbers modulo $p$ is a field.    (The book annoyingly denotes this by $\\mathbb{Z}_p$, which makes me cringe.)</p></li>\n<li><p>The set $\\mathbb{Q}[\\sqrt{5}]$ of numbers of the form ${a + b\\sqrt{5} : a,b\\in \\mathbb{Q}}$ is a field.</p></li>\n<li><p>The set $\\mathbb{Q}(x)=\\left\\{\\frac{f(x)}{g(x)} : f,g\\text{ polynomials with } g \\neq 0\\right\\}$ is the field of rational functions.</p></li>\n</ul>\n"}︡
︠ca9db1fe-ede6-466c-b596-1b81725034f8i︠
%md
## Definition: "Field"

**Definition (Field):** A field $F$ is a set with an addition $+:F\times F\to F$ and multiplication $\cdot:F\times F\to F$ such that the following axioms hold for all $a,b,c\in F$:

   - *Associativity*:  We have $a\cdot (b\cdot c) = (a\cdot b)\cdot c$ and $a+(b+c) = (a+b)+c$
   - *Commutativity*: We have $a\cdot b=b\cdot a$ and $a+b=b+a$
   - *Identity elements*: There are $0,1\in F$ such that $0+a=a$ and $1\cdot a=a$.
   - *Inverses*: There is $-a\in F$ such that $a + (-a)=0$; also, whenever $a\neq 0$, there is $a^{-1}\in F$ with $a^{-1} \cdot a = 1$.
   - *Distributivity*: We have $a\cdot (b+c) = a\cdot b + a\cdot c$.


### Examples: these are NOT fields

- The set $\mathbb{Z}$ of integers is not a field: for $a\in \mathbb{Z}$ we might not have $a^{-1}\in\mathbb{Z}$.

- The set of *positive* real numbers is not a field: doesn't have additive inverses or 0

- If $n$ is a composite number, then the set $\mathbb{Z}/n\mathbb{Z} = \{0,1,2,\ldots, n-1\}$ is not a field: don't always have an $a^{-1}$.

- The set $\mathbb{Z}$ of number of the form $a+b\sqrt{5}$, with $a,b\in\mathbb{Z}$ is not a field (don't have inverses).

- The set of polynomials $f(x)$ over a field $F$ is not a field, since we don't have inverses.

Note: Th examples above are all something called **rings**, except for the positive real numbers (which aren't a ring).  A ring is just like a field, but without the requirement that $a^{-1}$ defined for all nonzero $a$. We will not consider rings further in this course.


︡4216e694-d805-4c70-92fa-ed030ebe7272︡{"html":"<h2>Definition: &#8220;Field&#8221;</h2>\n\n<p><strong>Definition (Field):</strong> A field $F$ is a set with an addition $+:F\\times F\\to F$ and multiplication $\\cdot:F\\times F\\to F$ such that the following axioms hold for all $a,b,c\\in F$:</p>\n\n<ul>\n<li><em>Associativity</em>:  We have $a\\cdot (b\\cdot c) = (a\\cdot b)\\cdot c$ and $a+(b+c) = (a+b)+c$</li>\n<li><em>Commutativity</em>: We have $a\\cdot b=b\\cdot a$ and $a+b=b+a$</li>\n<li><em>Identity elements</em>: There are $0,1\\in F$ such that $0+a=a$ and $1\\cdot a=a$.</li>\n<li><em>Inverses</em>: There is $-a\\in F$ such that $a + (-a)=0$; also, whenever $a\\neq 0$, there is $a^{-1}\\in F$ with $a^{-1} \\cdot a = 1$.</li>\n<li><em>Distributivity</em>: We have $a\\cdot (b+c) = a\\cdot b + a\\cdot c$.</li>\n</ul>\n\n<h3>Examples: these are NOT fields</h3>\n\n<ul>\n<li><p>The set $\\mathbb{Z}$ of integers is not a field: for $a\\in \\mathbb{Z}$ we might not have $a^{-1}\\in\\mathbb{Z}$.</p></li>\n<li><p>The set of <em>positive</em> real numbers is not a field: doesn&#8217;t have additive inverses or 0</p></li>\n<li><p>If $n$ is a composite number, then the set $\\mathbb{Z}/n\\mathbb{Z} = {0,1,2,\\ldots, n-1}$ is not a field: don&#8217;t always have an $a^{-1}$.</p></li>\n<li><p>The set $\\mathbb{Z}$ of number of the form $a+b\\sqrt{5}$, with $a,b\\in\\mathbb{Z}$ is not a field (don&#8217;t have inverses).</p></li>\n<li><p>The set of polynomials $f(x)$ over a field $F$ is not a field, since we don&#8217;t have inverses.</p></li>\n</ul>\n\n<p>Note: Th examples above are all something called <strong>rings</strong>, except for the positive real numbers (which aren&#8217;t a ring).  A ring is just like a field, but without the requirement that $a^{-1}$ defined for all nonzero $a$. We will not consider rings further in this course.</p>\n"}︡
︠d4a98e5f-0ffb-4687-adbc-6466f854dbd9i︠

%md

## Definition: Vector Space

**Definition (Vector Space):** A **vector space** over a field $F$ is a  set $V$ with $+:V\times V \to V$ and $\times : F\times V \to V$ such that the following axioms hold for all $u,v,w\in V$ and $a,b\in F$:

- *Commutativity*: $u+v = v+u$
- *Identity element for vector addition*: there's $0 \in V$ with $0+u=u$
- *Identity element for scalar multiplication*: $1 \cdot u= u$
- *Inverse for vector addition*: There's $-u\in V$ with $(-u) + u=0$
- *Associativity of vector addition*: $(u+v)+w = u+(v+w)$
- *Associativity of scalar multiplication*: $a\cdot (b\cdot u) = (a\cdot b) \cdot u$
- *Distributivity over vector addition*: We have $a\cdot (u+v) = a\cdot u + a\cdot v$
- *Distributivity over scalar multiplication*: We have $(a+b)\cdot u = a\cdot u + b\cdot u$

(Note: A **module** is the analogue of a vector space, but over a ring instead of a field.  We will not consider them further in this course.)
︡6d8cd98c-fe71-480a-8d1b-3d2582deb707︡{"html":"<h2>Definition: Vector Space</h2>\n\n<p><strong>Definition (Vector Space):</strong> A <strong>vector space</strong> over a field $F$ is a  set $V$ with $+:V\\times V \\to V$ and $\\times : F\\times V \\to V$ such that the following axioms hold for all $u,v,w\\in V$ and $a,b\\in F$:</p>\n\n<ul>\n<li><em>Commutativity</em>: $u+v = v+u$</li>\n<li><em>Identity element for vector addition</em>: there&#8217;s $0 \\in V$ with $0+u=u$</li>\n<li><em>Identity element for scalar multiplication</em>: $1 \\cdot u= u$</li>\n<li><em>Inverse for vector addition</em>: There&#8217;s $-u\\in V$ with $(-u) + u=0$</li>\n<li><em>Associativity of vector addition</em>: $(u+v)+w = u+(v+w)$</li>\n<li><em>Associativity of scalar multiplication</em>: $a\\cdot (b\\cdot u) = (a\\cdot b) \\cdot u$</li>\n<li><em>Distributivity over vector addition</em>: We have $a\\cdot (u+v) = a\\cdot u + a\\cdot v$</li>\n<li><em>Distributivity over scalar multiplication</em>: We have $(a+b)\\cdot u = a\\cdot u + b\\cdot u$</li>\n</ul>\n\n<p>(Note: A <strong>module</strong> is the analogue of a vector space, but over a ring instead of a field.  We will not consider them further in this course.)</p>\n"}︡
︠84d44855-e856-41f2-84c2-cec988e4ccebi︠
%md

### Examples: These are vector spaces

- The set $\mathbb{R}^n$ of $n$-tuples for real numbers, which we've been studying all this time.

- More generally, for any field $F$ and $n\geq 1$, the set $F^n$ is a vector space.

- Any subspace of $F^n$ is a vector space.

- For any integers $n,m\geq 1$ and field $F$, the set ${\rm Mat}_{n,m}(F)$ of $n\times m$ matrices with coefficients in $F$ is a vector space.

- The set of polynomials (over a field $F$) is a vector space.

- The set of polynomials (over a field $F$) of degree at most $n$ is a vector space.

- The set of all real-valued functions $f:\mathbb{R} \to \mathbb{R}$ is a vector space.

- The set of (twice differentiable) functions $f:\mathbb{R}\to\mathbb{R}$ that solve the differential equation $f''+f=0$ is a vector space.
︡3dfc6e5f-baed-4de5-b4ca-89e91e5fb4d1︡{"html":"<h3>Examples: These are vector spaces</h3>\n\n<ul>\n<li><p>The set $\\mathbb{R}^n$ of $n$-tuples for real numbers, which we&#8217;ve been studying all this time.</p></li>\n<li><p>More generally, for any field $F$ and $n\\geq 1$, the set $F^n$ is a vector space.</p></li>\n<li><p>Any subspace of $F^n$ is a vector space.</p></li>\n<li><p>For any integers $n,m\\geq 1$ and field $F$, the set ${\\rm Mat}_{n,m}(F)$ of $n\\times m$ matrices with coefficients in $F$ is a vector space.</p></li>\n<li><p>The set of polynomials (over a field $F$) is a vector space.</p></li>\n<li><p>The set of polynomials (over a field $F$) of degree at most $n$ is a vector space.</p></li>\n<li><p>The set of all real-valued functions $f:\\mathbb{R} \\to \\mathbb{R}$ is a vector space.</p></li>\n<li><p>The set of (twice differentiable) functions $f:\\mathbb{R}\\to\\mathbb{R}$ that solve the differential equation $f&#8217;&#8217;+f=0$ is a vector space.</p></li>\n</ul>\n"}︡
︠9f787918-12d4-43f8-a34d-a33ee4e62a1di︠
%md

### Examples: These are NOT vector space.

- The set $\mathbb{Z}^n$ of $n$-tuples of integers is *not* a vector space over $\mathbb{Q}$.

- For any integer $n\geq 1$, the set ${\rm GL}_n(F)$ of invertible matrices is *not* a vector space (it's something called a "group").

- Let $F$ be a field.  Any subset of $F^n$ that is not a subspace is also not a vector space.

︡732d15a6-f59c-4c10-88b2-8dadd9b31e7a︡{"html":"<h3>Examples: These are NOT vector space.</h3>\n\n<ul>\n<li><p>The set $\\mathbb{Z}^n$ of $n$-tuples of integers is <em>not</em> a vector space over $\\mathbb{Q}$.</p></li>\n<li><p>For any integer $n\\geq 1$, the set ${\\rm GL}_n(F)$ of invertible matrices is <em>not</em> a vector space (it&#8217;s something called a &#8220;group\").</p></li>\n<li><p>Let $F$ be a field.  Any subset of $F^n$ that is not a subspace is also not a vector space.</p></li>\n</ul>\n"}︡
︠b7739f73-ebff-49cc-bd05-3583d1d11d16︠






























