< Back to Tutorials
Learn Bash Scripting by Building Five Programs

> Welcome to the Bash Scripting lessons!
> Content

1. Start the Terminal
2. touch questionnaire.sh
3. Add echo questionnaire
4. sh questionnaire.sh
5. bash questionnaire.sh
6. which bash
7. Add shebang
8. ./questionnaire
9. ls -l
10. chmod +x questionnaire.sh
11. ls -l
12. ./questionnaire
13. Add ls -l
14. ./questionnaire
15. Delete all - shebang
16. Add QUESTION1 variable
17. Add echo $QUESTION1
18. ./questionnaire
19. Add read NAME
20. Add echo Hello $NAME
21. ./questionnaire
22. Add QUESTION2 variable
23. Add echo $QUESTION2
24. Add read LOCATION
25. Add echo Hello $NAME from $LOCATION
26. ./questionnaire
27. Add echo "~~ Questionnaire ~~"
28. ./questionnaire
29. echo --help
30. man echo
31. Add echo -e \n~~ Questionnaire ~~\n
32. ./questionnaire
33. Change to echo -e "\n~~ Questionnaire ~~\n"
34. ./questionnaire
35. Add QUESTION3 variable
36. echo QUESTION3 variable
37. read WEBSITE
38. echo final sentence
39. ./questionnaire
40. Add line breaks around final sentence
41. ./questionnaire
42. touch countdown.sh
43. chmod +x countdown.sh
44. Add shebang
45. Add comment
46. Add echo $\*
47. ./countdown.sh
48. ./countdown.sh arg1 arg2 arg3
49. Change to echo $1
50. ./countdown.sh arg1 arg2 arg3
51. help
52. man if
53. help if
54. Add if arg1 print true
55. ./countdown arg1
56. ./countdown !arg1
57. Add else print false
58. ./countdown !arg1
59. Change if condition -lt 5
60. ./countdown 4
61. ./countdown 5
62. help
63. help [[expression]]
64. help test
65. Change if to [[$1 -le 5]]
66. ./countdown 5
67. [[4 -le 5]]
68. echo $?
69. [[4 -ge 5]]
70. echo $?
71. [[4 -ge 5]]; echo $?
72. [[10 -ne 5]]; echo $?
73. bad_command; echo $?
74. ls; echo $?
75. ls -y; echo $?
76. help test
77. [[-a countdown.sh]]; echo $?
78. [[-a bad_file.txt]]; echo $?
79. [[-x countdown.sh]]; echo $?
80. help [[expression]]
81. [[-x countdown.sh && 5 -le 4]]; echo $?
82. [[-x countdown.sh || 5 -le 4]]; echo $?
83. Change if to [[$1 -gt 0]]
84. Change if !# message
85. ./countdown 1
86. ./countdown 0
87. help
88. Add for loop for countdown
89. ./countdown 10
90. help
91. ls /
92. ls /bin
93. man sleep
94. sleep 3
95. Add sleep to for loop
96. ./countdown 3
97. Change to >=
98. ./countdown 3
99. Add echo -e "title"
100. ./countdown 1
101. Add Multiline comment
102. help while
103. Add I variable
104. Add while loop
105. Add (( I-- ))
106. Add sleep 1
107. ./countdown.sh 5
108. touch bingo.sh
109. chmod +x bingo.sh
110. Add shebang
111. Add comment
112. Add echo -e "title"
113. Add NUMBER=5 variable
114. echo $NUMBER
115. ./bingo.sh
116. printenv
117. echo $LANG
118. declare -p
119. echo $RANDOM
120. Change to NUMBER=$RANDOM
121. ./bingo.sh
122. Change to NUMBER=$RANDOM%75
123. ./bingo.sh
124. I=0
125. echo $I
126. (( I++ ))
127. echo $I
128. help let
129. (( I += 10 ))
130. echo $I
131. $(( I + 4 ))
132. echo $(( I + 4 ))
133. echo $I
134. J=$(( I - 6 ))
135. echo $J
136. echo $(( J \* 5 + 25 ))
137. echo $J
138. declare -p
139. declare -p J
140. declare -p RANDOM
141. echo $(( RANDOM % 75 ))
142. echo $(( RANDOM % 75 + 1 ))
143. Set NUMBER=$(( RANDOM % 75 + 1))
144. run ./bingo.sh
145. Add TEXT variable
146. help let
147. Add first if <= 15
148. Add elif -le 30
149. Add elif < 46
150. Add elif -lt 61
151. Add else
152. ./bingo.sh
153. touch fortune.sh
154. chmod +x fortune.sh
155. Add shebang
156. Add comment
157. Add echo "title"
158. ./fortune.sh
159. ARR=("a" "b" "c")
160. echo ${ARR[1]}
161. echo ${ARR[@]}
162. declare -p ARR
163. Add RESPONSES array
164. echo ${RESPONSES[5]}
165. ./fortune.sh
166. Add N=$(( RANDOM % 6 ))
167. Change to echo ${RESPONSES[$N]}
168. help
169. help function
170. Add GET_FORTUNE function
171. Add echo Ask a yes or no question
172. Add GET_FORTUNE function call
173. ./fortune.sh
174. Add read QUESTION
175. ./fortune.sh
176. help
177. help until
178. Add until loop
179. ./fortune.sh
180. help [[expression]]
181. [[hello == hello]]; echo $?
182. [[hello == world]]; echo $?
183. [[hello =~ el]]; echo $?
184. [["hello world" =~ "lo wor"]]; echo $?
185. [["hello world" =~ ^h]]; echo $?
186. [["hello world" =~ ^h.+d$]]; echo $?
187. VAR="hello world"
188. echo $VAR
189. [[$VAR == "hello world"]]; echo $?
190. [[ $VAR =~ ?$ ]; echo $?
191. [[ test? =~ ?$ ]; echo $?
192. Change until condition
193. ./fortune.sh
194. Add if to GET_FORTUNE
195. Add else to if [[! $1]]
196. Add argument to function call
197. Add Initial function call
198. ./fortune.sh
199. Add line break in front of response
200. ./fortune.sh
201. touch five.sh
202. chmod +x five.sh
203. Add shebang
204. Add comment
205. Add ./questionnaire.sh
206. ./five
207. Add the rest of the scripts
208. Clear
209. ./five
210. help
211. help type
212. type echo
213. type read
214. type if
215. type then
216. type bash
217. type psql
218. type ./five.sh
219. exit
