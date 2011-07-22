user = User.where(:email => /anton/).first

create_plan(user,
'2011-07-15',
"- #1106 - 0.25h
- mouseover bug - 0.25h
- review add choice - 0.5h
- async updating - 0.5h
- async comments - 1.5h
- assistance - 1.0h",
""
)

create_plan(user,
'2011-07-18',
"- split #1179, analyze mongoid 2.0 - 2h
- #1360 - 1h
- discuss API - 0.25h
- assist with #1317 - 0.75h
- #1318 fix bug with uuids being rewritten - 1.5h",
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
"0.25 - review #1233
1.5 - assist with #1377
0.5 - review 'scaling voting widget'
0.5 - merge #1236
0.25 - review 'comment box resizing'
0.25 - review #1356
0.5 - review #1384
0.5 - fix bugs with 'read more' and link URLs",
"")

create_plan(user,
'2011-07-21',
"0.5 - review #1384
0.25 - no votes yet disappears after first async update
0.5 - review #1265
0.25 - change deal % in MSS
0.25 - find out slowest specs
0.25 - review 'scaling voting widget'
0.25 - assist Perpetua
1.5 - prepare & estimate stories, assistance",
"")

create_plan(user,
'2011-07-22',
"",
"")
