##Track that Band!
by Heather Anderson

A simple web app that lets you track your favorite bands and where they have played
as well as add and edit venues.

##Setup

In your terminal inside this project folder:

`gem install bundle`

`bundle`

`rake db:create`

`rake db:schema:load`

`ruby app.rb`

Go to http://localhost:4567 in your browser

Enjoy!

##Tests
Testing the ruby methods can be done via rspec.

##Known Bugs
As of last commit: From band edit page, venues will overwrite each other when printing
on page. No ability to choose which venues a specific band has played.

##Motivation

To practice creating a many-to-many database that interacts with the front-end using Rake, ActiveRecord, and shoulda-matchers.

##License

MIT License. Copyright 2015. Heather Anderson

Note to future self: Look! You made a thing! Which is significantly better than what
you were able to do yesterday. Seriously. Yesterday you spent 8 hours trying to figure
out what a route was. Today you created them vaguely successfully. It's okay. It's Friday. You'll get better next week. Now save this, commit it, and fucking submit it
before 5:00. Remember when you forgot your password last Friday at 4:58? DON'T DO THAT
AGAIN. And don't fix grammar and spelling errors in this README just go home and watch the Annie Awards; they will surely be a bigger train wreck than you could ever aspire to.
