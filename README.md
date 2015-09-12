Pix - an Instagram clone
===================
[![Code Climate](https://codeclimate.com/github/katsuraku/instagram-challenge/badges/gpa.svg)](https://codeclimate.com/github/katsuraku/instagram-challenge)

#### Summary of features
Pix clones some of the features of Instagram. A user can sign up, upload and delete their pictures, add and delete comments on pictures and like pictures. Pictures are displayed with their comments and the number of likes they have had.

#### Technologies and tools used
* Production: Ruby, Rails, jQuery, PSQL, Active Record, FactoryGirl, Shoulda, Devise, CSS with Bootstrap
* Testing: RSpec, Capybara, Poltergeist, Factory Girl, Shoulda, Warden, Databse Cleaner

#### User stories

```
As a user, 
So that I can see pictures posted by me and others, 
I want to see all the pictures that have been uploaded on the homepage.

As a user, 
So that I can add pictures to the site, 
I want to be able to upload my own pictures.

As a user, 
So that I can comment on pictures, 
I want to be able to leave comments on any pictures on the homepage. 

As a user, 
So that I can see comments on pictures, 
I want to be able to view all users' comments on the homepage.

As a user, 
So that I and others know which pictures I uploaded, 
I only want to be able to upload pictures when logged in.

As a user, 
So that I and others know which pictures I uploaded, 
I want my username to appear with the pictures I upload.

As a user, 
So that I and others know what I commented on, 
I only want to be able to leave comments when logged in.

As a user, 
So that I and others know which pictures I uploaded, 
I want my username to appear with the comments I post.

As a user, 
So that I can change my mind, 
I want to be able to delete my own pictures and comments.

As a user, 
So that I control my own input, 
I do not want other users to be able to delete my pictures or comments.

As a user, 
So that I can like pictures, 
I want to be able to hit like on a picture.

As a user, 
So that I can see whether pictures are popular, 
I want to see how many times each one has been liked.
```

#### How to run 
* Clone or fork the repo to your local machine
* Install ruby and ruby-on-rails, then run `bundle install` on the command line to install all required gems locally
* Run `bin/rake db:create` to create database
* Run `rails server` on the command line to view it on your local host at http://localhost:3000/
* Tests can be run by running `rspec` on the command line
* Also available on heroku at https://stark-refuge-1002.herokuapp.com

#### Work in progress

* Styling to be developed
* To be connected to Amazon Web Services for scaling
* Add a tags feature so that pictures can be filtered/searched by tag
* Number of likes to be updated without page refresh
