+++
title = "Extreme Deprogramming"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:35:54-08:00
draft = false
+++

In recent weeks I’ve read two books by cult survivors. The first, "Inside Out” by Alexandra Stein1, describes her ten year embroilment in a Minneapolis political cult called “The O.” The second, "Seductive Poison" by Deborah Layton2, details the author’s involvement with the “Peoples Temple,” the religious cult lead by Jim Jones, who engineered the mass suicide of 900 of his followers in 1978.

Reading each I became aware of the similarities in the methods for control, manipulation and persuasion that both cults employed. It also occurred to me that those techniques were not just features of groups that would conform to the traditional definition of a cult, but also extended to what might be called benign cults. Think of the fierce loyalty of members of pyramid organizations such as Amway and Mary Kay; think of brands with a loyal consumer base like Apple and Harley Davidson3; and finally, think of the ardent supporters of Extreme Programming.

By examining some of the characteristic features of cults (benign and otherwise) and calling out their presence in the recently popular XP movement, I hope to throw some light on why this technical cult incites such fervor and emotion in certain members of the development community.
Drawing on the work of thought reform specialist Robert Lifton and others, consider the following characteristics of a cult, all of which are displayed by XP:
• Sense of higher purpose
• Loaded language
• Creation of an exclusive community
• Persuasive leadership
• Revisionism
• Aura of sacred science


## Sense Of Higher Purpose {#sense-of-higher-purpose}

Cult members believe that they are privy to special truths and insights not known to the general community, and that it is their mission to spread this knowledge to others.

I could only laugh when I read Scott Ambler’s response to a letter taking issue with an article on outsourcing that he wrote for Software Development magazine. In the July 2003 issue he wrote "While it’s nice that so many Indian companies have high CMM ratings, it doesn’t reflect modern thinking about software development. CMM and Six Sigma have a tendency to lead to prescriptive, documentation-heavy processes." These are the words of a zealot, who is so convinced of the righteousness of his beliefs that he is willing to elevate them to the status of being representative of "modern thinking about software development." In unguarded moments, it is occasionally conceded that XP is not the answer to all software development problems, but that is certainly the attitude portrayed by many of its devotees. Spend any time reading comp.software.extreme-programming and you will not be able to help but notice the thinly veiled arrogance and elitist attitude behind the postings of many of XP’s most zealous followers. This is definitely a group of people who think they have got it, and that anyone else not similarly enthused is a laggard.


## Loaded Language {#loaded-language}

Cults create a custom vocabulary for their members. New words are invented, existing words are redefined, and a jargon of trite and pat clichés is developed.
Perhaps XP’s most egregious effect on the broader software development community has been to infect communication with cutesy slogans and acronyms. No one could overlook the overuse the word "extreme" has been put to in the marketing of a host of unrelated products and concepts. The only common meaning amongst Extreme Programming, Extreme Project Management, Extreme Design and Extreme Testing is the implication of identifying a product that is sufficiently different from previous offerings to warrant purchase.

"Refactoring" has been abducted from its proper home in the algebraic texts and elevated to the status of an essential work method, which one must apply "ruthlessly." If we consider that "rework" or "restructuring" are essentially synonyms for "refactoring", we see that this piece of custom terminology is only dignifying the act of investing effort to correct ill- considered implementation decisions for no functional gain. In general usage, I have noticed the term being used as an even broader euphemism to disguise and minimize bug fixing and functional extension.

Particularly offensive is the frequent characterization of XP as "disciplined". XP may satisfy the weakest definitions of the word "disciplined" in so far as there is some regularity and control in its methods. But these minor concessions to true rigor are in fact just the leftovers remaining after the elimination of particular activities from a truly disciplined development process – one that includes formal documentation and design. The abandonment of these activities is precisely where XP’s principal appeal to many lies – that there are fragments of a rigorous development process remaining after the unpleasant stuff has been cast aside is hardly sufficient basis upon which to claim that the overall work pattern exhibits discipline – unless one considers the determined pursuit of the path of least resistance to evidence discipline.
The XP jargon serves the same purpose as it does in any cult, to elevate the mundane to the significant through relabelling, and to misdirect attention away from failings and inconsistencies in the cult’s value system. It is a shame that the XP community did not apply its own YAGNI (You Ain't Gonna Need It) principle to the invention of such novel terminology.


## Creation Of An Exclusive Community {#creation-of-an-exclusive-community}

A cult provides a surrogate family for its members, who feel somehow separated and at odds with mainstream society.

Cults are a refuge for the uncertain. For those feeling lost or without direction, the faux certainty of a cult provides welcome relief. Software development is a field full of uncertainty. The increasing societal reliance upon software and the attendant but conflicting requirements for speedy and reliable development, has outpaced our ability to learn better ways to do our work. Faced with this unsatisfactory situation and desperate for a solution, the development community is vulnerable to the claims and promises made by XP. The fact that there is a community of enthusiastic proponents behind XP serves only to enhance its credibility via the principle of social proof 5. In truth, the presence of such a community only evidences the widespread confusion about software development methods, coupled with the hope that there is some answer that doesn’t entail unpleasant activities such as documentation.


## Persuasive Leadership {#persuasive-leadership}

Central to almost all cults is the founding member, a figure who through the strength of their own conviction is able to attract others to their cause.
The leaders of the XP movement are three members of the C3 project where XP was piloted – Kent Beck, Ron Jeffries and Ward Cunningham – and to a lesser extent the industry figures who have adopted it as their personal cause – Scott Ambler and Martin Fowler being amongst these. These people have generated an impressive amount of literature which forms the basis for the ever growing XP canon. They also serve as the XP community’s ultimate arbiters of policy and direction. Reading the comp.software.extreme-programming newsgroup I notice people continually directing questions about their own interpretations of the XP doctrine to these central figures, seeking their approval and the authority of their advice. That there is a need for personal consultation in addition to the information provided by the large amount of literature on XP speaks of the imprecise and variable definition of the subtleties of XP practice. That knowledge of what is and isn’t OK is seen to be held by a central authority and is not in the hands of the practitioners themselves, echoes the authoritarian distribution of sacred knowledge that is present in most cults.


## Revisionism {#revisionism}

Cults often craft alternative interpretations of world events, both present and historical, that serve to reinforce their belief system.
There are a number of examples of revisionism in XP. The most blatant concern the C3 project – the original breeding ground for XP. Proponents of XP repeatedly use this project as their poster child, the tacit claim being that its success is evidence of the validity of XP. However the reality is that the C3 project was a failure – ultimately being abandoned by the project sponsor and replaced with an off-the-shelf solution6. XP advocates have chosen to cast this failure as a success, by carefully defining the criteria for success that they claim is relevant. It is typical cult behavior to interpret real world events in a light that confirms existing beliefs, and to deny contrary evidence as being inauthentic.

One of the advantages of having a central authority is the ability to reconceive fundamental beliefs when necessary. The change in the attitude of the XP "inner circle" with regard to the production of documentation is an example of this. In its initial conception, documentation was regarded as unnecessary. In the light of real world experiences with XP, this stance softened to include the production of documentation "if you are required to." More recently, the philosophy has been stated as "if it’s valuable to you, do it." Some would dismiss this as a result of XP’s infancy, claiming that it is still being developed and refined; but I believe these shifts in position are the thought reformer's attempts to incorporate unflattering real world experience into their original ideation. Whatever real practitioner’s experiences are, we can be sure that the primacy of XP doctrine will remain.


## Aura Of Sacred Science {#aura-of-sacred-science}

Which implies that the laws and tenets of the cult are beyond question.

Central to XP is the notion of the 12 core practices. These technical equivalents of the Ten Commandments are considered interdependent and so the removal of any one of them is likely to cause the collapse of the whole. This all-or-nothing thinking is typical of cults. Members must display total dedication to the cult and its objectives, or they are labeled impure and expelled from the community. This discourages members from questioning the cult’s fundamental beliefs.
In the case of XP, the organizational circumstances required to perform all the core practices are so particular that it is doubtful if more than a handful of companies could ever host an authentic XP project. Therefore practitioners are forced to perform partial implementations of XP. If they are unsuccessful, then failure is attributed to the impurity of their implementation rather than any failing or infeasibility of XP itself. The quest for individual purity is a feature common to many cults, as is the contrivance of circumstances that render it ultimately unachievable.

Much is made of the "humanity" of the methodology, the transition from "journeyman" to "master", and the focus upon individual qualities and contributions. Consideration of these softer, cultural aspects of XP has devolved into the sort of pseudoscience we often find in new age cults centered on the notion of "personal power" and "personal growth". To quote one zealot "XP is a culture, not a method."7 The elevation of a new and unproven methodology to the philosophical status of a Zen-like belief system demonstrates the skewed perspective that typifies cult mentality.


## Conclusion {#conclusion}

Whether you choose to label XP a cult is not as important as whether you recognize that it displays cult-like attributes. I believe that the psychological and social phenomenon underlying these six characteristics account in no small part for the current popularity that XP enjoys. I also believe that they point to its future.
Cults tend to have a very limited life. The hype and fervor can only sustain the devotion of the members for so long, and eventually they will look to other sources for inspiration – those leaving a cult are frequently drawn into another within a short time.

I believe that XP will eventually lose its luster and fall into disrepute like so many other religious, commercial and technical cults of the past. Many of the current adherents will cast about for a new cause to follow, and no doubt the marketing departments of the technical book publishers and software vendors will be only too happy to provide them with a new subject upon which to focus their devotion. Meanwhile, software projects will continue to fail or succeed with the same frequency as always, as our industry continues its search for a panacea to the ills of software development.

1 Inside Out, Alexandria Stein, North Star Press, 2002
2 Seductive Poison, Deborah Layton, Anchor Books, 1999
3 The Power of Cult Branding, M. Ragas and B. Bueno, Prima Publishing, 2002
4 Software Development, July 2003
5 Influence: The Psychology of Persuasion, Robert Cialdini, Quill, 1993
6 Extreme Programming Refactored, M. Stephens and D. Rosenberg, Apress, 2003 7 Enculturating Extreme Programmers, David M. West
