#!/usr/bin/env r
library('gbm')

users <- read.csv('data/users.clean.csv')
# Clean up users headers
names(users) <- c('User', 'Gender', 'Age', 'Working', 'Region', 'Music',
                  'ListOwn', 'ListBack', names(users)[9:length(names(users))])
# Correct datatypes
users <- transform(users,
                   Working = as.factor(users$Working),
                   Region = as.factor(users$Region),
                   Music = as.factor(users$Music),
                   ListOwn = as.numeric(users$ListOwn),
                   ListBack = as.numeric(users$ListBack))

# Artist,Track,User,Rating,Time
train <- read.csv('data/train.csv')

# Artist,Track,User,Time
test  <- read.csv('data/test.csv')

# Join users to their examples
train <- merge(train, users, by='User')
test  <- merge(test, users, by='User', all.x=TRUE)

# Split dataset
# construct - useed to build model
# cv - for cross validation
n <- nrow(train)
indices <- sort(sample(1:n, round(0.8 * n)))
construct <- train[indices,]
cv <- train[-indices,]

train.form <- as.formula(paste('Rating ~',
                               paste(names(construct)[5:ncol(construct)], collapse=' + ')))

print('Training...')
model <- gbm(train.form, n.trees=5000, data=construct,
             distribution='gaussian', interaction.depth=6,
             train.fraction=.8, cv.folds=5)
