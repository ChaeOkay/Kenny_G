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
kenny_g.add_player('player1')
  => { player1: {
         points: [0],
         points_total: 0
     },
```

**`.play_game`**
To start recording scores, let KennyG know that the game is being played.

```
kenny_in_action = kenny_g.play_game
  => <#GamePlay>
```

**`#score`**
Scores can only be written in game play mode. To write a score, Kenny G will need a user and a point amount. Player details will be returned.

```
kenny_in_action.score(user: 'player1', points: 7 }
  => { player1: {
         points: [3, 7],
         points_total: 10
     },
```

**`#details`**
To show game or player information, ask for details.

```
  kenny_in_action.details
  => {
       players: {
            carl: {
              points: [0,1],
              points_total: 1
            },
            rose: {
              points: [0,5],
              points_total: 5
            }
       },
       status: :game_setup,
       shared_target: 50
     }
```

**`Quick Play`**

If no game setup is needed, head directly into game play mode where a single player assumed with no winning target threshold.

```
kenny_in_action = KennyG.play_game
  => #<GamePlay>
```

**TODO**

*  players should have a target
*  games play should not know the player target?
*  game_end
*  scoring for quick play
*  point rounds



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

to install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ChaeOkay/kenny_g. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
