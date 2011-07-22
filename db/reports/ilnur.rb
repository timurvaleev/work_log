user = User.where(:email => /ilnur/).first

create_plan(user,
'2011-07-15',
"Decide.IT
-- Apply review comments Participant Adds Choices - 1h
-- Asynchronous choices - 5h",
""
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
"ESP
-- GD-858 - 30m
-- GD-1373 - 1h

Decide.IT
-- Scaling voting widget - 2h
-- Comment box sizing - 1h",
"")

create_plan(user,
'2011-07-21',
"ESP
-- GD-1373 - 1h

Decide.IT
-- Address Book - Add Contacts - 3h
-- Address Book - Editing a Contact - 1h",
"")

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
