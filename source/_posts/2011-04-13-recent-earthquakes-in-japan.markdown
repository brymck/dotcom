---
layout: post
title: "Recent Earthquakes in Japan"
date: 2011-04-13 08:09
comments: true
categories: japan
---

Since Japan has been experiencing increased earthquake activity since the [Tōhoku][tohoku] earthquake and tsunami on March 11, I
put together the chart below for each daily earthquake (blue dots) and the weekly average (red line) based on data from
the JMA. The chart shows daily earthquakes registering MMS 1.0 or higher.

Weekly average is the total magnitude for the week, with the date plotted as the midpoint. I simply add all the seismic
moments (M0 in the formula below) for the week, divide by 7 and convert that to MMS. The scale is logarithmic, such that
one quake registering a 9.0 releases 1000 times as much energy one measuring 7.0 does, which likewise releases 1000
times as much energy as one registering 5.0 does. It's not a perfect measure, but it does provide some perspective on
directionality.

``` ruby
def moment_magnitude(seismic_magnitude)
  2/3 * Math.log(seismic_magnitude) - 10.7
end
```

Unfortunately, the chart is missing data for early April.

  [tohoku]:http://en.wikipedia.org/wiki/2011_T%C5%8Dhoku_earthquake_and_tsunami
