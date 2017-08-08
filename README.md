# SimpleLineIcons::Rails

This gem provides access to the simple line icons library. This is not an official gem.

docs: http://simplelineicons.com/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_line_icons-rails', :git => "https://github.com/cmm21/rails-simple-line-icons.git"
```

And then execute:

    $ bundle

## Usage


In your `application.css`, include the css file:

```css
/*
 *= require simple-line-icons
 */
```
Then restart your webserver if it was previously running.

## Helpers

Using the `sl_icon` helper: 
```ruby
sl_icon "home"
# => <i class="icon-home">
```

```ruby
sl_icon "social-google"
# =>  <i class="icon-social-google"

sl_icon "home", text: "Welcome home" 
# => <i class="icon-home"> Welcome home

sl_icon "home", data: { id: 777 } 
# =>  <i class="icon-home"data-id="777">

sl_icon "home", class: "large"
# =>  <i class="icon-home large"></i>

sl_icon "home", data: {id: 77}, class: "large"
# =>  <i data-id="77" class="icon-home pull-left"></i>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/simple_line_icons-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleLineIcons::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/simple_line_icons-rails/blob/master/CODE_OF_CONDUCT.md).
