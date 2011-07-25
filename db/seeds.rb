# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.destroy_all

emails = %w[albert.gazizov@flatsoft.com anton.rogov@flatsoft.com dilyara.serazutdinova@flatsoft.com ilnur.yakupov@flatsoft.com leonid.dinershtein@flatsoft.com  timur.valeev@flatsoft.com dmitry.trager@flatsoft.com ruslan.gatiyatov@flatsoft.com ]

emails.each do |email|
  User.create!(
    :email => email,
    :password => '123456',
    :password_confirmation => '123456'
  )
end

Plan.destroy_all

def create_plan(user, date, actual_plan = '', report = '', extra_hours = '')
  user.plans.create(
    :date_for => date,
    :actual_log => actual_plan,
    :report_log => report,
    :extra_hours => extra_hours
  )
end

user = User.where(:email => /albert/).first

create_plan(user,
'2011-07-15',
"",
""
)

create_plan(user,
'2011-07-18',
"",
"- #1318 fix bug with uuids being rewritten - 4h
- 1236 fix specs -2h
- discussions, assistance - 1h")

create_plan(user,
'2011-07-19',
"-- Retrospective 1.5h
ESP:
-- 1377 pledged.json appears to return incorrect 'points_pledged' after a Round Filter's Point System Release - 6h
Decide.IT:
-- Review 'Close vote should work with AJAX'- .5h

At home:
-- 1377 - 4h",
"-- Retrospective 2h
-- 1377 pledged.json appears to return incorrect 'points_pledged' after a Round Filter's Point System Release - 6h",
"-- 1377 - 4h")

create_plan(user,
'2011-07-20',
"ESP
-- 1377 pledged.json appears to return incorrect 'points_pledged' after a Round Filter's Point System Release - 3h
-- 1391 delayed_jobs crash when starting - .5h

CITETIS
-- Setup cinetis - 1h
-- decide on api format - 1h
-- list of urls and brief format - 1h",
"-- 1377 pledged.json appears to return incorrect 'points_pledged' after a Round Filter's Point System Release -4.5h
-- 1391 delayed_jobs crash when starting - 1.5h
-- discussions, communication - 1h")

create_plan(user,
'2011-07-21',
"CINETIS
-- prepare a list with resource urls with brief description - 2.5h

ESP
-- 1392 Update report rake tasks - 1h

DECITE.IT
-- editing decide.its - 2h",
"-- 1392 Update report rake tasks - 2h
-- fix specs - 3h
-- 1398 - 2h")

create_plan(user,
'2011-07-22',
"DECITE.IT
-- editing decide.its - 2h",
"")

user = User.where(:email => /anton/).first

create_plan(user,
'2011-07-15',
"- #1106 - 0.25h
- mouseover bug - 0.25h
- review add choice - 0.5h
- async updating - 0.5h
- async comments - 1.5h
- assistance - 1.0h",
"- #1106 - 1h
- assistance, discussions with team - 6.0h"
)

create_plan(user,
'2011-07-18',
"- split #1179, analyze mongoid 2.0 - 2h
- #1360 - 1h
- discuss API - 0.25h
- assist with #1317 - 0.75h
- #1318 fix bug with uuids being rewritten - 1.5h",
"- split #1179, analyze mongoid 2.0 - 3h
- assist with #1360 - 1h
- assist with #1317 - 2h
- assist with #1318 fix bug with uuids being rewritten - 2h")

create_plan(user,
'2011-07-19',
"Retrospective 1.5h
Create DVD 2.5h
1356 1.5h
merge drag-drop - 0.5h",
"- #1106 - 0.25h
- assist with #1377 -4h
- retrospective - 2h
- #1179 - 1.5h")

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
"2h - assist with #1377
1h - review #1356
1h - review #1384
2.5h - assistance, discussions
1h- #1179, switch to mongoid 2.0")

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
"- review #1384 - 1h
- assist Perpetua - 0.5h
- assistance, discussions - 4h
- analyze specs optimization - 0.5h
-  #1179 & mongoloid update - 1h
")

create_plan(user,
'2011-07-22',
"* #1179 & mongoloid update",
"")

user = User.where(:email => /dmitry/).first

create_plan(user,
'2011-07-15',
"Decide.it
* setup - 0.25h
ESP
* fix specs - 2h",
""
)

create_plan(user,
'2011-07-18',
"ESP:
* 1236 - 2h
Decide.it:
* 15624225 'recent decisions on the top of home page' - 0.5h
* 15831623 '+ Add Choice Bar needs cancel option' - 0.5h",
"")

create_plan(user,
'2011-07-19',
"* Retrospective - 1.5h
----
Decide.it ~ Vote.it
* cancel button for add-choice-form - 1h",
"")

create_plan(user,
'2011-07-20',
"ESP:
* fix specs - 0.5h
----
Vote.it:
* address book add contact - 1h
----
Cinetis:
* setup - 2h",
"")

create_plan(user,
'2011-07-21',
"ESP:
* fix specs - 3.5h
----
Cinetis:
* fix specs - 1.5h",
"")

create_plan(user,
'2011-07-22',
"",
"")

user = User.where(:email => /ilnur/).first

create_plan(user,
'2011-07-15',
"Decide.IT
-- Apply review comments Participant Adds Choices - 1h
-- Asynchronous choices - 5h",
"-- 452 - 1.5h
-- discussions - 3h
-- 1339 - reporting tasks - 3h"
)

create_plan(user,
'2011-07-18',
"ESP
-- GD 452 - 1.5h
-- merge 452 - .5h
-- merge 727 & 1302 - .5h
-- 1373 - 1h

Decide.IT
-- Make close voting to work via AJAX - 1h
-- Vote & Comment Ownership - .5h
-- Change of language on multiple winners on consesnsus vote - 1h
-- Home page vote status display - 1h",
"-- GD 452 - 2h
-- merge 452 - 1h
-- merge 727, 1302 - 1h
-- 1373 - 2h
-- discussions, assistance - 1h")

create_plan(user,
'2011-07-19',
"Retrospective 1.5h
Create DVD 2.5h
1356 1.5h
merge drag-drop - 0.5h",
"-- 1233 Referral URL's logged in publisher_events is not correct - 1h
-- Retrospective - 2h
-- 1373 - 1.5h
-- assistance/discussions - 2h")

create_plan(user,
'2011-07-20',
"ESP
-- GD-858 - 30m
-- GD-1373 - 1h

Decide.IT
-- Scaling voting widget - 2h
-- Comment box sizing - 1h",
"-- GD-858 - 1.5h
-- GD-1373 - 3h
-- 724 search format - 1h
-- assistance, discussions 2h")

create_plan(user,
'2011-07-21',
"ESP
-- GD-1373 - 1h

Decide.IT
-- Address Book - Add Contacts - 3h
-- Address Book - Editing a Contact - 1h",
"-- GD-1373 - 2h
-- fix specs - 2h
-- 724 searching format 2h
-- assistance, discussions - 1h")

create_plan(user,
'2011-07-22',
"ESP
-- New task

Decide.IT
-- Address Book - Deleting a Contact
-- Address Book - Display
-- Merge Email templates
-- Home Page Vote Status Display
-- Address book integration",
"")

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

puts 'Done'
