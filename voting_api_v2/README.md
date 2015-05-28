# Voting API

## Description

An API that uses Rails and allows users to vote for candidates for public office.

## Getting Started

To run this app you must have rails installed.  To start a server you must first migrate tables to a database by typing`rake db:migrate` and then use the command `rails server`.  To create a voter go to `/voters/create` and set a `name` parameter equal to your name.  You will be given a key which you will need in order to access `voters` and `votes` methods.

## Features
`/voters` has three actions:
  * `show` which requires a voter id and your key
  * `create` which requires a name and takes an optional party parameter.
  * `update` which requires and id, an attribute to be changed and your key.

`/votes` has two actions:
  * `index` returns all votes
  * `create` requires `candidate_id`, `voter_id` and your key.

`/candidates` has two actions:
  * `index` returns all candidates
  * `show` which requires a candidate id.
