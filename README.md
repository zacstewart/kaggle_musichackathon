# Music Hackathon
This is my attempt at the Kaggle EMI Music Hackathon in R.

## Data Cleanup
I wrote some shell script to clean up the data files

### Users: _clean_users.sh_

**WORKING**
0 "Employed 30+ hours a week"
1 "Employed 8-29 hours per week"
2 "Employed part-time less than 8 hours per week"
3 "Full-time housewife / househusband"
4 "Full-time student
5 "In unpaid employment (e.g. voluntary work)"
6 "Other"
7 "Part-time student"
8 "Prefer not to state"
9 "Retired from full-time employment (30+ hours per week)"
10 "Retired from self-employment"
11 "Self-employed"
12 "Temporarily unemployed"

**MUSIC**
0 "Music has no particular interest for me"
1 "Music is no longer as important as it used to be to me"
2 "I like music but it does not feature heavily in my life"
3 "Music is important to me but not necessarily more important than other hobbies or interests"
3 "Music is important to me but not necessarily more important"
4 "Music means a lot to me and is a passion of mine"

**LIST_{OWN,BACK}**
Cleans columns up to only have integer value. Drops the rows with variations
of "More than..."
