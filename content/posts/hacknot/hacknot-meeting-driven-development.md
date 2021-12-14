+++
title = "Meeting Driven Development"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:35:45-08:00
draft = false
+++

The software development arena is the land of the perpetual "me too." Populated by an eager community of "joiners," every band wagon that comes along is soon laden down by a collection of hype merchants who, recognizing the next big thing when they see it, are keen to milk it for all it is worth. Extreme Programming – that marketing campaign in search of a product – was a particularly fruitful source of commercial spin-offs. When Extreme Testing, Extreme Database Design, Extreme Debugging and Extreme Project Management had run their course; when XP's agile prequel had fostered a small industry based on old saws spruced up with a few neologisms; those looking to make a name for themselves turned to another member of the XP franchise – Test Driven Development – for entrepreneurial inspiration.


## TDD: The Progenitor Of MDD {#tdd-the-progenitor-of-mdd}

If you have not read Kent Beck's insufferable tome "Test Driven Development,”1 let me spare you the time and insult by presenting the expurgated version here:
Hello boys and girls. Once upon a time there was a thing called Test Driven Development – it looked for all the world like an impoverished rendering of Design by Contract 2 only much cooler.

The ditto brigade latched onto TDD and got to work. We soon had, sprouting like weeds from between the pavement stones, "Blah Driven Development", for all conceivable values of Blah. It became de rigueur to have something driven by something else. Not since Djikstra's "Goto Statement Considered Harmful" had there been such a rash of imitation.

The appeal of such development models is in the simplistic and unrealistic view that a complex activity can be reduced to consideration of, or focus upon, a single factor. But software development is an inherently multivariate process requiring intelligent compromise between competing forces. Unfortunately, such a view is hard to sell.

The fantasy is more appealing ... focus on blah, make it the basis of your development effort, and the rest will fall into place as a natural consequence. If you can convince yourself that blah is analogous to a set of requirements or an abstract model then you can also dispense with the unpleasantness of requirements elicitation and design. With sufficiently zealous adherence to BlahDD, combined with a healthy dose of metaphor and supposition, the formerly complex and uncertain undertaking of developing a piece of software turns into the routine application of a silver bullet. Or so some would have you believe.
Such "one stop" philosophies are a recipe for disappointment, but will no doubt continue to sell well, for the same reasons that "get rich quick" and "lose weight fast" schemes do – the promise of an easy fix.

To show how it's done and perhaps make an obtuse point or two, let's look at the latest blah to exhibit in the software development road show – Meeting Driven Development.


## An Introduction To MDD {#an-introduction-to-mdd}

MDD is more than an approach to software development, it is a cultural force. If you're lucky, you are already working in an environment conducive to the meeting mindset. In some corporate cultures meetings are so endemic that they have become an integral part of the corporate identity. For example, an IBM insider tells me that most staff consider IBM to stand for "I've Been to Meetings".

If your corporate culture is not so amenable to MDD, do not despair. You can surreptitiously introduce it into your project without much effort and when others see how successful you have been, it will quickly spread through the rest of your organization like a virus.

I suggest you begin by creating a localized "meeting zone" in your project area. Put a table and some chairs right in the middle of your project's work area, so that project staff need only turn their chairs around and wheel them a short distance in order to assume the meeting position. You will enjoy the disgruntled mutterings of nearby programmers as they struggle to concentrate amidst the noise such meetings create.

The only practical skill MDD entails is the ability to recognize and achieve meeting mode. Meeting mode is the colloquial name for what is more properly known as corporate catatonia – the mental state achieved by those meeting attendees who cannot or will not participate, instead turning their attention inward. MDD veterans describe the state as being peaceful, meditative and excruciatingly dull. Some claim to have undergone "Out of Body Corporate" experiences while in deep states of meeting mode, during which they separate from their physical bodies, leave the meeting room and go on annual leave.
External indications that an MDD practitioner is in meeting mode include:
• Vacantstaringintothemiddledistance. • Methodicaldoodlinguponnotepaper. • Slowingorcessationofrespiration.
• Extendedperiodsofsilence.


## Types Of Meetings {#types-of-meetings}

In MDD, we encourage the use of meetings at every opportunity and for every purpose. Our motto is "Every Meeting Is a Good Meeting". While you can hold a meeting for almost any purpose that comes to mind, there are certain types of meetings that tend to feature commonly in software development environments. It is important that you develop some facility with each of them.


### Type #1: The Morning Stand-Up Meeting {#type-1-the-morning-stand-up-meeting}

You should begin the day with a team meeting, and in this respect MDD is in agreement with XP's practice of holding daily "stand-up" meetings. Like many meetings that are driven by the calendar rather than by a need, your morning meeting will probably devolve into a pointless ritual that serves only to give the organizer a sense of control and influence. For those desperately trying to fulfill a management or leadership role, but lacking the basic proclivities that such roles demand, these ritualistic meetings can also help sustain their delusions of competence, as holding and attending meetings seems like a very managerial thing to do.


### Type #2: The Requirements Meeting {#type-2-the-requirements-meeting}

A typical requirements meeting involves some technical staff and stakeholders sitting down to discuss the functional requirements for a unit of work. If there are any questions concerning requirements previously elicited, they are tabled here. It is a chance for potential users to lobby technical staff and their managers for the inclusion of their favorite features. However, developers and domain specialists speak different languages, have different priorities and widely disparate agendas. The developers want to cut scope down to the minimum that will be functionally adequate so they will have some chance of meeting the schedules imposed upon them; potential users want an application that will make their working lives as easy as possible.

The tension between these two forces inevitably brings an adversarial dynamic to requirements meetings that can be very entertaining. Domain experts can take the opportunity to express their resentment at the developer's intrusion into their domain and to laugh at the folly of the developer's attempts to capture the expertise and judgment acquired in a lifetime's professional endeavor in a few minutes of discussion. In turn, developers can mock the stakeholders for their lack of technical knowledge, their inability to express their know-how in a succinct and consistent manner, and to proclaim requests for even simple functionality as being impossible to implement for technical reasons that would take too long to go into.


### Type #3: The Technical Meeting {#type-3-the-technical-meeting}

MDD prescribes that all technical problems be solved "by committee". The basic method is:

1.  Select a group of techies having maximum variation in technical opinion and preferences.
2.  Put said techies together in a meeting room.
3.  Direct them to reach consensus on the "best" solution to the technical problem.
4.  Observe resultant fireworks and carnage.

MDD practitioners are not afraid to thrash out all technical issues amongst themselves, comparing the merits of varying approaches in an unstructured session of verbal sparring. As with many meeting-based outcomes, the determining factor is the relative rhetorical skill or obstinacy of the protagonists. Victory goes to whoever can best "ad lib" an argument to support their proposition, rather than whoever actually proposes the best solution.
Of course, there may not even be a "best" solution to the problem. It's likely there will only be a set of alternatives having different strengths and weakness. You'll find that if you let the fighting go on for long enough, eventually a compromise emerges that nobody is happy with, but which they will settle for simply for the sake of having the issue done with and getting out of the tense meeting room. This is how MDD forces issues to resolution – by escalating tension until it becomes unbearable.

From a technical lead's perspective, the MDD approach to design is also an excellent way to disguise your own incompetence. If you're in over your head in some technical arena, delegating all decisions to a meeting enables you to hide your lack of understanding and appear egalitarian at the same time. When the resulting design is implemented and found to be inadequate, the blame is spread amongst all the meeting participants rather than being focused upon yourself. It's a win-win situation for you.

The real magic of meetings is that they are like mini-corporations. Just as shareholders enjoy limited liability for the failure and misdeeds of the corporation, meeting participants enjoy a limited liability for the mistaken outcomes of the meeting. The meeting becomes an artificial entity unto itself; an additional, synthetic developer who is always willing to take the blame when something goes wrong.


### The Progress Meeting {#the-progress-meeting}

Progress meetings are at once the most uneventful and easiest to institute type of meeting. Their ostensible purpose is for team members to gather together and somehow collectively "update" their mutual awareness of the state of the project. Their real purposes are both symbolic and exculpatory. They provide an opportunity for the meeting organizer to give themselves the impression of active involvement with a project (even though they may see little of the team or its work at any other time), and also provide a way for the "hands off" manager to find out what is going on with their own project.
The most ineffective types of progress meetings are structured like this:

1.  A chairman, usually the person who convened the meeting, reads through the action items from the previous progress meeting.
2.  The assignee of each action item offers some excuse as to why they haven't attended to it, and then makes some vague resolution to do it before the next progress meeting.
3.  The chairman reads out any new agenda items.
4.  Each new agenda item is turned into a new action item and assigned to one of the meeting attendants, who promptly forgets about it.
5.  The meeting is dismissed and the chairman writes up the minutes of the meeting and distributes them to the participants, who ignore them.

For most of the meeting then, there is only one-way communication from a speaker to a group of disinterested listeners. The same effect could be achieved through judicious use of a text-to-speech engine and Valium.

But there is great power hidden behind this apparently meaningless ritual. The chairman, in later distributing the minutes of the meeting, is in a position to engage in some historical revisionism. The minutes are supposed to detail the activities of the meeting and the decisions reached. But the one writing the minutes can generally write anything that they want, safe in the knowledge that hardly anyone will actually bother to read them. So if a decision doesn't go your way in the meeting, just change the way it is recorded in the minutes. You can even introduce items that were never discussed in the meeting, together with your preferred outcomes, safe in the knowledge that any participant who reads such an item but can't remember it from the meeting will probably conclude that they must have fallen asleep or been otherwise distracted during that part of the proceedings. Their unwillingness to admit their inattention means that your fabricated version of events will go unchallenged. The minutes are also invaluable for assigning blame when trouble occurs, as they can be used to substantiate claims that a particular resolution was arrived at with the agreement of all parties present (remembering that many will choose not to say anything at these meetings, lest they end up with work assigned to them, But their silence will forever condemn them to having offered implicit support for any decision you chose to put into the minutes).
Should the more rational members of the gathering ever object that these progress meetings seem pointless, you can always justify them by pointing out that they are an opportunity for communication to occur, and that communication is good. The complainant will be hard pressed to argue that communication is bad, and your point is won.


### Review Meetings {#review-meetings}

Technical artifacts should always be reviewed by a group, for the practice offers numerous advantages ... to the reviewers, not the author of the work being reviewed. Reviews are a good opportunity to gang up on your enemies and humiliate them in front of an audience. Developers have a notoriously strong ego investment in their work, so tearing apart the finely tuned code they have been poring over for weeks is sure to provoke an interesting reaction. This is the principle goal of group code reviews. The reviewers function like a self-appointed council of inquisitors looking for evidence of witchcraft in the accused. And like a witchcraft trial, incriminating evidence can always be found, as few developers can write code or produce a design that cannot be criticized in some way for something. Review meetings also allow individuals to find fault with impunity, as any degree of pettiness or vindictiveness they might exhibit can be excused as a diligent attempt to make constructive criticism.

Once you can conduct all of the above types of meetings, and enter meeting mode at will, you may consider yourself a competent MDD practitioner.


## Conclusion {#conclusion}

So that's a brief overview of the magic that is Meeting Driven Development. This approach to software development has been around since the beginning of corporate activity in the programming arena. In many corporations, the developmental norm is indistinguishable from MDD. Meetings are so much a part of the corporate culture it would not occur to anyone to take any other approach.

You will find that many programmers are afraid of meetings, having come to view them as pointless, "busy work" activities. This is simply because they have not yet learnt to appreciate that futility is actually a strength of meetings, not a weakness. The ability to convincingly create the illusion of coordinated effort and activity is invaluable in many situations.

Meetings are not a knee-jerk reaction to problem solving as some suggest, but a vehicle for creating a synthetic corporate entity – a virtual member of the development team – that can adopt the responsibility for the participant's poor decision making and manifest inabilities. Only when they have abandoned their reflexive animosity towards meetings and recognized them for the ritual scapegoat that they are, can developers really appreciate the benefits of MDD.

1 Test Driven Development, Kent Beck, Addison Wesley, 2003
2 Object Oriented Software Construction, 2nd Ed., Ch 11, Bertrand Meyer, Prentice Hall, 1997
