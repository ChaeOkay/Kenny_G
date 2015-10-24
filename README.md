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
To start a new game, provide a players names and a winning score
threshold.

```
kenny_g = KennyG.setup_game(players: ['sally', 'fred', 'carl'], winning_score: 100)
  => #<GameSetup:instance_object_number>
```

**`#details`**
To show game information, request details.

```
  kenny_g.details
  => {
       players: ['sally', 'fred', 'carl'],
       status: :game_setup,
       winning_score: 50
     }
```


**`#add_player`**
To add a player, provide a playername. The player will have a default
score of 0. Players cannot be added after Kenny G starts
keeping score.

```
kennyg.add_player(playername: 'player1')
  => { name: 'player1', score: 0 }
```

**`#please_start_keeping_score`**
Let Kenny G know when the game play begins to start writing scores.

```
kennyg.please_start_keeping_score
  => {
       0: {
            player1: 0,
            player2: 0
       }
     }
```

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

