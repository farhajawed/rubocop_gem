This repository contains the default rubocop configuration to be used across all Network for Good applicaions.

## Installation

1. Remove the following lines (if any) from your applications's Gemfile:
```yaml
gem 'rubocop'
gem 'rubocop-rails'
gem 'rubocop-rspec'
```

2. Add this line to your application's Gemfile:

```ruby
gem 'rubocop_gem', git: 'https://github.com/farha-neu/rubucop_gem.git'
```

3. Execute:

    $ bundle install

## Usage

Add `.rubocop.yml` to your project's root directory with the following content:

```yaml
inherit_gem:
  rubocop_gem:
    - config/default.yml    # for ruby cops
    - config/ext/rails.yml  # for rails cops
    - config/ext/rspec.yml  # for rspec cops
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rubocop_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rubocop_gem/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NfgRubocop project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rubocop_gem/blob/master/CODE_OF_CONDUCT.md).
