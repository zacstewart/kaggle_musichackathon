# Music Hackathon
This is my attempt at the Kaggle EMI Music Hackathon in R.

## Data Cleanup
I wrote some shell script to clean up the data files. Some values were
repeated with slight formatting vartiations. I replaced them all with
integers to cut down on filesize and normalize the values.

### Users: _clean_users_

#### WORKING
* 0 "Employed 30+ hours a week"
* 1 "Employed 8-29 hours per week"
* 2 "Employed part-time less than 8 hours per week"
* 3 "Full-time housewife / househusband"
* 4 "Full-time student
* 5 "In unpaid employment (e.g. voluntary work)"
* 6 "Other"
* 7 "Part-time student"
* 8 "Prefer not to state"
* 9 "Retired from full-time employment (30+ hours per week)"
* 10 "Retired from self-employment"
* 11 "Self-employed"
* 12 "Temporarily unemployed"

#### MUSIC
* 0 "Music has no particular interest for me"
* 1 "Music is no longer as important as it used to be to me"
* 2 "I like music but it does not feature heavily in my life"
* 3 "Music is important to me but not necessarily more important than other hobbies or interests"
* 3 "Music is important to me but not necessarily more important"
* 4 "Music means a lot to me and is a passion of mine"

#### LIST_{OWN,BACK}
Cleans columns up to only have integer value representing hours. Drops the
rows with variations of "More than..."

### Words: _clean_words_

#### HEARD_OF
* 0 Never heard of
* 1 Ever heard of
* 3 Ever heard music by
* 4 Heard of and listened to music EVER
* 5 Heard of and listened to music RECENTLY
* 2 Heard of
* 6 Listened to recently

#### OWN_ARTIST_MUSIC
* 0 [dD]on.t know
* 1 Own none of their music
* 2 Own a little of their music
* 3 Own a lot of their music
* 4 Own all or most of their music
