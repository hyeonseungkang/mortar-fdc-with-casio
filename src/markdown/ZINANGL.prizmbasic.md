
# 모든 조건식에 일치하지 않는 경우 변수 R이 변수 P 값을 가질 수 있게 함.
P -&gt; R

# P가 음수인 경우
If P &lt; 0
Then P+6400 -&gt; R
IfEnd

# P가 6400밀 초과인 경우
If P &gt; 6400
Then P-6400 -&gt; R
IfEnd
