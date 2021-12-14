+++
title = "Great Mistakes in Technical Leadership"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:34:58-08:00
draft = false
+++

“If you are a good leader who talks little, they will say when your
work is done and your aim fulfilled, ‘We did it
ourselves.’” – Lao-Tse, cited in 1

Perhaps the most difficult job to do on any software development project is that
of Technical Lead. The Technical Lead has overall responsibility for all
technical aspects of the project – design, code, technology
selection, work assignment, scheduling and architecture are all within his
purview. Positioned right at the border of the technical and managerial, they
are the proverbial "meat in the sandwich." This means that they have to be able
to speak two languages – the high-level language of the project
manager to whom they report, and the low-level technical language of their team.
In effect, they're the translator between the two dialects.

Observation suggests that there are not that many senior techies who have the
skills and personal characteristics necessary to perform the Technical Lead role
well. Of those I have seen attempt it, perhaps ten percent did a good job of it,
twenty percent just got by, and the remaining seventy percent screwed it up.
Therefore most of what I have learnt about being a good Technical Lead has been
learnt by counter-example. Each time I see a Technical Lead doing something
stupid, I make a mental note to avoid that same behavior or action when I am
next in the Technical Lead role.

What follows is the abridged version of the list of mistakes I have assembled in
this manner over the last thirteen years of watching Technical Leads get it
wrong. It is my contention that if you can just avoid making these mistakes, you
are well on your way to doing a good job as a Technical Lead. You might consider
it a long-form equivalent of the Hippocratic Oath "First do no harm," although
given the self-evident nature of many of these exhortations, it is more like
"First do nothing stupid."


## Mistake #0: Assuming The Team Serves You {#mistake-0-assuming-the-team-serves-you}

Perhaps the most damaging mistake a Technical Lead can make is to assume that
their seniority somehow gives them an elevated status in their organization.
Once their ego gets involved, the door is open to a host of concomitant miseries
such as emotional decision making, defensiveness and intra-team conflict.

I can't emphasize enough how important it is to realize that although the
Technical Lead role brings with it many additional responsibilities, it does not
put you "above" the other team members in any meaningful sense. Rather, you are
on an exactly equal footing with them. It's just that your duties are slightly
different from theirs.

If anything, it is you that is in service of them, given that it is part of your
role to facilitate their work. To put it another way, you are there to make them
look good, not the other way around.


## Mistake #1: Isolating Yourself From The Team {#mistake-1-isolating-yourself-from-the-team}

In some organizations, having the title of Technical Lead gives you entitlements
that the rank and file of your team do not enjoy. Sometimes, the title is
considered sufficiently senior to entitle you to an office of your own, or at
least a larger workspace if you must still dwell in cubicle land.

It is a mistake to take or accept such perquisites, as they serve to distance
you (both physically and organizationally) from the people that you work most
closely with. As military leaders know, it creates an artificial and ultimately
unhealthy class distinction between soldiers and officers if the latter are
afforded special privileges. To truly understand your team's problems and be
considered just "one of the guys" (which you are), you need to be in the same
circumstances as they are.


## Mistake #2: Employing Hokey Motivation Techniques {#mistake-2-employing-hokey-motivation-techniques}

Different sorts of people are motivated by different sorts of rewards.
Programmers and managers certainly have very different natures, yet it is
surprising the number of managers and aspiring managers who ignore those
differences and try to reward technical staff in the same way they would like to
be rewarded themselves.

For example, managers value perception and status, so being presented with an
award in front of everyone, or receiving a plaque to display on their wall where
everyone can see it, may well be motivating to them. However programmers tend to
be focused on the practical and functional, and value things that they can use
to some advantage. Programmers regard the sorts of rewards that managers
typically receive as superficial and trite. They have a similar view of "team
building" activities, motivational speeches and posters and the like.

So if you want to motivate a developer, don't start cheering "Yay team" or force
him to wear the team t-shirt you just had printed. Instead, give him something
of use. A second monitor for his computer will be well received, as will some
extra RAM, a faster CPU, cooler peripherals, or a more comfortable office chair.
It's also hard to go wrong with cash or time off.

Developers are also constantly mindful of keeping their skill sets up to date,
and so will value any contribution you can make to their technical education.
Give them some time during work hours to pursue their own projects or explore
new technologies, a substantial voucher from your local technical book store, or
leave to attend a training course that interests them – it doesn't
have to be something that bears direct relationship to company work, just as
long as it has career value to them.


## Mistake #3: Not Providing Technical Direction And Context {#mistake-3-not-providing-technical-direction-and-context}

A common mode of failure amongst Technical Leads is to focus on their love of
the "technical" and forget about their obligation to "lead." Leading means
thinking ahead enough that you can make informed and well- considered decisions
before the need for that decision becomes an impediment to team progress.

The most obvious form of such leadership is the specification of the software's
overall architecture. Before implementation begins, you should have already
considered the architectural alternatives available, and have chosen one of them
for objective and rationally defensible reasons. You should also have
communicated this architecture to the team, so that they can always place the
units of work they do in a broader architectural context. This gives their work
a direction and promotes confidence that the team’s collective
efforts will bind together into a successful whole.

A Technical Lead lacking in self-confidence can be a major frustration to their
team. They may find themselves waiting on the Lead to make decisions that
significantly effect their work, but find that there is some reticence or
unwillingness to make a firm decision. Particularly when new in the role, some
Technical Leads find it difficult to make decisions in a timely manner, for they
are paralyzed by the fear of making that decision incorrectly. Troubled that a
bad decision will make them look foolish, they vacillate endlessly between the
alternatives, while their team-mates are standing by wondering when they are
going to be able to move forward. In such cases, one does well to remember that
a good enough decision now is often better than a perfect decision later.
Sometimes there is no choice amongst technical alternatives that jumps out at
you as being clearly better than any other – there are merely
different possibilities, each with pros and cons. Don't belabor such decisions
indefinitely. In particular, don't hand over such decisions to the team and hope
to arrive at some consensus. Such consensus is often impossible to obtain. What
is most important is that you make a timely decision that you feel moderately
confident in, and then commit to it. If all else fails, look to those industry
figures whose opinions you trust, and follow the advice they have to give.

Finally, always be prepared to admit that a decision you've made was incorrect,
if information to that effect should come to light. Some of the nastiest
technical disasters I've witnessed have originated with a senior techie with an
ego investment in a particular decision, who lacks the integrity necessary to
admit error, even when their mistake is obvious to all.


## Mistake #4: Fulfilling Your Own Needs Via The Team {#mistake-4-fulfilling-your-own-needs-via-the-team}

You will occasionally hear people opine that one should not let the personal
interfere with the professional. In other words, difficulties at home should not
interfere with the execution of duties in the workplace. In some environments,
the obvious expression of emotion is simply taboo. But such ideas don't mesh
with reality too well. People are holistic creatures and our life experience is
not so conveniently compartmentalized, no matter how desirable some Taylorist
ideal may be.

Just the same, there are practical and social limitations upon workplace
behavior which some may be tempted to flaunt, to the discomfort and
embarrassment of their colleagues. The broader one's influence, the greater the
opportunity to co-opt activities that should be focused on work, and turn them
to personal effect.

For example, meetings (complete with buffet) make a fine social occasion for
those not concerned with making best use of company time. Team-building
exercises provide an easily excused opportunity to get away from the office and
out into the sun, as do off-site training courses and conferences.

Pair programming seems to be most appealing to those who like to chat about
their work ... continually. An excessive focus on group consensus- based
decision-making for all technical aspects of the project, even the trivial ones,
may be a sign that a Technical Lead is more concerned with the sociology of the
project and their place amongst it, than with leadership and making efficient
use of people's time and effort.


## Mistake #5: Focusing On Your Individual Contribution {#mistake-5-focusing-on-your-individual-contribution}

Changing roles from developer to Technical Lead requires a certain adjustment in
mindset. As a developer you tend to be focused upon individual achievement. You
spend your time laboring on units of work, mainly by yourself, and can later
point to these discrete pieces of the application and say, with some
satisfaction, "I did that."

But as a Technical Lead your focus shifts from individual achievement to group
achievement. Your work is now to facilitate the work of others. This means that
when others come to you for help, you should be in the habit of dropping
everything and servicing their requests immediately. A fatal mistake some
Technical Leads make is to try and retain their former role as an individual
contributor, which tends to result in the Technical Lead duties suffering, as
they become engrossed in their own problems and push the concerns of others
aside.

The constant alternation between helping individuals with low-level technical
problems and thinking about high-level project-wide issues is very cognitively
demanding. I've come to call the problem "zoom fatigue" - the mental fatigue
which results from rapidly changing between the precise and the abstract on a
regular basis. It's like the physical fatigue that the eye experiences when
constantly switching focus from long distance to short distance. The muscular
effort required within the eye to change focal length eventually leads to
fatigue, making the eye less responsive to subsequent demands. Similarly, you
get cognitive fatigue when in one moment you are helping someone with an
intricate coding issue, and in the next you're examining the interaction between
subsystems at the architectural level. The latter requires a more abstract
mental state than the former, and alternating between the two is quite taxing.

As a result, people may come to you seeking help with something that has been
the sole focus of their attention for several hours or days, and you will find
it difficult to "task switch" from what you were just doing into a mindset where
you can discuss the problem with them on equal terms. I find it helpful to just
ask the person to give me ten minutes to get my head into the problem space,
during which I might retreat to my own machine and study the problem body of
code in detail, before attempting to help them with it.


## Mistake #6: Trying To Be Technically Omniscient {#mistake-6-trying-to-be-technically-omniscient}

Just because you have the last word in technical decisions, don't think that it
is somehow assumed that you are the programming equivalent of Yoda. With the
variety and complexity of development technologies always growing, it is
increasingly difficult to maintain a mastery of any given subset of that domain.
As in most growing fields, those who call themselves "expert" will progressively
know more and more about less and less.

It is therefore entirely possible that you will be learning new technologies at
the same time as you are first applying them. The mistakes you make and the gaps
in your knowledge will be abundantly obvious to your team members, so it is best
to abandon at the outset any pretext of having it all figured out.

Be open and honest about what you do and don't know. Don't try and overstate or
otherwise misrepresent the extent and nature of your familiarity with a
technology, for once you are found out, the trust lost will be very difficult to
regain.

There is an opportunity here to widen the knowledge and experience of all team
members. You might like to appoint certain people as specialists in particular
technologies, giving them the time and task assignments necessary to develop a
superior knowledge of their assigned area. To avoid boredom and unnecessary
risk, be sure to give these resident experts plenty of opportunity to spread
their knowledge around the team, and to exchange specialties with others.

Adopting this "collection of specialists" approach makes it clear that you are
not presuming to be all things to all people; and that you have faith in the
abilities of your colleagues. But it will require you to park your ego at the
door and be prepared to say "I don't know" quite frequently.

But be careful not to lean on others too heavily. It is still vitally important
for you to have a good overarching knowledge of the technologies you are
employing, particularly those elements of them that are critical to their
successful interoperation in service of your system’s architecture.


## Mistake #7: Failing To Delegate Effectively {#mistake-7-failing-to-delegate-effectively}

To successfully lead a group, there must be an attitude of implicit trust and
assumed good intent between the leader and those being led. Therefore a
Technical Lead must be willing to trust his team to be diligent in the pursuit
of their goals, without feeling the need to watch over their shoulder and
constantly monitor their progress. This sort of micromanagement is particularly
loathed by programmers, who recognize it as a tacit questioning of their
abilities and commitment.

But ineffective delegation can also arise for selfish reasons. Several times now
I've seen Technical Leads who like to save all the "fun" work for themselves,
leaving others the tedious grunt work. For example, the Technical Lead will
assign themselves the task of evaluating new technologies, constructing
exploratory and "proof of concept" prototypes, but once play time is over and
the need for disciplined work arrives, hand over the detailed tasks to others.

Not only is effective delegation desirable with respect to team morale and
project risk, on large projects it is simply a necessity, as there will be too
much information to be managed and maintained at once for one person to be able
to cope.


## Mistake #8: Being Ignorant Of Your Own Shortcomings {#mistake-8-being-ignorant-of-your-own-shortcomings}

Some people simply don't have the natural proclivities necessary to be good
Technical Leads. It's not enough to have good technical knowledge. You must be
able to communicate that knowledge to others, as well as translate it into a
simpler form that your management can understand.

You also need good organizational skills. Coordinating the efforts of multiple
people to produce a functionally consistent outcome is not easy, and demands a
methodical and detail-oriented approach to planning and scheduling. If you can't
plan ahead successfully, you will find yourself constantly in reactive mode,
which is both stressful and inefficient.

If you don't have these qualities naturally, you may be able to develop them to
some extent, through training and deliberate effort. But it may ultimately be
necessary for you to lean on others in your team to support you, should they
have strengths in areas in which you have weaknesses.


## Mistake #9: Failing To Represent The Best Interests Of Your Team {#mistake-9-failing-to-represent-the-best-interests-of-your-team}

Perhaps the most nauseating mistake a Technical Lead can make is to become a
puppet of the management above them. As the interface between management and
technicians, it is the Technical Lead's role to go into bat with their
management to represent the best interests of their team. This means standing up
to the imposition of unreasonable deadlines, fighting for decent tools and
resources, and preventing the prevarications of management from disturbing the
rhythm of the project. A weak-willed or easily manipulated Technical Lead will
incur the disrespect of his team.

Unfortunately, such spineless behavior is quite common amongst the ranks of the
ambitious, and you don't have to look far to find obsequious Technical Leads who
will gladly promise the impossible and impose hardship on their team, in the
interests of creating a "can do" image for themselves.


## Mistake #10: Failing To Anticipate {#mistake-10-failing-to-anticipate}

An essential part of the Technical Lead's role is keeping an eye on the "big
picture" – those system-wide concerns that are easily forgotten by
programmers whose attention is consumed by the coding problem they currently
face.

These "big picture" issues include those non-functional requirements sometimes
called "-ilities" - maintainability, reliability, usability, testability and so
on. If you don't make a conscious effort to track your progress against these
requirements, there is a high probability of them slipping through the cracks
and being forgotten about until they later emerge as crises.

If you don't have a dedicated project manager, it may also fall to you to handle
the scheduling, tracking and assignment of tasks. It isn't uncommon for
Technical Leads to find themselves playing dual roles in this manner. You may
not be very fond of such "administrative" duties, but their efficient
performance is critical to the smooth running of the project, and for the
developers to know where they are and where they're going. Don't make the
mistake of ignoring or devaluing these tasks simply because they are
non-technical in nature.


## Mistake #11: Repeat Mistakes Others Have Already Made {#mistake-11-repeat-mistakes-others-have-already-made}

It is common for developers to dismiss the experience reports of others as
having no relevance to their own situation. Indeed, it is wise to approach all
anecdotal evidence with skepticism. But it is unwise to completely disregard the
advice of others, particularly when it is accompanied by sound reasoning, or can
be independently verified. Ignoring good advice can be very expensive; as
Benjamin Franklin said, "Experience keeps a dear school but fools will learn in
no other."

The unwillingness of developers to learn from the mistakes of others, and the
ease with which you can encounter software project horror stories in the
literature and recognize your own projects in them, is evidence suggesting that
the software industry as a whole is not getting any wiser.2 You need not
contribute to that collective stupidity.


## Mistake #12: Using The Project To Pursue Your Own Technical Interests {#mistake-12-using-the-project-to-pursue-your-own-technical-interests}

Remarkably, developers can reach quite senior levels in their organization
without having learnt to appreciate the difference between work and play. Many
are attracted to programming to begin with because, as hobbyists, they enjoyed
fooling around with the latest and greatest technologies. Somehow they carry
this tendency to "play" with technologies into their working lives, and it
becomes the aspect of their jobs that they value most. From their perspective,
the purpose of a development effort is not to create something of value to the
business, but to create an opportunity to experiment with new technologies and
pad their CV with some new acronyms.

Their technology selection is based upon whatever looks "cool". But a rational
approach to technology selection may yield quite a different result to one
guided by technical enthusiasm or a fascination with novelty. New technologies
are often riskier choices, as the development community has not had much time to
apply the technology in varying circumstances and thereby discover its
weaknesses and shortcomings. Putting an immature technology on a project's
critical path is especially risky. So an older, tried and true technology may be
a more rational choice than a new, unproven one.


## Mistake #13: Not Maintaining Technical Involvement {#mistake-13-not-maintaining-technical-involvement}

In order to fully appreciate the current status of the project as well as the
difficulties your team is facing, it is vital that you maintain a coding-level
involvement in the project. If you're not cutting code, it is too easy to become
divorced from the effects of your own decision making, and to be seen by other
developers as being out of touch with the technical realities of the project.


## Mistake #14: Playing The Game Rather Than Focusing On The Target {#mistake-14-playing-the-game-rather-than-focusing-on-the-target}

In some organizations, being a Technical Lead is a politically sensitive
position. Technology choices, work assignments and project outcomes are all just
tools to be used in the pursuit of personal agendas. To some, this "game" of
political influence is both fascinating and addictive. They play it in the hope
of gaining some advantage for themselves, and do so to the detriment of the
project and the individuals upon it. When they don't have their eye on the ball
like this, devoting more energy to Machiavellian maneuverings than to the
technical difficulties of the project, then the project inevitably suffers.


## Mistake #15: Avoiding Conflict {#mistake-15-avoiding-conflict}

Many people find interpersonal conflict distasteful. Some dislike it so much
that they will do practically anything to avoid it, including giving up in
technical disputes. Such people are prone to being walked over by those more
aggressive and forthright.

This is bad enough for the individual, but worse if that person is meant to be
representing the best interests of a team. A meek Technical Lead can be a real
liability to a development team, who will find themselves buffeted about by
external forces that they should have been shielded from, and burdened by
demands and goals that are not informed by the project's reality.

With such a disposition, a Technical Lead may be unable to even deal effectively
with unruly behavior or inadequate performance from members of their own team.


## Mistake #16: Putting The Project Before The People {#mistake-16-putting-the-project-before-the-people}

It's one thing to be focused on the project's goals, but quite another to adopt
a "succeed at all costs" attitude. Ambitious Technical Leads, concerned with the
image they project to their management, sometimes accept impossible goals or
unreasonable demands, because they lack the courage or integrity to say "no."
These goals then become the development team's burden to shoulder, leading to
increased stress, higher defect injection rates, longer working hours and lower
morale. There is a tendency to be so focused on the end goal that the effects of
the project on the developers gets overlooked. It is not uncommon for successful
delivery on a high pressure project to be followed by the resignations of
several disgruntled team members, making the project's triumph a pyrrhic victory
indeed.

Given the costs of hiring and training staff, treating developers as expendable
resources makes no financial sense, quite aside from the ethical implications of
such treatment. A wise Technical Lead will know that putting the well-being of
the developers first also produces the best results for the project and the
business. Project success should leave the participants satisfied with their
achievement, not burnt out and demoralized.


## Mistake #17: Expecting Everyone To Think And Act Like You {#mistake-17-expecting-everyone-to-think-and-act-like-you}

Being a Technical Lead may be the first time you are exposed so frequently and
directly to the problem solving styles and low-level work habits of others.

Programming is traditionally an individual activity. Programmers are often able
to face the technical difficulties of their work in isolation, emerging sometime
later with the completed solution. But as a Technical Lead you will frequently
be called on to help those who are stuck part way through the problem-solving
process, unable to proceed. Seeing a solution that is "under construction" might
be a bit of a shock to you at first, as you may find your colleagues approach to
problem solving dramatically different to your own. Some people work "outside
in", others "inside out", others jump all over the place, some work quickly with
lots of trial and error, others slowly and methodically. It is tempting to stand
in judgment of approaches and methods that don't gel for you, pronouncing them
somehow inferior. Avoid the temptation. Learn to accept the varieties of
cognitive styles on your team, and recognize that this cognitive diversity may
actually be an asset, for the variety of perspective it brings.


## Mistake #18: Failing To Demonstrate Compassion {#mistake-18-failing-to-demonstrate-compassion}

Although I've put this last, it is in some ways the most important of all the
mistakes listed here. Always remember that your team members are people first
and programmers second. You can expect them to be temperamental, inconsistent,
proud, undisciplined and cynical – perhaps all in the same day. Which
is to say they are flawed and imperfect, just like you and everyone else. So cut
them some slack. Everyone has good and bad days, strengths and weaknesses; so
tolerance is the order of the day.

If someone breaks the build, it's no big deal. If a regression is introduced,
learn something by finding out how it got there, but don't get upset over it or
attempt to assign blame. If a deadline is missed, stand back from the immediate
situation and appreciate that in the grand scheme of things, it really doesn't
matter. Mistakes happen and you should expect your colleagues to make many, as
you will surely make many yourself.

1 Becoming A Technical Leader, G. M. Weinberg, Dorset Hourse, 1986
2 Facts and Fallacies of Software Engineering, Robert L. Glass, Addison-Wesley, 2003
