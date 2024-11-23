
# 기지점전이법
&quot;MOT.SHIFT&quot;

# (확인점 X) - (포진지 X)
&quot;XRP-XMP&quot;? -&gt; A
# (확인점 Y) - (포진지 Y)
&quot;YRP-YMP&quot;? -&gt; B
A+Bi -&gt; A

# (확인점 고도) - (포진지 고도) + (표고차)
&quot;HRP-HMP+V.SFT&quot;? -&gt; B
# 보조사거리
B/2 -&gt; B

# 수평전이량
&quot;LAT.SFT&quot;? -&gt; C
C/10 -&gt; C

# 사거리전이량
&quot;RN.SFT&quot;? -&gt; D
D/10 -&gt; D

# 관목방위각
&quot;OTAZ&quot;? -&gt; E
E/160*9 -&gt; E

# 계산판 시뮬레이션
Pol(ReP(A), ImP(A))
Rec(I, J+E)
Pol(I+C, J+D)
Rec(I, J-E)
Pol(I, J)

# 설정 초기화
Cls
Prog &quot;ZCLNSETUP&quot;

# 수평거리
Locate 1, 1, &quot;MTRN&quot;
Locate 7, 1, I*10

# 사거리
Locate 1, 2, &quot;RN&quot;
Locate 7, 2, I*10+B

# 사격방위각
Locate 1, 3, &quot;MTAZ&quot;
(90-J)*160/9 -&gt; P
Prog &quot;ZINANGL&quot;
Locate 7, 3, R

# 후퇴사격방위각
P+3200 -&gt; P
Prog &quot;ZINANGL&quot;
Locate 1, 4, &quot;MTAZ1&quot;
Locate 7, 4, R
