+++
title = "The Deflowering of a Pair Programming Virgin"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:36:21-08:00
draft = false
+++

In your readings of the voluminous XP canon, you will no doubt have encountered mention of the practice of Pair Programming1. If, like me, you are of a solitary disposition, you will have found yourself thinking – nice idea, but not for me.

Many of us are attracted to software development as a career because we enjoy the experience of solitary problem solving. We relish those times when we are "in the zone" – where our locus of concern narrows to exclude everything but ourselves, the keyboard and the problem at hand. This state can produce a feeling of mild euphoria, and gives us a place of retreat from the worries and concerns of our immediate environment.

The practice of Pair Programming puts an end to all of this. The problem solving medium moves from an interior dialogue to an exterior one. The silence we traditionally associate with deep thought and focused effort is replaced with the interaction and debate we more usually expect from a meeting or brainstorming session.
It was with some trepidation then that I recently accepted an offer from a colleague to engage in some Pair Programming as a way of extending my knowledge of certain subsystems of our application in which he had a greater degree of involvement than myself. The activity lasted about four days – long enough to complete the implementation and testing of a minor system feature in its entirety. The experience was an interesting one, but on the whole, not one that I'd care to repeat with any regularity.

Pair Programming studies so far conducted have tended to originate from academic environments, and so focus on novice-novice pairings amongst students. It is not clear that their findings translate into a commercial programming context staffed by more mature professionals. By contrast, myself and the colleague I paired with have been doing whatever it is that we do for 10+ years each. In the period described herein, we sat together for approximately six hours on each day, using the same person's computer each time.

Following is a point-form summary of my experiences over this period, both positive and negative.


## Positives {#positives}

• When pairing, one programmer keeps the other from goofing off and wasting time web surfing etc.
• Youtendtobemorediligentintheconstructionofunittestsandmore careful in general when you know that someone is watching you and looking for error. Also, as a matter of professional pride, you don’t want to be seen to be hacking by a colleague.
• ThequalityofcodeproducedismarginallybetterthanIwouldachieve at a first cut when coding individually.
• When two people have participated in the construction process, familiarity with the code is spread further amongst the team members which mitigates the dependence upon any individual. If there is no external documentation, it may be more efficient to acquire familiarity with a piece of code on this basis, than by the alternative – reverse engineering.
• Thereistheopportunitytopickuptricksandshortcutsfromwatching someone else go about the arcana of their job (e.g. learning to use IDE features that you were previously unaware of).
• Mistakes are picked up more quickly due to the overseeing of one's partner.


## Negatives {#negatives}

• The constant interaction is very tiring. Most days I went home absolutely exhausted from the enervating effect of continuous dialog, and frequently with a headache.
• There is a lot of noise produced, which tends to disturb those in the surrounding area. A room full of pair programmers, as advocated by XP, would be very noisy indeed.
• There are numerous ergonomic problems when two people share a computer. My colleague prefers a conventional keyboard with international settings activated (he is bilingual), a trackball and a medium screen resolution. I prefer a split keyboard, no extended character set capability, a wheelie mouse and a slightly higher screen resolution. We had to swap hardware whenever we "changed drivers," which was annoying. Had our preferences in screen resolution not been similar, working from the one VDU could have been impossible (for example, if one of us had low vision).
• There is a lot of "pair pressure" created from having someone watching every character you type. It tends to produce a self- consciousness that is inhibiting and constitutes a low-level and constant stressor.
• There is a tendency to feel constantly under time pressure when typing, because someone is waiting for your every keystroke. This produces a certain degree of "hurry up" sickness, which discourages any delay in doing more typing, such as that produced by thoughtful consideration of design issues.
• Groupthink can occur, even when there are only two people in the group. When you are working so closely with another, you are very wary of argument or disagreement, lest it sour the working relationship. Therefore people tend to agree too readily with one another, and seek compromise too quickly. Whoever chimes in first with a suggestion is likely to go unopposed.
• Timespentawayfromone’spairpartnertendstobenon-productiveas your thoughts are dominated by the task the pair is currently tackling. This makes it difficult to effectively interleave other tasks with an extended Pair Programming session.
• Both myself and my colleague concede that we work in a different way when pairing than when working individually. Alone, our work patterns tends to consist of short bursts of productivity, separated by periods of mental slouching, by way of recuperation and cogitation. When pairing, those intermittent rest breaks are removed for fear of hindering someone else’s progress, and because the low level details of different people’s work habits will be unlikely to exactly coincide.


## Conclusions {#conclusions}

From this brief experience in Pair Programming it seems clear to me that the appeal (and therefore success) of the practice is likely to vary significantly between individuals. More gregarious programmers may enjoy the conversation and teaming effects, whereas more introverted programmers will find the constant interaction draining.

I am particularly interested to note that reports of Pair Programming experiences commonly available through the media tend to have a positive reporting bias. Experience reports of the form "we tried pair programming and we loved it" are not difficult to come by 2(which is not to say they are significant in number, but simply that a few studies are very frequently cited), but anecdotes that end "... and then he resigned because he couldn’t bear the constant pair programming" are not as readily available. (for some of these, see the soon-to-be-reviewed-on-Hacknot "Extreme Programming Refactored: The Case Against XP").3

I don’t believe my take on Pair Programming is likely to be singular. My personality type and communication preferences are not at all uncommon amongst developers. In Myers-Briggs terms I am an ISTJ4, which is the most common personality type in the IT industry. I believe that many developers will find Pair Programming to be a difficult and ultimately unsustainable work practice – one that removes from their work day some of the basic elements that first attracted them to their occupation.

For a pairing of mature developers, I believe the effect on code quality is vastly overstated amongst the XP community. That there is some marginal improvement in the quality of the code when first cut seems clear. That this improvement justifies the investment of effort required to produce it, or that it could not be obtained more efficiently through regular code review techniques, is not at all clear.

Finally, I believe that Pair Programming is a very inefficient way to share knowledge amongst team members. The total man hours invested in doubling up can result in at best two people being familiar with the code being worked on. A good design document could guide an arbitrary number of future developers to an equivalently detailed understanding of the code, saving the expense of continual, unassisted reverse engineering on their parts.


## Addendum {#addendum}

Shortly after posting this, a reader asked for the basis of my statement that ISTJ is the most common personality type in the IT industry. The findings of two large studies are relevant here, both of which I found referenced in "Professional Software Development", Steve McConnell, Addison Wesley, 2004, p63:

• "Effective Project Teams: A Dilemma, a Model, a Solution," Rob Thomsett, American Programmer, July-August 1990, pp.25-35
• "The DP Psyche," Michael L. Lyons, Datamation, August 15, 1985, pp. 103-109
McConnell cites these two studies as finding the most common personality type for software developers to be ISTJ. My statement generalizes this conclusion to the entire IT industry, which is obviously unwarranted.
McConnell cites further studies from Thomsett, Lyons, Bostrom and Kaiser as finding that ISTJs comprise 25-40 percent of all software developers.
1 <http://www.pairprogramming.com/>
2 <http://www.cs.utah.edu/~lwilliam/Papers/ieeeSoftware.PDF>
3 <http://www.hacknot.info/hacknot/action/showEntry?eid=23>
4 <http://www.typelogic.com/istj.html>
