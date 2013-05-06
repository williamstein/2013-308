︠49a20ddd-33c1-4088-a98f-38a9c24690e3i︠
%hide
%md
# Lecture 16: Eigenvalues and Eigenvectors
### May 6, 2013

#### Notes

 1. Start Screencast

 2. Homework -- due Friday this time

 3. Questions --
 4. Eigenvalues and eigenvectors -- what they are and how to find them.  See Section 4.1 of book.

︡aff735a5-abd1-45e4-a251-cefa65bdb7c4︡{"html":"<h1>Lecture 16: Eigenvalues and Eigenvectors</h1>\n\n<h3>May 6, 2013</h3>\n\n<h4>Notes</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Homework &#8211; due Friday this time</p></li>\n<li><p>Questions &#8211;</p></li>\n<li>Eigenvalues and eigenvectors &#8211; what they are and how to find them.  See Section 4.1 of book.</li>\n</ol>\n"}︡
︠d9ab5ee9-9cc1-42aa-94d9-fd8407d35c75i︠
%hide
%md

## Recall: Eigenvalues and Eigenvectors

<div class="lighten pull-right" style="background-color:#FFCCBE; border-radius:5px; border:1px solid grey; padding:5px; box-shadow:3px 3px 3px;">"Eigen" means "own", "special", "unique."</div>

**Definition (eigenvector):** An *eigenvector* is a nonzero vector $v$ such that $T(v) = c v$, for some scalar $c$.

Thus: it is a vector that is simply rescaled by $T$.

**Amazing observation:** For *most* (but not all!) linear transformations $T=T_A$, there is a basis for $\mathbb{C}^n$ of eigenvectors.   When this is the case, there is a matrix $B$ such that
$$
   B^{-1} A B = D
$$
is a diagonal matrix.

Yes, you heard me right, over the complex numbers, (almost) every matrix is really a diagonal matrix in disguise.

#### Diagonal matrices are DEAD EASY.



︡ce705b43-51ff-40fe-958d-6e42a01d8a37︡{"html":"<h2>Recall: Eigenvalues and Eigenvectors</h2>\n\n<div class=\"lighten pull-right\" style=\"background-color:#FFCCBE; border-radius:5px; border:1px solid grey; padding:5px; box-shadow:3px 3px 3px;\">\"Eigen\" means \"own\", \"special\", \"unique.\"</div>\n\n<p><strong>Definition (eigenvector):</strong> An <em>eigenvector</em> is a nonzero vector $v$ such that $T(v) = c v$, for some scalar $c$.</p>\n\n<p>Thus: it is a vector that is simply rescaled by $T$.  </p>\n\n<p><strong>Amazing observation:</strong> For <em>most</em> (but not all!) linear transformations $T=T_A$, there is a basis for $\\mathbb{C}^n$ of eigenvectors.   When this is the case, there is a matrix $B$ such that\n$$\n   B^{-1} A B = D\n$$\nis a diagonal matrix.</p>\n\n<p>Yes, you heard me right, over the complex numbers, (almost) every matrix is really a diagonal matrix in disguise.</p>\n\n<h4>Diagonal matrices are DEAD EASY.</h4>\n"}︡
︠0ec7dd64-ed0f-4422-a25c-783706881c6bi︠
%hide
%md

## One Example Application.

Let $A=\left(\begin{array}{rr}
-3 & -1 \\\\
5 & 3
\end{array}\right)$.  What is $A^{2013}$?

#### Solution:
There is an algorithm that involves a *new idea*, which yields:
$$
  A = \left(\begin{array}{rr}
-1 & 1 \\\\
1 & -1
\end{array}\right) \cdot
\left(\begin{array}{rr}
2 & 0 \\\\
0 & -2
\end{array}\right)\cdot
\left(\begin{array}{rr}
-1 & 1 \\\\
5 & -1
\end{array}\right)^{-1}
$$
Thus
$$
  A^{2013} = \left(\begin{array}{rr}
-1 & 1 \\\\
5 & -1
\end{array}\right) \cdot
\left(\begin{array}{rr}
2 & 0 \\\\
0 & -2
\end{array}\right)^{2013}\cdot
\left(\begin{array}{rr}
-1 & 1 \\\\
5 & -1
\end{array}\right)^{-1}
$$

︡e2d2591e-2c07-4162-b6a9-c0ef79f76416︡{"html":"<h2>One Example Application.</h2>\n\n<p>Let $A=\\left(\\begin{array}{rr}\n-3 &amp; -1 \\\\\n5 &amp; 3\n\\end{array}\\right)$.  What is $A^{2013}$?</p>\n\n<h4>Solution:</h4>\n\n<p>There is an algorithm that involves a <em>new idea</em>, which yields:\n$$\n  A = \\left(\\begin{array}{rr}\n-1 &amp; 1 \\\\\n1 &amp; -1\n\\end{array}\\right) \\cdot\n\\left(\\begin{array}{rr}\n2 &amp; 0 \\\\\n0 &amp; -2\n\\end{array}\\right)\\cdot\n\\left(\\begin{array}{rr}\n-1 &amp; 1 \\\\\n5 &amp; -1\n\\end{array}\\right)^{-1}\n$$\nThus\n$$\n  A^{2013} = \\left(\\begin{array}{rr}\n-1 &amp; 1 \\\\\n5 &amp; -1\n\\end{array}\\right) \\cdot\n\\left(\\begin{array}{rr}\n2 &amp; 0 \\\\\n0 &amp; -2\n\\end{array}\\right)^{2013}\\cdot\n\\left(\\begin{array}{rr}\n-1 &amp; 1 \\\\\n5 &amp; -1\n\\end{array}\\right)^{-1}\n$$</p>\n"}︡
︠6e5cd67a-d367-4bea-af67-648fa3457841︠
︠2af504c6-ed83-4b2b-a1bf-c84e6ce034a3i︠
%hide
%md

## How??

1. Find all constants $c$ such that $A-c$ has a nonzero vector in its nullspace, i.e., $(A-c)v=0$, i.e., $Av=cv$.

2. If there is a basis of such vectors $v_1,\ldots, v_n$, then  $$
  A = S^{-1}\cdot D S
$$
where $S$ has columns the $v_i$ and $D$ is the diagonal matrix with the corresponding $c_i$'s down the diagonal.
︡96ac1860-f50f-45ef-90a1-9f85e150b81f︡{"html":"<h2>How??</h2>\n\n<ol>\n<li><p>Find all constants $c$ such that $A-c$ has a nonzero vector in its nullspace, i.e., $(A-c)v=0$, i.e., $Av=cv$.</p></li>\n<li><p>If there is a basis of such vectors $v_1,\\ldots, v_n$, then  $$\nA = S^{-1}\\cdot D S\n$$\nwhere $S$ has columns the $v_i$ and $D$ is the diagonal matrix with the corresponding $c_i$&#8217;s down the diagonal.</p></li>\n</ol>\n"}︡
︠aaf4ae1e-002a-450d-a56d-90ab1fe6a8c5i︠
%hide
%md
## But how do we do step 1?!

That requires yet another **new idea**...

As inspiration, let's simply try to do the above step for $A=\left(\begin{array}{rr}
-3 & -1 \\\\
5 & 3
\end{array}\right).$

︡771ce0a7-3cf3-4a9e-890e-adfeb3292579︡{"html":"<h2>But how do we do step 1?!</h2>\n\n<p>That requires yet another <strong>new idea</strong>&#8230;</p>\n\n<p>As inspiration, let&#8217;s simply try to do the above step for $A=\\left(\\begin{array}{rr}\n-3 &amp; -1 \\\\\n5 &amp; 3\n\\end{array}\\right).$</p>\n"}︡
︠6772f2e9-ac7f-435b-b80d-3c293fb4bf0ei︠
%hide
%md

## Step 1: Find $c$ such that $A-c$ has a nonzero nullspace.

**Idea:** These $c$ are the same as the $c$ where $A-c=\left(\begin{array}{rr}
-3-c & -1 \\\\
5 & 3-c
\end{array}\right)$ is *not* invertible.

**Idea:** Use that formula for the inverse of a $2\times 2$ matrix with the $ad-bc$ out front:
$$
\left(\begin{array}{rr}
a & b \\\\
c & d
\end{array}\right)^{-1}
 = \frac{1}{ad-bc}
 \left(\begin{array}{rr}
d & -b \\\\
-c & a
\end{array}\right)
$$

**Fact:** A $2\times 2$ matrix is invertible if and only if that $ad-bc$ factor is nonzero.

Note: we are using "c" in two ways above; don't get confused.
︡f621f363-2013-4f1c-a779-f2164db682af︡{"html":"<h2>Step 1: Find $c$ such that $A-c$ has a nonzero nullspace.</h2>\n\n<p><strong>Idea:</strong> These $c$ are the same as the $c$ where $A-c=\\left(\\begin{array}{rr}\n-3-c &amp; -1 \\\\\n5 &amp; 3-c\n\\end{array}\\right)$ is <em>not</em> invertible.</p>\n\n<p><strong>Idea:</strong> Use that formula for the inverse of a $2\\times 2$ matrix with the $ad-bc$ out front:\n$$\n\\left(\\begin{array}{rr}\na &amp; b \\\\\nc &amp; d\n\\end{array}\\right)^{-1}\n = \\frac{1}{ad-bc} \n \\left(\\begin{array}{rr}\nd &amp; -b \\\\\n-c &amp; a\n\\end{array}\\right)\n$$</p>\n\n<p><strong>Fact:</strong> A $2\\times 2$ matrix is invertible if and only if that $ad-bc$ factor is nonzero. </p>\n\n<p>Note: we are using &#8220;c&#8221; in two ways above; don&#8217;t get confused.</p>\n"}︡
︠50923a56-1a2f-4e74-a11a-a850609e5eb2i︠
%hide
%md
## Step 2: For each $c$, find a basis for the $v$ with $Av = cv$.

"Easy" in theory: just find a basis for the nullspace of $A-c$.

NOTES:

 - In real life, this step is very painful if you compute $c$ as an exact number, so people rarely do this (instead doing closely related things, e.g., computing "rational canonical form").

  - But the **idea** that one can do this does lead to many related useful ideas, so pay attention.

  - In particular, these eigenvalues $c$ are interesting even if you don't find $v$, because they yield deep information about $A$.   Wouldn't you like to be able to *understand* this wikipedia page: <http://en.wikipedia.org/wiki/PageRank>
︡6f7bee03-7e1c-42e4-be80-c7343b87746c︡{"html":"<h2>Step 2: For each $c$, find a basis for the $v$ with $Av = cv$.</h2>\n\n<p>&#8220;Easy&#8221; in theory: just find a basis for the nullspace of $A-c$.</p>\n\n<p>NOTES:</p>\n\n<ul>\n<li><p>In real life, this step is very painful if you compute $c$ as an exact number, so people rarely do this (instead doing closely related things, e.g., computing &#8220;rational canonical form\").</p>\n\n<ul>\n<li><p>But the <strong>idea</strong> that one can do this does lead to many related useful ideas, so pay attention.</p></li>\n<li><p>In particular, these eigenvalues $c$ are interesting even if you don&#8217;t find $v$, because they yield deep information about $A$.   Wouldn&#8217;t you like to be able to <em>understand</em> this wikipedia page: <a href=\"http://en.wikipedia.org/wiki/PageRank\">http://en.wikipedia.org/wiki/PageRank</a></p></li>\n</ul></li>\n</ul>\n"}︡
︠629f9181-a72d-4204-8631-e5f6b6ecd7b8︠
# Do a bunch of work on the whiteboard, and arrive at this, carefully proving that
#    A = S * D * S^(-1)
# by noting what happens when we apply both sides of the above equality to the
# standard basis vectors.

D = matrix(QQ,2,2,[2,0,0,-2])
S = matrix(ZZ,2,2,[-1,1,5,-1])
S*D*S^(-1)
︡285bf9b4-7693-4737-a412-f774c9e6e386︡{"stdout":"[-3 -1]\n[ 5  3]"}︡{"stdout":"\n"}︡
︠676e3ef3-7852-4e9e-862e-6db05c12d5c9i︠
%hide
%md
## Step 1: In general

Given an $n\times n$ matrix $A$, you can compute all the eigenvalues $c$ of $A$ as follows.

1a. Compute the *polynomial* $f(x) = \text{det}(x-A)$, which has degree $n$.

2a. Then the eigenvalues $c$ are the roots of $f$, i.e., the numbers such that $f(c)=0$.

## Determinants

Given a matrix $A=(a_{i,j})$, the determinant $|A|=\text{det}(A)$ of $A$ is an incredibly useful number associated to $A$.
For example, $A$ is invertible if and only if $|A|\neq 0$.

 - If $A$ is $1\times 1$, then $|A| = a_{1,1}$.

 - If $A=\left(\begin{array}{rr}
a & b \\\\
c & d
\end{array}\right)$, then $|A| = ad-bc$.

 - For bigger matrices, the determinant is more complicated...
︡70acc17f-7698-4d5b-b5e8-adc3d45a8951︡{"html":"<h2>Step 1: In general</h2>\n\n<p>Given an $n\\times n$ matrix $A$, you can compute all the eigenvalues $c$ of $A$ as follows.</p>\n\n<p>1a. Compute the <em>polynomial</em> $f(x) = \\text{det}(x-A)$, which has degree $n$.</p>\n\n<p>2a. Then the eigenvalues $c$ are the roots of $f$, i.e., the numbers such that $f(c)=0$.</p>\n\n<h2>Determinants</h2>\n\n<p>Given a matrix $A=(a_{i,j})$, the determinant $|A|=\\text{det}(A)$ of $A$ is an incredibly useful number associated to $A$.\nFor example, $A$ is invertible if and only if $|A|\\neq 0$.</p>\n\n<ul>\n<li><p>If $A$ is $1\\times 1$, then $|A| = a_{1,1}$.</p></li>\n<li><p>If $A=\\left(\\begin{array}{rr}\na &amp; b \\\\\nc &amp; d\n\\end{array}\\right)$, then $|A| = ad-bc$.</p></li>\n<li><p>For bigger matrices, the determinant is more complicated&#8230;</p></li>\n</ul>\n"}︡
︠550bbf91-74d7-441b-9c35-01acbd3b89cci︠
%hide
%md

### The general definition of determinant

Let $A=(a_{i,j})$.

**Definition (Minor):** The $i,j$ minor $A_{i,j}$ of $A$ is the matrix got from $A$ by deleting the $i$th row and $j$th column.

**Definition (Determinant):** $$|A| = \sum_{j=1}^n (-1)^{1+j}a_{1,j}|A_{1,j}|$$

Notes:

 1. For computing eigenvalues, we use this definition with some of the entries $a_{i,j}$ being polynomials.

 2. If $A$ has mostly 0 entries or at most 4 rows, this definition doesn't take too long to use...

 4. If $A$ has more random-looking entries and more than a few rows, this definition is **basically impossibly slow** to use for computation... but don't fear, there are many other algorithms that are much faster, even if $A$ has hundreds of rows.
︡73521bfc-7a82-462f-a234-89d87641ba4b︡{"html":"<h3>The general definition of determinant</h3>\n\n<p>Let $A=(a_{i,j})$.</p>\n\n<p><strong>Definition (Minor):</strong> The $i,j$ minor $A_{i,j}$ of $A$ is the matrix got from $A$ by deleting the $i$th row and $j$th column.</p>\n\n<p><strong>Definition (Determinant):</strong> $$|A| = \\sum_{j=1}^n (-1)^{1+j}a_{1,j}|A_{1,j}|$$</p>\n\n<p>Notes:</p>\n\n<ol>\n<li><p>For computing eigenvalues, we use this definition with some of the entries $a_{i,j}$ being polynomials.</p></li>\n<li><p>If $A$ has mostly 0 entries or at most 4 rows, this definition doesn&#8217;t take too long to use&#8230;</p></li>\n<li><p>If $A$ has more random-looking entries and more than a few rows, this definition is <strong>basically impossibly slow</strong> to use for computation&#8230; but don&#8217;t fear, there are many other algorithms that are much faster, even if $A$ has hundreds of rows.</p></li>\n</ol>\n"}︡

︠ce0c8745-ad12-431c-b621-b4135d001655o︠
@interact
def f(n=[1..20], another=button("Another one...", classes="btn-info", label='')):
    A = random_matrix(ZZ,n)
    show(A)
    html("Determinant = $%s$"%A.det())
︡73323f53-b303-4dc5-8c54-b50d8f7b8e1f︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["another",12,null]],[["",12,null]]],"id":"36d22d1a-1af9-45f9-ac6c-3b28834edebd","controls":[{"buttons":false,"control_type":"selector","ncols":null,"button_classes":null,"default":0,"lbls":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"],"label":"n","nrows":null,"width":null,"var":"n"},{"control_type":"button","default":"Another one...","label":"","width":null,"classes":"btn-info","var":"another","icon":null}]}}︡

︠724fa060-a925-47ef-a0a2-257b0e59ce0eo︠
@interact
def f(n=(1..300)):
    A = random_matrix(ZZ,n)
    t = cputime()
    d = A.det()
    print "Computed determinant of random %s x %s matrix in %s seconds"%(n,n,cputime(t))
    print d
︡0b8f0bac-03fb-43e5-b3a7-3c10d808eccc︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"3779b003-7db6-4f90-b191-03509dfdab6a","controls":[{"control_type":"slider","default":0,"var":"n","width":null,"vals":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234","235","236","237","238","239","240","241","242","243","244","245","246","247","248","249","250","251","252","253","254","255","256","257","258","259","260","261","262","263","264","265","266","267","268","269","270","271","272","273","274","275","276","277","278","279","280","281","282","283","284","285","286","287","288","289","290","291","292","293","294","295","296","297","298","299","300"],"animate":true,"label":"n","display_value":true}]}}︡
︠505fbe19-2b1e-4802-9325-7b1d0206ee96︠



