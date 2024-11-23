
# 수정
&quot;MOT.FIX&quot;

# 사격방위각
&quot;MTAZ&quot;? -&gt; A
A/160*9 -&gt; A

# 수평거리
&quot;MTRN&quot;? -&gt; B
B/10 -&gt; B
A+Bi -&gt; A

# 관목방위각
&quot;OTAZ&quot;? -&gt; B
B/160*9 -&gt; B

# 이전 수평수정량
&quot;DEF.PST.CORR&quot;? -&gt; C
B+Ci -&gt; B

# 이전 사거리수정량
&quot;RN.PST.CORR&quot;? -&gt; C

# 현재 수평수정량
&quot;DEF.PRE.CORR&quot;? -&gt; D
C+Di -&gt; C

# 현재 사거리수정량
&quot;RN.PRE.CORR&quot;? -&gt; D

# 최근 사격방위각
&quot;LAST.DEF&quot;? -&gt; E
D+Ei -&gt; D

# 최근 사거리
&quot;LAST.RN&quot;? -&gt; E

Rec(
    ImP(A),
    90-ReP(A)+ReP(B)
)
I+Ji -&gt; F
Pol(
    ReP(F)+ImP(B),
    ImP(F)+ReP(C)
)
I+Ji -&gt; G
Pol(
    ReP(F)+ImP(B)+ImP(C),
    ImP(F)+ReP(C)+ReP(D)
)
Rec(
    I,
    J+90-ImP(G)
)

# 설정 초기화
Prog &quot;ZCLNSETUP&quot;

Locate 1, 1, &quot;DEF+0.&quot;
Locate 8, 1, ImP(D)-I
Locate 1, 2, &quot;DEF+2.&quot;
Locate 8, 2, ImP(D)-I/ImP(A)*10
Locate 1, 3, &quot;DEF+3.&quot;
Locate 8, 3, ImP(D)-I/ImP(A)*100
Locate 1, 4, &quot;RN&quot;
Locate 8, 4, E+(J-ReP(G))
