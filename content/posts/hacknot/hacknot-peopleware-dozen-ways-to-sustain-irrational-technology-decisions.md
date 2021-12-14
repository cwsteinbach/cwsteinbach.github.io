+++
title = "A Dozen Ways to Sustain Irrational Technology Decisions"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:33:54-08:00
draft = false
+++

External observers often think of programmers as being somewhat cold and
emotionless. Because our day-to-day activities are largely analytical in nature,
it has become a part of the developer stereotype that we are dispassionate and
rational in our manner and decision making. Those who have watched programmers
up close for any length of time will know that this is far from the case. I
believe that emotion plays a far larger part in IT decision making than many
would be willing to admit. Frequently developers try and disguise the emotive
nature of their thinking by retrospectively rationalizing their decisions, but
not being well-skilled in interpersonal communication, are often unconvincing.
If you've ever witnessed or taken in part in a technological "holy war", then
you'll already have witnessed the unhealthy way that stances held by emotional
conviction can be misrepresented as being the result of rational analysis.


## The Causes {#the-causes}


### Novelty {#novelty}

The majority of irrational technical selections I've seen have their origin in a
senior techie's fascination with a new technology. For an uncommon number of
developers, the lure of an untried API or the novelty of a new development model
is simply irresistible. Such folks seem to be focused on the journey rather than
the destination – which is philosophically delightful but practically
frustrating. The urge to play with a new toy seems to overwhelm the ability to
rationally evaluate a technology on its merits, as if it's "newness" excused any
faults and weaknesses it might have. There seems to be a strong "grass is
greener" effect at work here. The weaknesses of existing technologies are known
because they have been teased out by the development community's experience with
it. But a new technology has an unblemished record. The absence of community
experience means that no one has encountered its inevitable flaws, or pushed the
boundaries of its capabilities. Psychologically, it is easy to be drawn to the
new technology based on the implied promise of perfection, as compared to the
manifest imperfections of current technologies.


### Ego {#ego}

Programmers are not a group lacking in self-confidence; at least when it comes
to technical matters. In fact, the intellectual arrogance of some can be quite
stunning. For those with decision-making authority, the burden of ego can be a
substantial liability. A technology selection based solely upon technical merit
is easily defended by dispassionate reference to facts, but once the outcome is
identified with the individual who made it, ego comes into play. Any challenge
to the decision tends to be interpreted as a challenge to the authority of the
decision maker. Any criticism of the selected technology tends to be emotionally
defended, because the party who selected it feels that fault is being found with
them personally. They are likely also sensitive to the potential for injury to
their image and reputation that might come from being responsible for a poor
technology decision. It is difficult to retain status as the alpha geek when you
are known to have made poor technical decisions. Managers, in particular, are
acutely aware of the way their behavior and ability is perceived by others.
Having been drawn in by the false promises of glossy product brochures, the
misinformed technical manager is poorly positioned to subsequently defend
technology decisions. Such managers are frequently those to be found most
passionately and aggressively defending their decisions.


### Fashion {#fashion}

An alarming number of developers seem to be slaves to technical fashion. Plagued
by a "gotta get me some of that" mentality, the arrival of almost any new
product or development tool is accompanied by an almost salivatory response.
They rush to evaluate the new offering and to share their experiences with
like-minded others who also like to be at the leading edge. These programmers
fit well and truly into the "early adopter" category, or as I like to call them
"crash test dummies." Like their mannequin counterparts, they are forever
running head long into collisions – in this case, with technologies.
By observing the results, the rest of us can learn from their often hard-won
experiences, without having to suffer the frequent injuries that tend to result.


### Ideology {#ideology}

As frequent as it is unrecognized, ideological conviction seems to be a major
driver behind many technology decisions. Many developers remain convinced that
open source software will save the world, enable black and white peoples to live
in racial harmony, cure cancer and eliminate hunger and poverty. They may be
right, but none of these are rational reasons to select a particular offering
over a proprietary alternative for a particular commercial application. But for
many, it is automatic and unquestioned that open source software is the way to
go, as a matter of moral imperative, regardless of the merits or otherwise of
that software.


## The Techniques {#the-techniques}

Once the commitment to a particular technology has been publicly made, its
proponents must then be prepared to defend their decision in the light of any
negative development experience. If the technology was selected for irrational
reasons, then those identified with its selection must now become apologists for
the technology, seeking to minimize and quash any information that might reflect
poorly on the technology and transitively, upon themselves.

Here are twelve techniques I have seen used to sustain a bad technology decision
in the face of experience that puts that technology's selection in doubt

1.  Deny That Negative Experiences Exist

This is a common technique amongst the "kick ass" school of management. When
faced with evidence that casts your technology selection in an unfavorable
light, simple deny that the evidence exists. Even if someone can demonstrate to
you first hand the problems that have been encountered, you can employ a "shoot
the messenger" approach to distract attention away from the evidence being
presented, and put the messenger on the defensive. You will need to be in a
position of sufficient authority, and surrounded by suitably spineless
colleagues, to make "black is white" declarations hold fast and create a
localized reality distortion zone. It may sound fantastic, but in practice it is
quite common for authority to usurp reality.

It is not a technique unique to the IT profession. In his memoirs "Inside the
Third Reich", Albert Speer relates a situation in which Hermann Göering
employed exactly this technique. When Göering was advised that American
fighters had began to encroach upon German skies, he refused to accept the
report, despite being presented with irrefutable evidence by one of his
generals. He simply issued an official order stating that nobody had seen any
fighters.

1.  Claim "We'll Fix It Ourselves"

When an open source product is selected but ultimately found wanting, the "we
can fix it ourselves" apology is often the first one that is trotted out. The
availability of the source code means that you can ostensibly patch the product
yourself, submit that patch to the open source project, and then carry on.
Whenever a colleague finds a bug in the technology, just dismiss their
complaints with the directive to "just fix it yourself", and the problem will go
away ... for you, anyway.

1.  Claim That Bugs Are Intellectual Property

This is a sneaky but effective one. Make it known to your colleagues that they
cannot report any problems they find with the new technology to the vendor (or
the community, in the case of open source software) as that would equate to
divulgence of information that has been gathered at company expense. In the
strictest sense, the knowledge of the bug’s existence is the
company's intellectual property. Exactly what kind of intellectual property it
is, is open to question. It could be "confidential", but it seems doubtful that
it is of enough significance to possess the necessary "quality of confidence".
In any case, it doesn't really matter. You can rely upon others being
sufficiently intimidated by the implied threat of prosecution for IP
infringement to remain silent.

1.  Claim "It Will Be Fixed In The Next Release"

This piece of misdirection can be used to postpone problems almost indefinitely.
It is particularly handy for products that are on a short release cycle, as the
promise of a fix is always just around the corner (and with it, the potential
for the introduction of new bugs – but ignore that). If the bug is
not actually fixed in the next release, then it's hardly your fault. Blame the
vendor, blame the development community, lament the state of software
development in general ... do anything to divert attention away from the
original source of the technology's selection.

1.  Make The Bug Reporting Process Unwieldy And Onerous

A worthwhile bug report takes a bit of effort to produce. Sample code,
screenshots and instructions to reproduce the buggy behavior are all part of a
conscientiously compiled bug report. But if that is all that is required, there
will be some developers willing to take the time to write them. You can make the
lodging of a bug report more daunting by requiring developers to lodge an entire
specification of the desired (non-buggy) behavior, including requirements, a
mock-up or prototype, design specification and test specification. This can take
days. They'll quickly learn that it's simply not worth the effort to report bugs
via such a lengthy process, and to move directly from discovery of a bug to the
search for workarounds or alternative approaches.

1.  Claim "It Works For Me"

An indirect form of denial exists in claiming that you have been unable to
reproduce the bug yourself, so the complainant must be doing something wrong.
Due to the almost unlimited potential for interactions between software
components, libraries and operating system functions, it is easy to simply point
somewhere in the direction of this programmatic thicket and declare "the
problem's probably in there."

1.  Appeal To Non-Quantifiable Benefits Yet To Be Realized

If enough difficulties are encountered with your chosen technology, it's only a
matter of time until someone starts suggesting alternatives. When your opponents
open fire with the feature list of their favorite competing technology or
product, you need a reply. It is best to appeal to non- quantifiable and
non-functional benefits as it is impossible to prove that they have not been
realized. "Flexibility" and "maintainability" are a few non-functional favorites
that you can claim are being realized by your technology selection, regardless
of what the reality may be.

1.  Employ The Power Of Standards

A technology that has been embodied in a standard already has a significant head
start on non-standardized competitors. If the standard is one that has been
accepted by major vendors as a basis for their own product offerings, then all
the better. The psychological principal being appealed to here is that of
"social proof" - the belief that popularity is indicative of worth. Indeed,
widespread acceptance of a standard (or a technology implementing a standard) is
unlikely to occur if the notion is completely without value, but there is no
guarantee of you achieving the same success in your own context as others have
achieved in theirs. However, many will ignore the need to consider
application-specific issues in deciding the merit of a technology. If IBM,
Microsoft or some other big name says it's good, then it must be good - for
everyone, all the time, regardless of what the constraints of their particular
problem may be. To appreciate how seductive this faulty reasoning can be,
consider how many times you've seen a J2EE application that was written simply
for the sake of using J2EE, even though there was no real need for a solution
with a distributed architecture.

1.  Maximize Investment

One of the best ways to get a technology on a solid foothold in your
organization is to maximize your investment in it as quickly as possible. This
can be achieved by forward-scheduling tasks that use the technology the most, so
that the number of hours invested in using it accrue quickly. You might justify
this by presenting the host project to management as a "pilot" of some sort,
where the technology is being evaluated on its merits. But so long as you can
silence any negative findings that might emerge from that ersatz "evaluation",
you are also strengthening the project's commitment to the continued use of that
technology. What project wants to incur the schedule burden of having to swap
technologies and re- implement those parts of the project based upon the now
defunct technology? If you can just suppress criticism for long enough, the
project will soon reach a point of no return, after which it becomes infeasible
to make technology changes without incurring an unacceptable schedule penalty.

The bigger a company's financial investment in a technology, the more reticent
it will be to discard it. So you will find it easier to keep expensive
technologies in use. You can increase expenditure by purchasing entire product
suites, or choosing products so complex that you can justify hiring highly paid
consultants to tailor them to your project environment or teach your staff how
to use them. Once all that time and money has been invested, it will become
extremely difficult for anyone to abandon the technology due the financial
inertia it has acquired.

1.  Exclude The Technically Informed From The Decision Making

As a self-appointed evangelist for your chosen technology, your worst enemy is
the voice of reason. The technology's inability to fulfill the promises its
vendor makes should be no obstacle to its adoption in your organization
– and indeed, it won't be, so long as you can keep those who make the
decisions away from those who know about the technology's failings. Let their be
no delusion amongst your staff and colleagues that it is management's purview to
make these decisions, and the techie’s job to implement their
decision. Some will try and argue that those who know the technology most
intimately (technical staff) are in the best position to judge its value. Assure
them that this is not so and that only those with an organizational perspective
(management) are in a position to assess the technology's "fit" with the
corporate strategy. Allude to unspoken factors that influence the decision to
use this technology, but are too sensitive for you to discuss openly
(conveniently making that decision unassailable).

1.  Sell The Positives To Upper Management, Hide The Negatives

Question: How does a fish rot? Answer: From the head down.

If you can get those in senior management to develop some identification with
the technology then you will have made some powerful allies. Assuming they are
technically uninformed, make your management a sales pitch for the technology in
which you emphasize all the positives and completely neglect the negatives. Give
them glossy brochures advocating the technology, and appeal to their
competitiveness by providing testimonials from big-name managers, as if to
suggest "this technology is what the best managers are getting behind"; the
implication being that your own management are not amongst "the best" unless
they follow suit. The ego-driven push from above is almost impossible to counter
with a factual push from below. Authority trumps reason in many organizations.

1.  Put A Head On A Pike

It is part of the barbarian tradition to place a head on a pike at the entrance
to your domain, to warn those approaching of the fate that awaits them if they
don't follow the rules. It's crude, but undeniably effective. Actual
decapitation is frowned upon in most office environments, but you can still put
a figurative "head on a pike" to make it clear to others that dispute over your
chosen technology will not be tolerated. If you have the authority, firing
someone who expresses a dissenting opinion should be adequate to ensure the
remaining staff fall into line. Otherwise, some form of public humiliation
– a verbal dressing down in a common area of the office, for instance
– will have to do. In either case, it is important that you adopt
some pretense for your actions that is not directly related to the issue of
technology selection. Unfair dismissal laws being what they are, you need to be
a bit careful here. Witnesses will know, however, from the greater context that
the real reason for this retribution is the target's opposition to the
technology decision you made, and will make a note to themselves not to express
their own concerns about the technology, lest they also be made an example of.


## Conclusion {#conclusion}

IT managers, developers and other technical staff are no less susceptible to
self-deception and political ambition, simply because they work in a field in
which analytical thought is traditionally valued. When it comes to the selection
of a technology from a field of competitors, the complexity and number of
factors to consider often leads to a tendency to abandon detailed, rational
analysis and make decisions on an arbitrary, emotive basis. If the technology
selected fails to live up to its promise, those who selected it then face the
difficult task of rationalizing its continued usage, lest their decision be
overturned and they lose face as a result. By employing one or more of the
techniques identified above, a skilful manager or senior technician can avoid
this embarrassment and force the continued usage of an unsuitable technology,
while they work by other means to distance themselves from the original
decision.
