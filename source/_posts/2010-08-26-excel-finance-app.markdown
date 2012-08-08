---
layout: post
title: "Excel Finance App"
date: 2010-08-26 05:12
comments: true
categories: 
---

### Summary

Download it here: [FinAnSu][github_finansu]

The app right above integrates with .NET (installed on updated XP, Vista
and Windows 7 machines) and Excel to pull in online security price
data. Installation instructions can be on that page, also.

### Why

* **Threading** - Pulling information from the Web via VBA or Excel's native
  web import is slooow. Support for asynchronous requests and threading exists
  to a limited extent, but the bottom line is that things will update one by
  one, and your interface will lock up until all processes are done. Threading
  via [Excel-Dna][excel_dna], on the other hand, is very easy. In non-technical
  terms, this means you can have something running alongside Excel that doesn't
  force the spreadsheet to do a lot of recalculations or otherwise interfere
  with your work. For processes like web queries where much of that time is
  spent waiting, you can really speed up an application by having them run
  concurrently.

* **Speed** - Writing things in compiled C# computes much faster than VBA, which
  is compiled on the fly. For financial functions that involve many computations
  (like Monte Carlo simulations, long-term callable/cancellable bonds, complex
  options, etc.), this will be very useful going forward.

* **Ease of Deployment** - Microsoft's preferred [VSTO][vsto] is a deployment nightmare,
  and I'm not shelling out $200 for an Authenticode license when I don't need
  full trust, plan to keep this open source and don't see any reason why a
  simple add-in should need to install itself when you can just delete it in
  Excel.

* **Interoperability** - Seriously, there are enormous headaches dealing with
  the variety of Windows versions. .NET at least limits them.

### Some Pretty Boring Details

#### Background

So one little thing I've been working on periodically is how to import online
data into Excel. There is obviously a wealth of data on finance sitting around
online, but the tools we have to access it are woefully inadequate if you don't
have a Bloomberg terminal in front of you.

As an example, let's say I want to model an EUR-USD cross-currency swap in
Excel. Well, I know how to do it; I basically need a series of quotes for EURUSD
exchange rates, LIBOR, Euribor, cross-currency basis swaps, and maybe some
regular basis swaps (i.e. 1M-3M, 3M-6M). Without a pricing tool, I'd have to
look these up in Bloomberg, enter them by hand, and then build the model. (Even
with a tool, if you want to test the sensitivity of certain assumptions, you'd
probably use Excel anyway.) If prices changed, I'd have to reenter them. If I
wanted to lengthen the term, I'd have to look up several more sets. It's a total
waste, because those quotes are all just sitting there on finance websites and I
already know their IDs. So you need a tool if you want to make this painless.

As for why this requires a tool—not just a data import or an add-in—let's take a
seemingly simple example, like pulling stock quotes.

#### Excel Import Data from Web

{% img right /images/finansu/excel_from_web.png Excel data import %}

The first solution is to use the built-in web import functions in Excel. This
tool imports web tables, which hasn't been useful since
[tableless web layouts][tableless] entered the mainstream several years ago, and
thus it barely works with even the MSN homepage. If you want to import [Google's
stock quote][goog] from Google Finance, you basically import the whole page and
have to sift through 152 cells of data when you most likely want 1.

Let's say that's okay. Now you want to change the URL so you can pull Yahoo's
quote. After clicking somewhere in the output range, you would do this:

Data > Connections > Properties... > Definition > Edit Query... > Change URL

And if you want to add a new web connection, you have to repeat the
process. It's a pain, and it's worthless except for one-off projects. If you
have certain price data you want to monitor and incorporate in a variety of
Excel work, it just doesn't cut it. VBA data connection objects are convoluted
enough that you have to be a masochist to mess with them (e.g. sometimes even
slightly errant string lengths in database connections will crash Excel).

So native import is out.

#### Standalone Excel Add-In

Now we're talking. You can reference the Microsoft XML and Microsoft VBScript
Regular Expression libraries, which give the XmlHttp and RegExp objects. Using
those, you can import a web page (unfortunately, you can't speed it up by
implementing an asynchronous XmlHttpRequest object or a delegate, as VBA can
only access one thread), parse it with a [regular expression][regex], and pull
out the info you need.

It works like a charm, and it's what I did initially. But some issues linger,
most notably that you either have to update all quotes manually (Ctrl+Alt+F9)
or automatically. The former means a lot of refreshing and stale data, the
latter a lot of waiting after you change even a single cell. Each update is an
interruption of your workflow, and dozens of securities can take a very long
time to pull. Furthermore, while these cells are refreshing, they have the
potential to corrupt the cell you're currently working in.

Despite these issues, people may want to consider this methodology, and to that
end there's a great [Yahoo! Finance add-in by Randy Harmelink][smf_addin].

#### Background Application + Excel Add-In

And this is where I settled. Here, you control how often information is pulled,
and because it's done separately from Excel you don't have any issues with
waiting for a refresh or corrupted cells. Both Excel and the application share
access to the registry (for security ID lists and preferences) and a small DAT
file containing the latest quotes. Whenever my custom `=Quote()` function is
called in Excel, the application opens, minimized to the system tray, and begins
pulling in quotes.

Bloomberg does something like this (in a much, much more sophisticated way)
for their Excel add-in, which delivers data using the Bloomberg Professional
application as the back-end.

{% img right /images/finansu/live_quote.gif FinAnSu live quote %}

Anyway, once you've installed everything, you would write something like
`=LiveQuote("goog")` in Excel. The application will display `"#WAIT"` in
the cell until it's pulled the information and update every 15 seconds
afterwards. The program updates in the background, and so it don't interfere
with anything you're doing in Excel. You can adjust the refresh time and turn
off auto-updating to meet your needs, too.

Note also that, despite the greatness of Mr. Harmelink's add-in above,
you can get some things from Bloomberg that you just can't get elsewhere,
like LIBOR, swaps, corporate bonds, CDS, etc. You might think the
applications of a real-time GOOG quote are limited, but with something like
`=LiveQuote("US0003M:IND")` (and its LIBOR/swap brethren) pulling from
Bloomberg, you can do some serious discounted cash flow stuff very near the
actual market quote and open up the fixed-income universe. Check out
[Bloomberg Open Symbology][open_symbology] for a list of security IDs, a good
number of which can be priced through their site.

I'm not a programmer by trade, so certain things I haven't perfected, but it's
still a nifty little tool, IMO. There's some clean-up to do regarding usability,
but Rome wasn't built in a day.

  [excel_dna]:http://exceldna.codeplex.com/
  [github_finansu]:http://github.com/brymck/finansu
  [goog]:http://www.google.com/finance?q=NASDAQ%3AGOOG
  [open_symbology]:http://bsym.bloomberg.com/sym/
  [regex]:http://en.wikipedia.org/wiki/Regular_expression
  [smf_addin]:http://finance.groups.yahoo.com/group/smf_addin/
  [tableless]:http://en.wikipedia.org/wiki/Tableless_web_design
  [vsto]:http://en.wikipedia.org/wiki/Visual_Studio_Tools_for_Office
