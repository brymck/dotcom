---
layout: post
title: "Bracketology"
date: 2011-03-17 02:05
comments: true
categories: sports
---

I made a little spreadsheet that I plan to update to look at the probabilities
generated at [kenpom.com][kenpom] for NCAA Tournament games. It includes the
bracket shown in the pic below, a simulator for hypothetical games and an easy
way to update it using [summary data from kenpom][summary]. As for kenpom, Ken
Pomeroy generates ratings for each team based on their offensive and defensive
efficiency, adjusted for the caliber of their opponents, which can then be
turned into probabilities of victory or final score estimates. Think of it as a
more relevant version of the RPI.

You can [download the spreadsheet here][download].

And here are the current results if the favorite wins in every match-up, with
games color-coded in grades of green (clear favorite) through red (no favorite):

{% img /images/kenpom_0.png %}

What's most notable is that certain match-ups you wouldn't expect to be close
have evenly-matched teams. Clemson, despite playing in the play-in game, could
be very dangerous for West Virginia. Belmont could be a difficult out for
Wisconsin. In fact, once we get to the 5--12 matchups, the probability of the
higher-seeded team winning drops off a cliff:

Match-up | Win %
---------|------:
1 vs. 16 |    98
2 vs. 15 |    91
3 vs. 14 |    88
4 vs. 13 |    82
5 vs. 12 |    56
7 vs. 10 |    54
8 vs. 9  |    51

Also, the four play-in games were also not projected to be tremendously
balanced, with one team having a probability of winning of 66‒74% in each
match-up. Of the four, there was one "upset," VCU over USC.

### Estimates

kenpom includes estimates for scheduled games, which means I had to create
an estimate as around half of all tourney match-ups are hypothetical at this
point. His formula includes some adjustment for home and away games that I
haven't looked into, but since tourney games are all technically neutral-site,
from what I gather the victory % estimate is:

#### Victory Probability

``` ruby
def yourVictoryPct
  yourRating * (1 - opponentRating) /
    (yourRating + opponentRating - 2 * yourRating * opponentRating)
end
```

where `rating` is a value from 0 to 1.

Possessions

``` ruby
def possessions
  yourTempo * opponentTempo / d1AverageTempo
end
```

where `tempo` is an estimate of possessions per game. `d1Average` indicates an
average for all of Division I basketball.

Score

``` ruby
def score
  yourOffense * opponentDefense * d1AverageOffense / 1000000 * possessions
end
```

where `offense` and `defense` are kenpom's adjusted offensive and defensive
efficiency ratings, and I adjust the losing team's score such that it is no
greater than the winning team's score minus 1.

  [kenpom]:http://www.kenpom.com/
  [summary]:http://kenpom.com/summary11.csv
  [download]:/documents/Bracketology.xlsm
