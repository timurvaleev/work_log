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
