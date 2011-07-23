user = User.where(:email => /ruslan/).first

create_plan(user,
'2011-07-15',
"Cinetis: Finish drag&drop - 3h
Cinetis: Tune up views - 1h
ESP: Setup virtual machine 1h
1356 - 1h",
"-- Setup virtual machine 3h
-- 1356 - 2h
-- 1238 - 2h"
)

create_plan(user,
'2011-07-18',
"Esp: 1356 - 4.5h
Cinetis: Discuss rest API 15min
Authenticate by token 1h",
"- 1356 - 6h
- discuss, assist - 1.5h")

create_plan(user,
'2011-07-19',
"Retrospective 1.5h
Create DVD 2.5h
1356 1.5h
merge drag-drop - 0.5h",
"- Retrospective 2h
- 1356 Portugal Idea Credit Allocation Mechanic not working correctly. 4h
- assistance, discussions - 2h")

create_plan(user,
'2011-07-20',
"finished 1356 - 2.5h
authenticate by token 1.5h
setup decide it - 15m
get familiar with decide it - 1.5h",
"- finished 1356 - 4h
- discussions, communication - 3h")

create_plan(user,
'2011-07-21',
"Authenticate by token 2h
Assist talentica 2h
Undecided decisions 0.5h",
"- review #1265 - 1h
- Assist Talentica - 2h
- review Talentica's code - 1h")

create_plan(user,
'2011-07-22',
"",
"")
