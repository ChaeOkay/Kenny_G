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
Kenny G has a game setup mode where parameters can be delcared and adjusted, and are not required at instantiation.

```
kenny_g = KennyG.setup_game(players: ['sally', 'fred', 'carl'], winning_score: 100)
  => #<GameSetup>

kenny_g = KennyG.setup_game
  => #<GameSetup>
```

When setup is complete, let Kenny G know to go into game play mode.

```
kenny_g.play_game
  => <#GamePlay>
```

**`.play_game`**
To go directly into game play mode! If no parameters are provided, a single player is assume.

```
kenny_g = KennyG.play_game(players: ['sally', 'fred', 'carl'], winning_score: 100)
  => #<GamePlay>

kenny_g = KennyG.play_game
  => #<GamePlay>
```

**`#details`**
To show game information, request details in any state.

```
  kenny_g.details
  => {
       players: ['sally', 'fred', 'carl'],
       status: :game_setup,
       winning_score: 50
     }
```

**`#add_player`**
To add a player, provide a user. The player will have a default
score of 0. Players can only be added in game setup mode.

```
kennyg.add_player(user: 'player1')
  => { user: 'player1', score: 0 }
```

**TODO**


**`#write`**
To write a score, Kenny G will need the round number, a playername, and
the score. All of the player scores will be returned for the given round.

```
kennyg.write(1, { playername: :player1, score: 7 }
  => {
       1: {
            player1: 7,
            player2: 0,
            player3: 0
       }
     }
```

If a player's score meets or exceeds the winning score, Kenny G will
reutrn a celebratory message.

```
  => {
       game_over!: {
            winner: :player1,
            score: 7
       }
     }

```

**`#history`**
After Kenny G has started keeping score, he can retun a history of
player scores per round.

```
  => {
       0: {
            player1: 0,
            player2: 0,
            player3: 0
       },
       2: {
            player1: 7,
            player2: 2,
            player3: 1
       }
     }
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ChaeOkay/kenny_g. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
