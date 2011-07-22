user = User.where(:email => /timur/).first

create_plan(user,
'2011-07-15',
"-- #1327 Amend/Review/Merge ~2h
-- Assist Ruslan to setup VM ~1h",
"-- #1327 Amend/Review/Merge = 7h
-- Assist Ruslan setting up VM= 1h"
)

create_plan(user,
'2011-07-18',
"ESP:
  -- review #1293 ~15min
  -- #1265 ~ 3h
Cinetis:
  -- review Drag and Drop ~45min",
"-- review #1293 = 1h
 -- #1265 = 6h")

create_plan(user,
'2011-07-19',
"-- вникал в decide.it ~ 1h
-- #1384 ~ 1h
-- #1327 ~ 40min
-- retrospective ~ 1.5h",
"-- #1384 = 3h
-- #1327 Write a migration to add 1 additional asset to the Pepsi_Badges Asset Group Template (and related Asset Groups) = 2h
-- retrospective = 2h")

create_plan(user,
'2011-07-20',
"-- #1238 ~ 1.5h
-- #1327 ~ 0.5h
-- #1384 ~ 2h",
"-- #1238Amend Point System functionality with assets = 3h
-- #1327 Write a migration to add 1 additional asset to the Pepsi_Badges Asset Group Template (and related Asset Groups) = 1h
-- #1384 Live database issue for \"Friends_Invited\" Asset Group = 3h")

create_plan(user,
'2011-07-21',
"-- #1384 ~ 2h
-- Assist Dylan to test #1327, #1384, #1238 ~ 2h
-- Analyzing #724 ~ 1h",
"- #1265 = 1h
-- #1384 = 4h
-- Assist Dylan to test #1327, #1384, #1238 = 2h")

create_plan(user,
'2011-07-22',
"-- Assist Dylan
-- Apply review comments #1265",
"")
