---
layout: post
title: "The Swaps That Swallowed Your Town, or Tilting at Windmills"
date: 2010-06-18 15:53
comments: true
categories: finance
---

Way back in March, Gretchen Morgenson wrote [an article for the Grey Lady][gretchen]
that was easily among the most misleading since Bloomberg's
[epic failure on SOP 03-3 accounting][bloomberg]. Let's face it, now is a hell
of a time for financial journalists to make a name for themselves as the scourge
of Wall Street, so the temptation is to seize on anything sounding scary and
spin it into an article. There's still some low-hanging fruit out there (hints:
high-frequency trading, the May 6 flash crash, Spain), yet some try to swing for
the fences by exposing derivative classes. CDS, CDOs and PPNs have had their day
in the sun, so you have to dig deeper.

The interest rate swap market, with over $350 trillion in notional outstanding,
probably looks pretty good on that front. Plus, it's well known that
municipalities and universities have lost some money on them. (They did handily
from 2002‒06, but let's ignore that for now.) And so the fumbling in the dark
begins.

### Primer on Interest Rate Swaps

You can find explanations for interest rate swaps all over the web. All of those
explanations are horrible and feature a lot of boxes and arrows. Here's my
contribution to the mess:

Imagine that you have a variable-rate mortgage (like an ARM) tied to a
constantly changing market rate, like Prime, LIBOR or Treasuries. A bank comes
to you and says they'll convert your variable-rate mortgage to a fixed-rate
mortgage. There's no refinancing or new contract, just some product they have
that gives you the money to pay your mortgage payments, and in return you pay
them a normal, 30-year mortgage rate. You look at 30-year mortgage rates and
think they're pretty low, plus you're worried about rate hikes in the future, so
you agree.

From your perspective, you've just entered into a pay-fixed swap. You have the
original debt where you're paying a variable rate. In the swap, the bank pays
you the same variable rate (perfectly offsetting your mortgage payment), and
then you pay the bank the fixed rate.

Consider the risks. Well, if mortgage rates go lower, you're losing out. If they
go up, you win. Those are exactly the same risks you would have with a fixed
mortgage. That is, using the swap, you've effectively converted your ARM to a
traditional fixed mortgage.

Now, instead of being a homeowner with a mortgage, imagine you're a municipality
with a lot of variable-rate debt. The same thinking applies; if they're worried
that the rates they're paying may go up, they might want to lock in a fixed
rate. Homeowners would generally opt to refinance, but for municipal issuers
buying back debt just to reissue it with a different payment structure is costly
and time-consuming, and so they often choose to use swaps.

### Enter Luddism

We start off with a Gretchen classic (jumping the CDS shark, as
[Felix Salmon puts it][salmon]):

> Like the [credit default][cds] swaps that hid Greece’s obligations, the
> instruments weighing on our municipalities were brought to us by the creative
> minds of Wall Street.

_Currency_ swaps hid Greece's obligations. You know, because Greece had to
convert from the drachma to the euro. They entered into off-market currency
swaps, revenue deals and so on, and pocketed some cash upfront to make their
deficit appear lower. Even then, the fiscal problems at Greece were much,
much greater than those deals. Credit default swaps have absolutely nothing
to do with anything here, or in creating the fiscal problems of any country
ever. (Besides that, Greece probably would have done okay betting against its
own fiscal restraint.)

And that link is in the original. It leads to a definition of credit default
swaps that, of course, has nothing to do with concealing debt payments.

Gretchen then dazzles with a "fact" that manages to be both untrue and
tangential to her case:

> Making matters worse, issuers who want out of the arrangements---swap
> contracts typically run for 30 years---must pay up in order to escape.

No, they don't. They definitely don't. Swap contracts typically "run" for the
life of the underlying bond, which can be anything from tomorrow to 30 years
out (longer examples exist, but they're uncommon). And swaps can be terminated
at any time by paying or receiving the fair market value depending on who owes
whom. If the market has moved in the municipalities' favor, they would receive
money. By the way, this is the exact same principle as calling (buying back)
debt.

And Gretchen complains about having to pay that fair value when it works
against towns, although she's apparently fine with all benefits that accrue
to them. She's effectively advocating an options-based strategy. If you want
to enter into a contract hedging interest rates where you never lose cash
on termination, you would have to buy caps or floors and pay the premium
upfront. If a municipality did that, I'm sure Gretchen would complain about
the complexity of their valuation and spending taxpayer money now on ephemeral
things like volatility. Imagine her column if a city went long on caps
(implicitly betting that volatility rises), saw volatility fall and unwound for
less cash than the initial cost.

Shockingly, there is no free lunch.

More ridiculousness ensues:

> Imagine a homeowner who has a mortgage allowing her to refinance without a
> penalty if interest rates drop, as many do. Then she inexplicably agrees to
> give up that opportunity and not be compensated for doing so. Well, some towns
> did exactly that when they signed derivatives contracts that locked them in
> for 30 years.

The homeowner has what is called a prepayment option, equivalent to a call
option on a bond. Municipal bonds tend to be callable after 10 years or so, and
there's nothing in an interest rate swap that changes that.

> Then there are the counterparty risks associated with municipal swaps. If
> the banks in the midst of these deals falter, the municipality is at peril,
> because getting out of a contract with a failed bank is also costly. For
> example, closing out swaps in which Lehman Brothers was the counterparty cost
> various New York State debt issuers $12 million, according to state filings.

That $12 million was the market value of the swaps—the present value of all
expected payments and receipts—and that settlement was triggered by Lehman's
failure. That was real money owed to Lehman and an actual market loss. These are
often called fees, but they're not punitive assessments; they represent market
valuation. If New York wanted to put the exact same swap back on, they could
have found another counterparty and received $12 million back. (In reality, they
have to execute at-the-market, which means $0 initial value, because otherwise
the temptation to receive cash upfront and pay it back later without going to
the bond market leads to some very sketchy outcomes. Ask Greece.)

But frankly, to me that sounds like a success: your counterparty, a major
fixed-income player fails overnight, and you're none the worse. Several CDS
counterparties of AIG, on the other hand, would have been up a creek without a
bailout.

Morgenson then mentions New York's latest [swaps performance report][swaps]. So
let's call her bluff. Even glancing momentarily at the executive summary
indicates that NY's IR swap arrangements have been generally beneficial. The
chart below shows the cumulative cost savings from the swap portfolio, winding
up around $41.4 million at the end of the 2009 fiscal year:

> Since its inception in 2002 through the end of March 31, 2009, the Division
> of the Budget (DOB) estimates that the swaps program has resulted in $41.4
> million of reduced interest costs, when compared to traditional debt
> issuances. In 2008--09, the crisis in the credit markets negatively affected
> the performance of the swap portfolio. For existing swaps, the estimated
> overall savings declined by $23.0 million. In addition, the State incurred
> $78.9 million in costs (present value) related to swap terminations.

<object type="image/svg+xml" data="/images/ny_swaps.svg" style="width:400px;height:400px">
{% img /images/ny_swaps.png New York swaps performance %}
</object>

Heck, that's not just the executive summary, that's _the very first bullet
point_. The whole report is contrary to everything she's claiming in the
article. The DOB has saved taxpayer money, demonstrated a clear understanding of
the products (pages 21--22) and articulated a risk management policy in plain
English (22--29). Investigative journalism at its finest.

Note that the DOB's report plainly characterizes the termination costs as being
a recognition of present value losses, and even then, at the end of the day,
the interest rate swaps have saved the state over $40 million. Gretchen ignores
this figure and cherry-picks the cash outlay after Lehman's bankruptcy, opining
that New York could have spent that $103 million on many other things that the
state needs. Never mind the much greater amount of benefit that the state has
received. Brilliant.

The DOB has an incentive in making the swaps strategy look successful, but to
counter that you'd have to find some actual misrepresentation in that report,
because the facts back up their assertion.

> "We need transparency where Wall Street discloses not only the risks but also
> calculates the potential costs associated with those risks," said Joseph
> Fichera, chief executive at Saber Partners, an advisory firm. "If you just
> ask issuers to disclose, even in a footnote, the maximum possible loss or
> gain from the swap they probably wouldn’t do it. And if they did that, then
> investors and taxpayers would know what the risks are, in plain English."

I'm honestly lost here. Swaps convert fixed-rate obligations to variable-rate
obligations and vice versa. You can lose almost _exactly_ the same amount
on variable-rate debt as you can on fixed-rate debt that's swapped to
variable-rate. And obviously, variable-rate debt brings interest-rate risks that
you can mitigate by swapping to fixed. Fixed-rate debt brings fair value risks
that you can mitigate by swapping to variable. The point is that you have to
look at the total portfolio and then disclose those risks, and it could be (and
generally is) the case that swaps can help you manage those risks, rather than
enlarge them.

The real issue here is auction rate securities. Interest rate swaps did exactly
what they were supposed to, exchanging payments of one rate for another. The
problem for New York was that the variable rate chosen for the swaps broke
away from what municipalities had to pay on their auction rate securities, and
that was due to auction failure, an event that IR swaps have never intended to
hedge. In Jefferson County, the swaps again did their job, but the rate they
were paying exploded when the companies guaranteeing their debt lost their high
credit rating.

If both NY and Bama had avoided auctions and other gimmicks, they wouldn't
have had those problems. Either way, the swaps _would have had exactly the same
payments_, and without swaps the same problems would have occurred. Why not blame
something that actually had something to do with the problems?

### Attachments

[SwapsPerformanceReport.pdf][my_swaps] (1.19 MB)

  [gretchen]:http://www.nytimes.com/2010/03/07/business/07gret.html
  [bloomberg]:http://www.bloomberg.com/apps/news?pid=20602061&sid=aYhaiSOq_Tbc
  [salmon]:http://blogs.reuters.com/felix-salmon/2010/03/07/the-nyt-jumps-the-cds-shark/
  [cds]:http://topics.nytimes.com/top/reference/timestopics/subjects/c/credit_default_swaps/index.html?inline=nyt-classifier
  [swaps]:http://www.budget.state.ny.us/investor/bond/SwapsPerformanceReport.pdf
  [my_swaps]:/documents/SwapsPerformanceReport.pdf
