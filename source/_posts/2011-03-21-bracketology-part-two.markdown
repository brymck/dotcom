---
layout: post
title: "Bracketology, Part 2"
date: 2011-03-21 09:05
comments: true
categories: sports
---

[Part 1 here][part_one]

So after the first weekend of play, there seems to be a statistically dubious
relationship between computed probabilities and actual results, and if you
exclude near-certain games (i.e. the 1--16 and 2--15 games), correlation is
actually negative as probability increases from 50%:

{% img /images/bracketology_backtest.png %}

So thus far we have little backtesting evidence of predictive reliability. That
said, here's an update of the bracket with [kenpom probabilities][kenpom]:

{% img /images/kenpom_2.png %}

I've updated the original spreadsheet with stuff like a Monte Carlo sim for the
final four rounds, which gives the following probabilities for each team of
taking home the championship:

Team                  | kenpom | Vegas
----------------------|-------:|------:
Ohio St.              |     32 |    25 
Kansas                |     20 |    25 
Duke                  |     19 |    11 
Wisconsin             |     10 |     4 
San Diego St.         |      5 |     4 
Brigham Young         |      4 |     3 
Kentucky              |      3 |     5 
North Carolina        |      2 |     6 
Florida               |      2 |     4 
Connecticut           |      2 |     4 
Florida St.           |      1 |     2 
Richmond              |      0 |     0 
Marquette             |      0 |     2 
Arizona               |      0 |     2 
Butler                |      0 |     2 
Virginia Commonwealth |      0 |     0 

Also, on the issue of the Big East's massive underperformance relative to
perennially inflated expectations, it's worth noting that this is the norm for
the conference. Tracking conferences over the past decade and adjusting for the
size of the conference, the Big East just hasn't been that successful:

{% img /images/tourney_success_column.png %}

Much of the reason the Big East has a reputation for being such a tough
conference, one filled with teams that can beat each other, is because the
conference really is filled with that many good-but-not-great teams. One team
makes it through the slugfest against several Round of 32-caliber teams as is
immediately anointed as "battle-tested." Nowhere is this more evident than this
year, where the Big East fielded a record 11 tournament teams, but only 2 made
it to the Sweet Sixteen, and even then, only got there because they played
another Big East team in the Round of 32.

All of this leads me to believe that indicators (RPI, kenpom's ratings) are
being skewed heavily by playing a large number of merely good opponents. The
toughest road is playing in a conference with both weak and strong opponents,
yet at least with the RPI the formula would just focus on the average. For
example, assuming opponents have equal SOS, beating a 20-0 team and then a
10-10 team would be the same as beating two 15-5 teams. Also, losing by 30
to a 20-0 team and beating a 10-10 team by 1 have the same effect on your
RPI. Naturally, I wanted to move away from the Really Poor Indicator, but
while the kenpom figures are very interesting and the site is one of the best
statistical breakdowns of sports out there, the computed probabilities don't
seem to matter much come tourney time.

Bottom line: Maybe the best predictive indicator for the NCAA Tournament is
high-quality wins, with lower-quality games being much less irrelevant. I don't
know how you determine that yet, but you get every team's best shot in the
tourney, and profoundly above-average teams don't seem capable of handling it.

  [part_one]:/blog/bracketology/
  [kenpom]:http://www.kenpom.com/
  [download]:/download/Bracketology.xlsm
