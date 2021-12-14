+++
title = "Reuse is Dead. Long Live Reuse."
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:53:51-08:00
draft = false
+++

Reuse is one of the great broken promises of OO. The literature is full of
empirical and anecdotal evidence to this effect. The failure to realize any
significant benefit from reuse is variously ascribed to technical,
organizational and people factors. Observation of the habits and beliefs of my
fellow software engineers over many years leads me to believe that it is the
latter which poses the principle obstacle to meaningful reuse, and which
ultimately renders it unachievable in all but the most trivial of cases.

Hubris is a common trait amongst software developers and brings with it a
distrust and disrespect for the work of others. This "not invented here"
attitude, as it is commonly known, leads developers to reinvent solutions to
problems already solved by others, driven by the conviction that the work of
anonymous developers must be of dubious quality and value. Some simply prefer
"the devil you know" - figuring that whatever the shortcomings of a solution
they may write themselves, their familiarity with it will sufficiently reduce
the cost of subsequent maintenance to justify the cost of duplicating the
development effort. Evidence of this drive to reinvention is everywhere. Indeed,
the collective output of the open source movement is proof of the "I can do
better" philosophy in action.

Consider what it is about software development that attracts people to it. In
part, it is the satisfaction that comes from solving technical problems. In
part, it is attraction to the novelty of new technologies. In part, it is the
thrill of creating something that has a life independent of its original author.
Reuse denies the developer all of these attributes of job satisfaction. The
technical problem is already solved, the new technology has already been
mastered (by somebody else), and the act of creation has already occurred. On
the whole, the act of reuse is equivalent to surrendering the most satisfying
aspects of one’s job.

So what degree of reuse can coexist with such a mindset? Certainly we may
abandon hope for any broad reuse such as that promised by frameworks. Instead,
we may expect frameworks themselves to proliferate like flowers in spring. The
greater the scope of the potential reuse, the greater the opportunity to
disguise technology lust and hubris as genuine concerns over scalability or
applicability.

I believe the only reuse likely to be actually realized is in the form of
limited utility libraries and perhaps small GUI components. If the problem the
potentially reusable item solves is seen as technically novel or intriguing,
then reinvention will result. If there is no entertainment, novelty or career
value in reinvention then begrudging reuse may result simply as a way of
avoiding "the boring stuff." But as long as developers are willing to use their
employer’s time and money to satisfy their personal ambitions; and as
long as they continue to believe they hold a personal monopoly on reliable
implementation, then the cost advantage of reuse will remain a gift that we are
too proud to accept.
