
# 방안좌표법
&quot;MOT.GRID&quot;

# 목표 좌표
&quot;XT&quot;? -&gt; A
&quot;YT&quot;? -&gt; B
A+Bi -&gt; A
&quot;HT&quot;? -&gt; B

# 포진 좌표
&quot;XMP&quot;? -&gt; C
&quot;YMP&quot;? -&gt; D
C+Di -&gt; C
&quot;HMP&quot;? -&gt; D

# 보조사거리
(B-D)/2 -&gt; B

# 계산판 시뮬레이션
Pol(ReP(A)-ReP(C), ImP(A)-ImP(C))

# 설정 초기화
Prog &quot;ZCLNSETUP&quot;

# 수평거리
Locate 1, 1, &quot;MTRN&quot;
I*10 -&gt; A
Mat A + [[A, 0][0, 0]] -&gt; Mat A
Locate 7, 1, A

# 사거리
Locate 1, 2, &quot;RN&quot;
I*10+B -&gt; A
Mat A + [[0, A][0, 0]] -&gt; Mat A
Locate 7, 2, A

# 사격방위각
Locate 1, 3, &quot;MTAZ&quot;
(90-J)*160/9 -&gt; P
Prog &quot;ZINANGL&quot;
Mat A + [[0, 0][R, 0]] -&gt; Mat A
Locate 7, 3, R

# 후퇴사격방위각
P+3200 -&gt; P
Prog &quot;ZINANGL&quot;
Locate 1, 4, &quot;MTAZ1&quot;
Mat A + [[0, 0][0, R]] -&gt; Mat A
Locate 7, 4, R
