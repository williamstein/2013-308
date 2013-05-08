︠49a20ddd-33c1-4088-a98f-38a9c24690e3i︠
%hide
%md
# Lecture 17: Determinants
### (needed for Eigenvalues and Eigenvectors)
### May 8, 2013

#### Notes

 1. Start Screencast

 2. Homework -- due Friday, May 10 and 11:59pm

 3. New Homework posted

 4. Questions --

 5. Determinants -- read Section 4.2 of book.




︡74ebc770-a0c5-4e44-9e28-8dec21249813︡{"html":"<h1>Lecture 17: Determinants</h1>\n\n<h3>(needed for Eigenvalues and Eigenvectors)</h3>\n\n<h3>May 8, 2013</h3>\n\n<h4>Notes</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Homework &#8211; due Friday, May 10 and 11:59pm</p></li>\n<li><p>New Homework posted</p></li>\n<li><p>Questions &#8211;</p></li>\n<li><p>Determinants &#8211; read Section 4.2 of book.</p></li>\n</ol>\n"}︡
︠676e3ef3-7852-4e9e-862e-6db05c12d5c9i︠
%hide
%md
## Review: Eigenvalues and Eigenvectors

Given an $n\times n$ matrix $A$, we can compute all the eigenvalues and eigenvectors as follows.

1. Compute the **characteristic polynomial** $f(x) = \text{det}(x-A)$, which has degree $n$.

2. Then the **eigenvalues** $\lambda_i$ are the roots of $f$, i.e., the numbers such that $f(\lambda_i)=0$.

3. For each $\lambda$, find a basis $v_i$ of **eigenvectors** for the nullspace of $A-\lambda$.

**Theorem:** *Suppose the $v_i$ span $\mathbb{C}^n$.  Let $B$ be the matrix with columns the $v_i$, and $D$ the diagonal matrix with entries $\lambda_i$.  Then $ A = B D B^{-1}$.*

Proof: We have $ABe_i = BDe_i$ for each standard basis vector $e_i$.
︡7c3d51d8-10d0-4395-b959-89bff426c23e︡{"html":"<h2>Review: Eigenvalues and Eigenvectors</h2>\n\n<p>Given an $n\\times n$ matrix $A$, we can compute all the eigenvalues and eigenvectors as follows.</p>\n\n<ol>\n<li><p>Compute the <strong>characteristic polynomial</strong> $f(x) = \\text{det}(x-A)$, which has degree $n$.</p></li>\n<li><p>Then the <strong>eigenvalues</strong> $\\lambda_i$ are the roots of $f$, i.e., the numbers such that $f(\\lambda_i)=0$.</p></li>\n<li><p>For each $\\lambda$, find a basis $v_i$ of <strong>eigenvectors</strong> for the nullspace of $A-\\lambda$.</p></li>\n</ol>\n\n<p><strong>Theorem:</strong> <em>Suppose the $v_i$ span $\\mathbb{C}^n$.  Let $B$ be the matrix with columns the $v_i$, and $D$ the diagonal matrix with entries $\\lambda_i$.  Then $ A = B D B^{-1}$.</em></p>\n\n<p>Proof: We have $ABe_i = BDe_i$ for each standard basis vector $e_i$.</p>\n"}︡
︠d16de0c4-c3e0-4f1a-b48a-370ac8718926︠
f = charpoly(matrix(2,2,[1,2,3,4])); f
︡5765f019-e012-4b61-ab90-ee074e4ba6c3︡{"stdout":"x^2 - 5*x - 2\n"}︡
︠aace58ea-29fa-46ee-8455-ec2cc323a15e︠
solve(f(x)==0, x)
︡205fcb52-f49b-45a4-9d40-b3e112a5fbe4︡{"stdout":"[x == -1/2*sqrt(33) + 5/2, x == 1/2*sqrt(33) + 5/2]\n"}︡
︠b5ebcfc4-c36a-425e-adb9-b9b04582ee30i︠
%hide
%md

## Some pictures of $v$ and $v+Av$ like in the book

Page 269 of the book has two pictures like this, which are supposed to
geometrically illustrate the idea of eigenvectors...
︡fd9c4252-1b20-485d-916c-bf69794bf268︡{"html":"<h2>Some pictures of $v$ and $v+Av$ like in the book</h2>\n\n<p>Page 269 of the book has two pictures like this, which are supposed to \ngeometrically illustrate the idea of eigenvectors&#8230;</p>\n"}︡
︠0dea99e8-3c4a-4cb0-b283-1d47b75829c4︠
@interact(layout=[['A','n','frame', 'arrows']])
def f(A = ("$A=$",matrix(QQ,2,2,[2,0,0,-3])), n=(10,(4..100)), frame=False, arrows=True):
    g = Graphics()
    for theta in [0,2*pi/n,..,2*pi]:
        v = vector([cos(theta), sin(theta)])
        if arrows:
            g += arrow((0,0),v, width=1, arrowsize=2)
            g += arrow(v, v+ A*v, color="green", width=1, arrowsize=2)
        else:
            g += line([(0,0), v], thickness=.3)
            g += line([v, v + A*v], color='green', thickness=.3)

    f = charpoly(A)
    html("charpoly(A) = $%s$ = $%s$"%(latex(f), latex(f.change_ring(CC).factor())))
    B = 2
    g.show(aspect_ratio=1, svg=False, figsize=5, frame=frame, xmin=-B, xmax=B, ymin=-B, ymax=B)
︡c62808cd-5127-4677-be21-98ce0f264c82︡{"interact":{"style":"None","flicker":false,"layout":[[["A",3,null],["n",3,null],["frame",3,null],["arrows",3,null]],[["",12,null]]],"id":"8c5c9be2-4e09-499d-8ef0-2f1cbde3a971","controls":[{"control_type":"input-grid","ncols":2,"default":[["2","0"],["0","-3"]],"label":"$A=$","nrows":2,"width":5,"var":"A"},{"control_type":"slider","default":6,"var":"n","width":null,"vals":["4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"],"animate":true,"label":"n","display_value":true},{"default":false,"var":"frame","readonly":false,"control_type":"checkbox","label":"frame"},{"default":true,"var":"arrows","readonly":false,"control_type":"checkbox","label":"arrows"}]}}︡
︠2ff57699-d326-4829-bc5f-5c44dd82160b︠
%hide
%md

## Determinants

Given a matrix $A=(a_{i,j})$, the determinant $|A|=\text{det}(A)$ of $A$ is an incredibly useful number associated to $A$.
For example, $A$ is invertible if and only if $|A|\neq 0$.

 - If $A$ is $1\times 1$, then $|A| = a_{1,1}$.

 - If $A=\left(\begin{array}{rr}
a & b \\\\
c & d
\end{array}\right)$, then $|A| = ad-bc$.

 - In general, let $A=(a_{i,j})$.

**Definition (Minor):** The $i,j$ minor $A_{i,j}$ of $A$ is the matrix got from $A$ by deleting the $i$th row and $j$th column.

**Definition (Determinant):** $$|A| = \sum_{j=1}^n (-1)^{1+j}a_{1,j}|A_{1,j}|$$



︡5b879bd5-5105-4855-a0ca-d4c99f1c8de5︡{"html":"<h2>Determinants</h2>\n\n<p>Given a matrix $A=(a_{i,j})$, the determinant $|A|=\\text{det}(A)$ of $A$ is an incredibly useful number associated to $A$.\nFor example, $A$ is invertible if and only if $|A|\\neq 0$.</p>\n\n<ul>\n<li><p>If $A$ is $1\\times 1$, then $|A| = a_{1,1}$.</p></li>\n<li><p>If $A=\\left(\\begin{array}{rr}\na &amp; b \\\\\nc &amp; d\n\\end{array}\\right)$, then $|A| = ad-bc$.</p></li>\n<li><p>In general, let $A=(a_{i,j})$.</p></li>\n</ul>\n\n<p><strong>Definition (Minor):</strong> The $i,j$ minor $A_{i,j}$ of $A$ is the matrix got from $A$ by deleting the $i$th row and $j$th column.</p>\n\n<p><strong>Definition (Determinant):</strong> $$|A| = \\sum_{j=1}^n (-1)^{1+j}a_{1,j}|A_{1,j}|$$</p>\n"}︡
︠599db845-d237-4748-b4cf-33e1a96307ce︠
@interact
def f(n=selector([1..6], buttons=True), another=button("Another one...", classes="btn-info", label='')):
    A = random_matrix(ZZ,n)
    html("<h2>det $%s$ = $%s$</h2>"%(latex(A), A.det()))

︡8aef693a-876d-4035-b155-8873aefe7fcf︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["another",12,null]],[["",12,null]]],"id":"004a51a0-0d51-4ee7-87fb-f7491cbeb7ee","controls":[{"buttons":true,"control_type":"selector","ncols":null,"button_classes":null,"default":0,"lbls":["1","2","3","4","5","6"],"label":"n","nrows":null,"width":null,"var":"n"},{"control_type":"button","default":"Another one...","label":"","width":null,"classes":"btn-info","var":"another","icon":null}]}}︡
︠724fa060-a925-47ef-a0a2-257b0e59ce0eo︠
@interact
def f(n=(1..300)):
    A = random_matrix(ZZ,n)
    print "Computing det..."; sys.stdout.flush()
    t = cputime()
    d = A.det()
    print "Computed determinant of random %s x %s matrix in %s seconds"%(n,n,cputime(t))
    print d
︡04328bc1-bb3c-4bb2-87f2-c787253fe83a︡{"interact":{"style":"None","flicker":false,"layout":[[["n",12,null]],[["",12,null]]],"id":"a1ab9d20-377f-45b1-9b81-508cdb8746a3","controls":[{"control_type":"slider","default":0,"var":"n","width":null,"vals":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234","235","236","237","238","239","240","241","242","243","244","245","246","247","248","249","250","251","252","253","254","255","256","257","258","259","260","261","262","263","264","265","266","267","268","269","270","271","272","273","274","275","276","277","278","279","280","281","282","283","284","285","286","287","288","289","290","291","292","293","294","295","296","297","298","299","300"],"animate":true,"label":"n","display_value":true}]}}︡
︠505fbe19-2b1e-4802-9325-7b1d0206ee96i︠

%hide
%md

#### Better approaches to computing determinants: expand along a different row or column

Use a different row or column (this is called "Laplace Expansion" in the book):

**Fact:** For any $i$, we have $$|A| = \sum_{j=1}^n (-1)^{i+j}a_{i,j}|A_{i,j}|.$$ Also, for any $j$ we have
$$|A| = \sum_{i=1}^n (-1)^{i+j}a_{i,j}|A_{i,j}|.$$

Make up an example together with students that would be hard using the first row, but really easy using some other row or column.
︡44744180-0892-4e34-aa8a-f10bb535ea65︡{"html":"<h4>Better approaches to computing determinants: expand along a different row or column</h4>\n\n<p>Use a different row or column (this is called &#8220;Laplace Expansion&#8221; in the book):</p>\n\n<p><strong>Fact:</strong> For any $i$, we have $$|A| = \\sum_{j=1}^n (-1)^{i+j}a_{i,j}|A_{i,j}|.$$ Also, for any $j$ we have\n$$|A| = \\sum_{i=1}^n (-1)^{i+j}a_{i,j}|A_{i,j}|.$$</p>\n\n<p>Make up an example together with students that would be hard using the first row, but really easy using some other row or column.</p>\n"}︡
︠50f1d562-0d96-4084-be03-1e5be059768a︠
show(matrix(5,5, [(-1)^(i+j) for i in range(5) for j in range(5)]))
︡ecf8401a-a67b-4a0b-a6ed-6d0a5d10c0c6︡{"tex":{"tex":"\\left(\\begin{array}{rrrrr}\n1 & -1 & 1 & -1 & 1 \\\\\n-1 & 1 & -1 & 1 & -1 \\\\\n1 & -1 & 1 & -1 & 1 \\\\\n-1 & 1 & -1 & 1 & -1 \\\\\n1 & -1 & 1 & -1 & 1\n\\end{array}\\right)","display":true}}︡
︠d9c9f4a2-0843-4e08-9e42-21e48779d307i︠
%hide
%md
#### Better approaches to computing determinants: echelonization (seemingly not in the book!?)

This approach is not directly useful for finding $\text{charpoly}(A)$, but is massively better than anything above for finding $|A|$ for general larger matrices.

**Theorem:** *If $A$ and $B$ are $n\times n$ matrices, then $|AB| = |A|\cdot |B|$, i.e., the determinant of the product is the product of the determinants.

See the book for a proof: reduce  to the case $EA$, where $E$ is an elementary matrix and check each case.

Recall that when you compute an echelon form $C$ of a matrix $A$, you find elementary matrices $E_1, \ldots E_k$ such that
$$E_1 \cdots E_k \cdot A = C$$

**Observation:** It is *really easy* to compute $|E_i|$ for any elementary matrix!

 1. Swap two rows: $|E_i|=-1$
 2. Rescale a row by $a$: $|E_i|=a$.
 3. Add a multiple of one row to another: $|E_i| = 1$.


Now to **compute** $|A|$, just use that
$$ |E_1| \cdots |E_k| \cdot |A| = |C|.$$

Thus computing $|A|$ is no harder than putting $A$ in some echelon form.  For an upper triangular matrix, det is the product of the diagonal entries, so we only need echelon form, not reduced row echelon form.

Drawback: fractions will appear out of nowhere.   (Computers would do this by reducing modulo p first.)
︡dc6cda0b-19d3-40f6-8406-be302fb5e0ae︡{"html":"<h4>Better approaches to computing determinants: echelonization (seemingly not in the book!?)</h4>\n\n<p>This approach is not directly useful for finding $\\text{charpoly}(A)$, but is massively better than anything above for finding $|A|$ for general larger matrices.</p>\n\n<p><strong>Theorem:</strong> *If $A$ and $B$ are $n\\times n$ matrices, then $|AB| = |A|\\cdot |B|$, i.e., the determinant of the product is the product of the determinants.</p>\n\n<p>See the book for a proof: reduce  to the case $EA$, where $E$ is an elementary matrix and check each case.</p>\n\n<p>Recall that when you compute an echelon form $C$ of a matrix $A$, you find elementary matrices $E_1, \\ldots E_k$ such that\n$$E_1 \\cdots E_k \\cdot A = C$$</p>\n\n<p><strong>Observation:</strong> It is <em>really easy</em> to compute $|E_i|$ for any elementary matrix!</p>\n\n<ol>\n<li>Swap two rows: $|E_i|=-1$</li>\n<li>Rescale a row by $a$: $|E_i|=a$.</li>\n<li>Add a multiple of one row to another: $|E_i| = 1$.</li>\n</ol>\n\n<p>Now to <strong>compute</strong> $|A|$, just use that\n$$ |E_1| \\cdots |E_k| \\cdot |A| = |C|.$$</p>\n\n<p>Thus computing $|A|$ is no harder than putting $A$ in some echelon form.  For an upper triangular matrix, det is the product of the diagonal entries, so we only need echelon form, not reduced row echelon form.</p>\n\n<p>Drawback: fractions will appear out of nowhere.   (Computers would do this by reducing modulo p first.)</p>\n"}︡
︠11c9412a-1df3-4856-8495-232abf361aa0︠
set_random_seed(9)
a = random_matrix(ZZ,3).change_ring(QQ)
show(a)
a.det()
︡81271f2c-c108-41f4-a811-f337989975f7︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n2 & -1 & -5 \\\\\n2 & 2 & 2 \\\\\n699 & 1 & 2\n\\end{array}\\right)","display":true}}︡{"stdout":"5590\n"}︡
︠176e130a-a711-453e-adb8-e367667ef655︠
a[2] += -699/2 * a[0]
show(a)
︡032ce38c-04af-488c-bc82-ee53209c71fa︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n2 & -1 & -5 \\\\\n2 & 2 & 2 \\\\\n0 & \\frac{701}{2} & \\frac{3499}{2}\n\\end{array}\\right)","display":true}}︡
︠9778461b-8a81-473b-9c79-6b42c668b658︠
a[1] += -a[0]
show(a)
︡f1f50976-7052-4e87-afda-34abc6b333d3︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n2 & -1 & -5 \\\\\n0 & 3 & 7 \\\\\n0 & \\frac{701}{2} & \\frac{3499}{2}\n\\end{array}\\right)","display":true}}︡
︠6cc423d2-d8d4-4227-a2b2-dfcaab84f92f︠
a[2] += -(701/2)/3 * a[1]
show(a)
︡222ece6c-f585-4984-890a-b6fba50a6bde︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n2 & -1 & -5 \\\\\n0 & 3 & 7 \\\\\n0 & 0 & \\frac{2795}{3}\n\\end{array}\\right)","display":true}}︡
︠a5695662-4cab-4b2c-a29d-45b2fbb73611︠
# so... det(A) = 2*3*2795/3
2*3*2795/3
︡1f4492ba-02e5-400d-a2dc-b61cba2aeaf5︡{"stdout":"5590\n"}︡
︠1a3eb190-58b9-49db-a433-de2994e4dd3e︠


