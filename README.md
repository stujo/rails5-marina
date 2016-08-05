# Marina!

Boats and stuff

##Run Tests
```
$ bundle exec rspec
```


##Setup 
Copy ``example.env`` to ``.env`` and fill in the blanks

## Important Heroku Buildpack Configuration
heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git

And ``.buildpacks`` contains:

```
https://github.com/heroku/heroku-buildpack-nodejs
https://github.com/heroku/heroku-buildpack-ruby
https://github.com/gunpowderlabs/buildpack-ruby-db-migrate.git
```

This supports the node, ruby and database configurations needed by the app


### API Keys Required
* [http://openweathermap.org/current](http://openweathermap.org/current)
