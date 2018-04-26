# Run Tracker API

### Technologies used:
- Ruby
- Rails
- Heroku
- Terminal

---

### App Description:
This API sets up the back end for the Run Tracker app. The API contains two tables, the user table and the run table, which has a column that references users. Users must be signed in to perform all actions on runs and cannot access another users run data in any way. The created_at and run time columns have their data adjusted to a more readable format before being sent out to the user.

---

### Planning:
I sketched out a basic ERD to visualize the database structure I was going to create. This combined with writing user stories gave me a good starting point and allowed me to start building quickly.

---
### Development Process:
For the back end, I began the project by setting up the templates and seeing what was in each. The api template came with more or less everything needed for users so I was able to quickly get that working then more onto the relational table, runs. I used the protected controller for that as to keep all users info only viewable by them. This took some time to figure out how it varied from open read but using the examples controller as a reference, I was able to get it working. As my runs table was dealing with time as a column, I had to do some research on how to best display that to the user. I was able to find some answer on StackOverflow and was able to make changes to the display of the time by adjusting the time attribute in the runs model. I later went back and decided I would add the created date to the serializer and had to write a method within the serializer to best display that date information.

---
### Unsolved Problems/Future Plans:
In the future, I plan to have the API serialize out the average pace of a logged run. This could be acheive by writing a method to do the calculation from distance and time and then using the serializer to surface the infomation. I also may want users to be able to see how their average pace compares to others of their age group.

---
### Links:
- ERD: https://i.imgur.com/lfmvK3n.jpg
- Run Tracker Client: https://github.com/rbarnada/full-stack-project-client
- Deployed API: https://run-tracker-api.herokuapp.com/
- Deployed Client: https://rbarnada.github.io/full-stack-project-client/
