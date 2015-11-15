# Kenny G

![gem under constuction](http://www.widdiful.co.uk/90/construction1.gif)

Now, Kenny G can be your domain's personal scorekeeper. Ask him politely, and he will be happy to put his accounting skills to practice.

![Kenny G smoking the saxaphone](http://33.media.tumblr.com/tumblr_lrfkpnKoei1ql60fno1_400.gif)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kenny_g'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kenny_g

## Usage

**`.setup_game`**
Kenny G has a game setup mode where players and a winning score can be delcared and adjusted.

```
kenny_g = KennyG.setup_game(players: ['sally', 'fred', 'carl'], shared_target: 100)
  => #<GameSetup>

kenny_g = KennyG.setup_game
  => #<GameSetup>
```

**`#add_player`**
Players can only be added in game setup mode. To add a player, provide a user. The player will have a default
score of 0.

```
kennyg.add_player(user: 'player1')
  => { user: 'player1', score: 0 }
```

**`.play_game`**
To start recording scores, let KennyG know that the game is being played.

```
kenny_g.play_game
  => <#GamePlay>
```

**`#score`**
Scores can only be written in game play mode. To write a score, Kenny G will need a user and a point amount. Player details will be returned.

```
kennyg.score(user: :player1, score: 7 }
  => {
       user: :player1,
       points: [0,7],
       points_total: 7
     }
```

**`#details`**
To show game or player information, ask for details.

```
  kenny_g.details
  => {
       players: ['sally', 'fred', 'carl'],
       status: :game_setup,
       shared_target: 50
     }
```

**`Quick Play`**

If no game setup is needed, head directly into game play mode where a single player assumed with no winning target threshold.

```
kenny_g = KennyG.play_game
  => #<GamePlay>
```

**TODO**

*  players should have a target
*  maybe a game is more like a competition, and a player is a competitor
*  games play should not know the player target, I don't think
*  game_end
*  scoring for quick play
*  point rounds


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ChaeOkay/kenny_g. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
