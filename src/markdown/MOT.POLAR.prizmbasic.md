
# 극표정법
&quot;MOT.POLAR&quot;

# (FO X) - (포진지 X)
&quot;XF0-XMP&quot;? -&gt; A

# (FO Y) - (포진지 Y)
&quot;YF0-YMP&quot;? -&gt; B
A+Bi -&gt; A

# (표적 고도) - (포진지 고도) + (표고차)
&quot;HF0-HMP+V.SFT&quot;? -&gt; B
# 보조사거리
B/2 -&gt; B

# 관목거리
&quot;OTDS&quot; -&gt; D
D/10 -&gt; D

# 관목방위각
&quot;OTAZ&quot;? -&gt; E
E/160*9 -&gt; E

# 계산판 시뮬레이션
Pol(ReP(A), ImP(A))
Rec(I, J+E)
Pol(I, J+D)

Cls

# 수평거리
Locate 1, 1, &quot;MTRN&quot;
Locate 7, 1, I*10

# 사거리
Locate 1, 2, &quot;RN&quot;
Locate 7, 2, I*10+B

# 사격방위각
Locate 1, 3, &quot;MTAZ&quot;
(90-(J-E))*160/9 -&gt; P
Prog &quot;ZINANGL&quot;
Locate 7, 3, R

# 후퇴사격방위각
P+3200 -&gt; P
Prog &quot;ZINANGL&quot;
Locate 1, 4, &quot;MTAZ1&quot;
Locate 7, 4, R
