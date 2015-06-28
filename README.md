# Kenny G

Back in the olden days, people would get together face-to-face and play
games. Someone would eventually rise to the occasion, and self appoint themselves as the scorekeeper.
The scorekeeper would then need to find a piece of scrap paper, and record each players score per round.
If I could elect anyone to be the scorekeeper of my games, it would be
Kenny G.

Now, Kenny G can be your domain's personal scorekeeper. There's no need to wine and dine. Simply ask him politely, and he will be happy to put his accounting skills to practice.


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

**`.please_be_the_scorekeeper`**
To start a new game, provide a winning score.

```
kennyg = KennyG.please_be_the_scorekeeper(winning_score: 100)
  => #<KennyG:instance_object_number>
```

**`#add_player`**
To add a player, provide a playername. The player will have a default
score of 0. Players cannot be added after Kenny G starts
keeping score.

```
kennyg.add_player(playername: 'player1')
  => { player1: 0 }
```

**`#players`**
To see a list of players

```
kennyg.players
  => { player1: 0, player2: 0 }
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

