+++
title = "Function Points: Numerology for Software Developers"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:48:05-08:00
draft = false
+++

"Where else can one get such a marvelous return in conjecture from such a modest
investment of fact?" – Mark Twain

Numerology is the study of the occult meanings of numbers and their influence on
human life1. Numerologists specialize in finding numeric relationships between
otherwise disparate figures, and attributing to them some greater significance.

For instance, some claim that by adding up the component numbers in your birth
date, together with the numeric equivalent of your name (where A=1, B=2 etc)
then a figure is derived that, if properly interpreted, can yield insight into
your personality.1

Others consider that the reoccurrence of the number 19 in Islamic texts is
evidence of their authorship by a higher being 2. The Koran has 114 (6 x 19)
chapters and 6346 verses (19 x 334) and 329,156 (19 x 17,324) letters. The word
"Allah" appears 2,698 (19 x 142) times. The sum of the verse numbers that
mention Allah is 118,123 (19 x 6,217).

Pyramids are a favorite topic for numerologists, and there are dozens of
"meaningful" numeric relationships to be found in their dimensions. For
instance, the base perimeter of the Great Pyramid of Cheops is 36,515 inches
– 100 times the number of days in the solar year. And so on.

We can laugh at such desperate searches for meaning, but before we laugh too
hard we should consider that software development has its own brand of
numerology, which we have given the grand name of Function Point Analysis (FPA).


## Overview Of Function Points {#overview-of-function-points}

FPs were proposed in 1979 as a way of finding the size of a piece of software given only its functional specification. It was intended that the FP count of an application would be independent of the technology, people and methods eventually used to implement the application, focusing as it did upon the functionality the application provided to the user. Broadly speaking, basic FPs are calculated by following these steps:

1.  Divide a functional view of the system into components.
2.  Classify each component as being one of five types – external input, external output, external inquiry, internal logical file or external interface file.
3.  Classify the complexity of each component as low, average or high. The rules for performing this classification vary by component type.
4.  For each type of component, multiply the number of components of that type by a numeric equivalent of the complexity e.g. low = 3, average = 4, high = 6. The numeric equivalents that apply vary by component type.
5.  Sum the results of step 4 across all five component types. The total is a figure called Unadjusted Function Point count (UFP).You can then multiply the UFP by a Value Adjustment Factor (VAF) which is based on consideration of 14 general system characteristics, to yield the final Function Point count.

I won’t bore you with the excruciating specifics of the component
calculations. The above gives you some idea of the nature of FP counting and
it’s reliance upon subjective judgments. Specifically, the placement
of component boundaries and the values chosen for the many weighting factors and
characteristics are all determined on a subjective basis. Some of that
subjectivity has been embodied in the standardized FP counting rules that are
issued by the International Function Point Users Group (IFPUG).3

So lacking have FPs been found, that there has been a steady stream of proposed improvements and alternatives to them since 1979. But none of these have challenged the basic FP ethos of modeling functional size as a weighted sum of arbitrarily selected attributes. They simply change the number and definition of those attributes, and the means by which they are mangled together into a final figure. The basic chronology of the FP family tree has been:
1979 Function Points (Albrecht) 1986 Feature Points (Jones)
1988 Mark II Function Points (Symons)
1989 Data Points (Sneed)
1991 3 D Function Points (Boeing)
1994 Object Points (Sneed)
1997 Full Function Points (St. Pierre et. al) 1999 COSMIC Full Function Points (IFPUG)

To understand why the FP and its many variants are fundamentally flawed, it is
first necessary to understand the difference between measuring and rating.


## Measurement Vs. Rating {#measurement-vs-dot-rating}

To measure an attribute of something is to assign numbers to it on an objective
and empirical basis, so that the relationships between the numbers preserve any
intuitive notions and empirical observations about that attribute.4

For example, the metric meter is a measure, which implies:
• 4metersistwiceaslongas2meters,because4istwice2
• The difference between 9 and 10 meters is the same as the difference between 1 and 2 meters, because 10-9 = 2-1
• If you moved 4 meters in 2 seconds (at constant velocity) then you moved 2 meters in the first second and 2 meters in the last second.
• If two different people measure the same length to the nearest meter, they will get the same number.
To rate an attribute of something is to assign numbers to it on a subjective and intuitive basis. The relationships between the numbers do not preserve the intuitive and empirical observations about the attribute. In contrast to the above example, consider the rating out of 10 that a reviewer gives a movie:
• Amoviethatgetsa4isnottwiceasgoodasamoviethatgetsa2.
• Thedifferencebetweenmoviesthatget9and10isnotthesameasthe
difference between movies that get 1 and 2.
• A2hourmoviethatgetsa6didnotrate3forthefirsthourand3for the second hour.
• Two different people rating the same movie may award different ratings.
To clarify, suppose a reviewer expresses their assessment of a movie in words rather than numbers. Instead of rating a movie from 1   10, they rate it from "abysmal" to "magnificent". We might be tempted to think a movie that gets an 8 is twice as good as a movie that gets a 4, but we would surely not conclude that "very good" is twice as good as "disappointing". We can express a rating using any symbols we want, but just because we choose numbers for our symbols does not mean that we confer the properties of those numbers upon the attribute we are rating.

In summary:
• Ameasurementisobjectiveandcanbemanipulatedmathematically. • Aratingissubjectiveandcannotbemanipulatedmathematically.
Function Points Are A Rating, Not A Measurement
From the above, it is clear that FPs are a rating and not a measurement, due to the subjective manner in which they are derived. Hence, they cannot be manipulated mathematically. And yet the software literature is rife with examples of researchers attempting to do just that. Many researchers and reviewers continue to ignore the fundamental implications of the non- mathematical nature of the FP5, such as:
• You cannot measure productivity using FPs – If a team completes an application of 250 FP in 10 weeks, their productivity is not 25 FP/week. The figure "25" has no meaning. Similarly, a given team need not take 50% longer to write a 1800 FP application as they will a 1200 FP application.
• You cannot compare FP counts numerically – An application of 1000 FP is not twice as big, complex or functional as an application of 500 FP. The first application is not "twice" the second in any meaningful sense.
• YoucannotcompareFPsfromdisparatesources–Thesubjectivityof FP analysis makes it sensitive to contextual variations in application domain, technology, organization and counting method.

Given such limitations, there are very few valid uses of an application's FP
count. If the FP counts of two applications differ markedly, and their contexts
are sufficiently similar, then you may be justified in saying that one is
functionally bigger than the other, but not by how much.3 The notion that FPs
can participate in mathematical calculations, and thereby be used for
scheduling, effort and productivity measures, is without theoretical or
empirical basis.


## Why Are Function Points So Popular? {#why-are-function-points-so-popular}

• Althoughtheirusemayhavedeclinedinrecentyears,FunctionPoints are still quite popular. There are several factors which might account for their continued usage, despite their essential invalidity:
• ThefactthatotherorganizationsuseFPsisenoughtoencouragesome to follow suit. However, we should be aware that an argument from popularity has no logical basis.

There are many beliefs that are both widely held and false. The popularity of FPs may only be indicative of how desperately the industry would like there to be a single measure of functional size that can be calculated at the specification stage. It certainly would be desirable for such a measure to exist, but we cannot wish such a metric into existence, no matter how many others have the same wish.

• Some researchers claim to have validated function points (in their original form, or some later variant thereof). However, if you examine the details of these experiments, what you will find is pseudo-science, ignorance of basic measurement theory and statistics, and much evidence of "fishing for results." There is a lot of fitting of models to historical data, but not a lot of using those models to predict future data. This is not so surprising, for the general standard of experimentation in software is very poor, as Fenton observes. Altman makes an observation6 about the legion of errors that occur in medical experimentation that could apply equally well to software development:
• "The main reason for the plethora of statistical errors is that the majority of statistical analyses are performed by people with an inadequate understanding of statistical methods. They are then peer reviewed by people who are generally no more knowledgeable."
• Hope springs eternal. Rather than concede that efforts to embody functional size in a single number are misguided, it is consoling to think that FPs are "nearly there", just a few more tweaks away from being useful. Hence the many FP variants that have sprung up.
• FP enthusiasts selectively quote the "research" that is in their favor, and ignore the rest. For example, the variance between FP counts determined by different analysts is often quoted as "plus or minus 11 percent."7 However other sources8 have reported worse figures, such across organizations.
• SomechoosetodismissthetheoreticalinvaliditiesofFPsasirrelevant to their practical worth. Their excuses may have some appeal to the average developer, but don’t withstand scrutiny. Examples of such excuses are:
• As long as FPs work, who cares what basis they have or don’t have? - The problem is that in general, FPs don’t work. Even FP adherents will admit to the numerous shortcomings of FPs, and the need to constrain large numbers of contextual factors when applying them. Witness the various mutations of FP that have arisen, each attempting to address some subset of the numerous failings of FPs.
• It doesn’t matter if you’re wrong, as long as you’re wrong consistently9 – Unfortunately, unless you know why you’re wrong, you have no way of knowing if you are indeed being consistently wrong. FPs are sensitive to a great many contextual factors. Unless you know what they are and the precise way they effect the resulting FP count, you have no way of knowing the extent to which your results have been influenced by those factors, let alone whether that influence has been consistent.


## Function Point’s True Believers {#function-point-s-true-believers}

FPs have attracted their own league of True Believers – like many
technical schools whose tenets, lacking an empirical basis, can only be defended
by the emotional invective of their adherents. I encountered one such adherent
recently in David Anderson, author of "Agile Project Management." Anderson made
some rather pompous observations10 on his blog as to how surprising it was that
people should express disbelief regarding his claims to 5 and 10-fold increases
in productivity using TDD, AM and (insert favorite acronym here)FDD. I replied
that their incredulity might stem from the boldness of his claims or the means
by which he collected his data, rather than an inherently obstreperous attitude.
He indicated his productivity data was expressed in FPs per unit time! I tried
explaining to him that FPs cannot be used to measure productivity, because not
all FPs are created equal, as explained above. He wasn’t interested.

That discussion has now been deleted from his blog. He also denied me permission
to reproduce that portion of it which occurred in email.

Such is the attitude I typically encounter when dealing with self-styled gurus
and experts. There is much talk of science and data, but as soon as you express
doubt regarding their claims, there is a quick resort to insult and posture.
Ironic, given that doubt and criticism are the basic mechanisms that give
science the credibility that such charlatans seek to cloak themselves in.


## Why Must Functional Size Be A Single Number? {#why-must-functional-size-be-a-single-number}

The appeal, and hence the popularity, of FPs is their reduction of the complex
notion of software functional size to a single number. The simplicity is
attractive. But what basis is there for believing that such a single-figure
expression of functional size is even possible?

Consider this analogy. When you walk into a clothing store, you characterize
your size using several different measures. One figure for shirt size, another
for trouser size, another for shoe size and another for hat size. What if, by
way of misguided reductionism, we were to try and concoct a single measure of
clothing size and call it Clothing Points. We could develop all sorts of rules
and regulations for counting Clothing Points, including weighting factors
accounting for age, diet, race, gender, disease and so on. We might even find
that if we sufficiently controlled the influence of external factors, given the
limited variations of the human form, we might eventually be able to find some
limited context in which Clothing Points were a semi-reasonable assessment of
the size of all items of clothing. We could then walk into a clothing store and
say "My size is 187 Clothing Points" and get a size 187 shirt, size 187
trousers, size 187 shoes and size 187 hat. The items might even fit, although we
would likely sacrifice some comfort for the expediency and convenience of having
reduced four dimensions down to a single dimensionless number.

The search for a grand unified "measure" of functional size may be just as foolhardy as the quest for uni-metric clothing.


## Conclusion {#conclusion}

The continued use and acceptance of Function Point Analysis in software
development should be a source of acute embarrassment to us all. It is a prime
example of muddle-headed, pseudo-scientific thinking, that has persisted only
because of the general ignorance of measurement theory and valid experimental
methodology that exists in the development community. We need to stop
fabricating and embellishing arbitrary sets of counting rules. In doing so, we
are treating these formulae as if they were incantations whose magic can only
manifest when precisely the correct wording has been discovered, but whose inner
workings must forever remain a mystery. Rather, we need to go back to basics and
work towards understanding the fundamental technical dimensions that contribute
to the many and varied notions of an application's functional size. How can we
hope to measure something when we can’t even precisely define what
that something is? Empiricism holds some promise as a means to improve software
development practices, but the pseudo-empiricism of Function Point Analysis is
little more than numerological voodoo.

1 The Skeptic’s Dictionary, R. Carroll, Wiley and Sons, 2003. <http://www.skepdic.com/>
2 Did Adam and Eve Have Navels?, M. Gardner, W.W. Norton and Company, 2000
3 <http://www.ifpug.org/>
4 Software Measurement: A Necessary Scientific Basis, N. Fenton, IEEE Trans. Software Eng., Vol. 20, No. 3, 1994
5 The Problem with Function Points, B. Kitchenhas, IEEE Software, March/April 1997
6 Statistical Guidelines for Contributors to Medical Journals, Altman, Gore, Gardner, Pocock, British Medical Journal, Vol. 286, 1983
7 Why We Should Use Function Points, S Furey, IEEE Software, March/April 1997
8 Comparison of Function Point Counting Techniques, J.Jeffery, G. Low, M. Barnes, IEEE Trans. Software Eng., Vol. 19, No. 5, 1993
9 Measurement and Estimation, Burris
10 <http://www.agilemanagement.net/Articles/Weblog/WorldClassVelocity.html>
