# Anytime
If you test on a date/time sensitive applications, modifying system date/time or doing something temporary on background is not flexible or convenient enough.
Anytime is a simple date setter for quality assurance of Ruby on Rails applications.

## <a name="installation">Installation</a>
    gem install anytime
Or install it with bundler:

    gem 'anytime', '~>0.1.1'

## <a name="getStarted">Get Started</a>
Anytime needs its own routes to get request from its client server widget and an initializer for configuration. Simply run:

    rails g anytime:install

## <a name="useCases">Use Cases</a>
Anytime's helper provides a mini widget to be put in any of your views files. Normally, people place it in layouts like application.html.erb:

    #application.html.erb
    <%= anytime_tag %>

## <a name="configurations">Configurations</a>
Anytime inserts an initializer into your config/initializers folder as:

    Anytime.setup do |config|
      #Configure the returning of Time.now and Date.now
      #Options: :utc and :local
      config.time_mode = :utc

      #Configure the supported environments
      #[:development] and [:development, :staging] are recommended
      config.environments = [:development]
    end

Anytime comes with a very raw user interface drawn by its helper, you can have a look at the page source code and make it up.

## <a name="license">License</a>
Anytime is released under the MIT license. See [LICENSE][] for details.
[license]: https://github.com/aquajach/anytime/master/LICENSE.md