user = User.where(:email => /albert/).first

create_plan(user,
'2011-07-15',
"",
""
)

create_plan(user,
'2011-07-18',
"",
"")

create_plan(user,
'2011-07-19',
"-- Retrospective 1.5h
ESP:
-- 1377 pledged.json appears to return incorrect 'points_pledged' after a Round Filter's Point System Release - 6h
Decide.IT:
-- Review 'Close vote should work with AJAX'- .5h

At home:
-- 1377 - 4h",
"")

create_plan(user,
'2011-07-20',
"ESP
-- 1377 pledged.json appears to return incorrect 'points_pledged' after a Round Filter's Point System Release - 3h
-- 1391 delayed_jobs crash when starting - .5h

CITETIS
-- Setup cinetis - 1h
-- decide on api format - 1h
-- list of urls and brief format - 1h",
"")

create_plan(user,
'2011-07-21',
"CINETIS
-- prepare a list with resource urls with brief description - 2.5h

ESP
-- 1392 Update report rake tasks - 1h

DECITE.IT
-- editing decide.its - 2h",
"")

create_plan(user,
'2011-07-22',
"DECITE.IT
-- editing decide.its - 2h",
"")
