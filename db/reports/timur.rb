user = User.where(:email => /timur/).first

create_plan(user,
'2011-07-15',
"-- #1327 Amend/Review/Merge ~2h
-- Assist Ruslan to setup VM ~1h"
)

create_plan(user,
'2011-07-18',
"ESP:
  -- review #1293 ~15min
  -- #1265 ~ 3h
Cinetis:
  -- review Drag and Drop ~45min")

create_plan(user,
'2011-07-19',
"-- вникал в decide.it ~ 1h
-- #1384 ~ 1h
-- #1327 ~ 40min
-- retrospective ~ 1.5h")

create_plan(user,
'2011-07-20',
"-- #1238 ~ 1.5h
-- #1327 ~ 0.5h
-- #1384 ~ 2h")

create_plan(user,
'2011-07-21',
"-- #1384 ~ 2h
-- Assist Dylan to test #1327, #1384, #1238 ~ 2h
-- Analyzing #724 ~ 1h")
