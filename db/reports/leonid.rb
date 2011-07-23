user = User.where(:email => /leonid/).first

create_plan(user,
'2011-07-15',
"",
""
)

create_plan(user,
'2011-07-18',
"",
"1360 - reporting task 2h
1236 - specs 3h
1281, 1282 - 2h")

create_plan(user,
'2011-07-19',
"",
"- reports (#1308, #1339) - 3h
- retrospective - 2h
- 1236 fix specs - 3h")

create_plan(user,
'2011-07-20',
"",
"-  review #1233 - 1h
- complete and merge #1236 - 2h
- 1308, 1339 - reporting tasks - 2h
- discussions, assistance - 3h")

create_plan(user,
'2011-07-21',
"",
"-- configure VM 3h
-- review 1373 1h
-- fix specs 3h")

create_plan(user,
'2011-07-22',
"-- 724 searching format
-- new task",
"")
