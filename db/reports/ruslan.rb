user = User.where(:email => /ruslan/).first

create_plan(user,
'2011-07-15',
"Cinetis: Finish drag&drop - 3h
Cinetis: Tune up views - 1h
ESP: Setup virtual machine 1h
1356 - 1h",
""
)

create_plan(user,
'2011-07-18',
"Esp: 1356 - 4.5h
Cinetis: Discuss rest API 15min
Authenticate by token 1h",
"")

create_plan(user,
'2011-07-19',
"Retrospective 1.5h
Create DVD 2.5h
1356 1.5h
merge drag-drop - 0.5h",
"")

create_plan(user,
'2011-07-20',
"finished 1356 - 2.5h
authenticate by token 1.5h
setup decide it - 15m
get familiar with decide it - 1.5h",
"")

create_plan(user,
'2011-07-21',
"Authenticate by token 2h
Assist talentica 2h
Undecided decisions 0.5h",
"")

create_plan(user,
'2011-07-22',
"",
"")
