# Voting API

## Description

An API that uses Rails and allows users to vote for candidates for public office.

## Getting Started

To run this app you must have rails installed.  To start a server you must first migrate tables to a database by typing`rake db:migrate` and then use the command `rails server`.

## Features
`/voters` has three actions:
  * `show` which requires a voter id.
  * `create` which requires a name and takes an optional party parameter.
  * `update` which requires and id and attribute to be changed.

`/votes` has two actions:
  * `index` returns all votes
  * `create` requires `candidate_id` and `voter_id` parameters.

`/candidates` has two actions:
  * `index` returns all candidates
  * `show` which requires a candidate id.
