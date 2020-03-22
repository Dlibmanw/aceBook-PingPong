### [Makers Academy](http://www.makersacademy.com) - Week 8 group project

[![Build Status](https://travis-ci.com/Peter2-71828/aceBook-PingPong.svg?branch=master)](https://travis-ci.com/Peter2-71828/aceBook-PingPong)
[![Maintainability](https://api.codeclimate.com/v1/badges/4f0cfbe1fc185ef34e2c/maintainability)](https://codeclimate.com/github/Peter2-71828/aceBook-PingPong/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/4f0cfbe1fc185ef34e2c/test_coverage)](https://codeclimate.com/github/Peter2-71828/aceBook-PingPong/test_coverage)

Contributors: [Josh Blumberg](https://github.com/jlblumberg) | [Peter Dean](https://github.com/Peter2-71828) | [Joe Ellingworth](https://github.com/blu3skies) | [Dafna Libman](https://github.com/Dlibmanw) | [Liz Daly](https://github.com/lookupdaily) | [Jack Overton](https://github.com/Ovy95)
__________________________________________________________________________________________________________________

[Outline](#Outline) | [Specifications](#Specifications) | [User Stories](#User_Stories) | [Installation Instructions](#Installation_Instructions) | [Tech stack](#Tech_stack) | [Examples](#Examples) | [Future work](#Future_work)

## <a name="Outline">Outline</a>

Work in a team of six to build a clone of Facebook.

## <a name="Specifications">Specifications</a>

The project specifications can be found [here](https://github.com/makersacademy/course/tree/master/engineering_projects/rails).

## <a name="User_Stories">User Stories</a>

User stories, which we designed from the specifications, can be found [here](https://docs.google.com/document/d/1GQxL08X9OiaRQS4eP1DW8j18zAJITgOzZBSF9FzqYNU/edit?usp=sharing).

## <a name="Installation_Instructions">Installation Instructions</a>

### Prerequisite setup:
- Clone this repo to your local machine and cd into it
- Run `gem install bundle` (if you don't have bundle already)
- Run `bundle` to install the projects dependencies

### Database setup:

To set up the databases, run the following migration commands:

```
bin/rails db:create
bin/rails db:migrate
```

### Running the site

Development:
- Run the server with command `bin/rails server`
- Visit `localhost:3000` to use the site

Production:
- Visit https://acebook-pingpong.herokuapp.com/

### Testing
- Tests can be run using Rspec. Run the command `rspec`.

## <a name="Tech_stack">Tech stack</a>

Front-end:
- HTML & CSS

Back-end:
- Ruby
- Ruby On Rails
- PostgreSQL

Testing:
- RSpec
- SimpleCov
- Code Climate
- Travis CI

## <a name="Examples">Examples</a>

## <a name="Future_work">Future work</a>

On a revisit of the project, we would like to add functionality to comment on and like/unlike people's posts.
