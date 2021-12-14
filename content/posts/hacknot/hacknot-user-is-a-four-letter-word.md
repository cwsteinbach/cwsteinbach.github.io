+++
title = "User is a Four Letter Word"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:37:21-08:00
draft = false
+++

The term "user" is not just a pronoun, it is a powerful buzzword that pervades
the software development literature, to both good and bad effect. On the up
side, the development community has been made aware of the dominating role that
end user experience plays in determining the success or failure of many
projects. On the down side, the message of the importance of user feedback to
the development process has been adopted by some with uncritical fervor.

In their efforts to be "user focused," guided by simplistic notions of
"usability," many managers and programmers uncritically accept whatever users
tell them as a mandate. "The customer is always right" makes a nice slogan but a
poor substitute for critical thought. If you want to deliver a product that is
genuinely useful, it is important to moderate the user feedback you receive with
your own knowledge of usability principles, and to seek independent confirmation
of the information they relate. For it is a fact seldom acknowledged in the text
books that users are frequently uninformed, mistaken or deliberately deceptive.


## User Fraud {#user-fraud}

There are two types of fraud - the deliberate fraud and the pious fraud. Both make false statements; the former knowing that they are false, the latter believing them to be true. The user community contains both types.

Suppose you are writing a system that will facilitate the workflow of some subset of a company's employees. As future users of your software, you go to them to find out exactly how they do their work each day, so that you can understand their work processes. Some users find it difficult to articulate their basic work methods, even though they may have been in the same role for many years. Their routine becomes so internalized that it is no longer readily available by introspection. They may appear unsure and vague when describing how particular tasks are accomplished, and when you ask why things are done in a given way, you may get dismissive responses such as “Because that's the way we've always done it.”

Are you being told the truth? The naive developer will take what the user offers as gospel, and run away to implement it in software. The more experienced developer will simply take it on board for consideration, knowing that the user may be a fraud. Many users are pious frauds, in that they will give you their opinion on what workflow they and others are following, but state it as if it were an incontestable fact. Long-serving employees are very likely to consider themselves unassailable authorities on their company's processes.

But you must not lose sight of the fact that even the most genuine of users can be mistaken or have incomplete knowledge. When surveying employees who all participate in a common workflow, it is not at all uncommon to find that each participant has a different conception of the overall process. Sometimes there are only minor discrepancies between their individual accounts; sometimes there are direct conflicts and outright contradictions. This is particularly common in small organizations that function in a "cottage industry" manner, where nothing is written down and the work processes survive only through verbal instruction, not unlike the folkloric traditions that exist in tribes. The "Chinese whispers" effect can give rise to individuals having significantly different understandings of what is ostensibly a common work practice. Such users are not much to blame for their status as pious frauds, having become so through common psychosocial mechanisms.
Pious fraud also results from the common tendency to over-estimate one's own level of expertise in relation to others. For example, drivers involved in accidents or flunking a driving exam predict their performance on a reaction test less accurately than more accomplished drivers1. This self-serving bias will be also be present amongst your users, who may consider themselves experts in their domain and therefore convey their responses with greater authority and certainty than their true level of expertise actually justifies.

The user may describe a particular interface mechanism as having greater usability than another, when they are in fact only acknowledging the greater similarity of that design to the paper forms they are already familiar with. Users are not interface designers any more than drivers are automotive engineers.

On the border of pious and deliberate fraud are those users that are not lying outright, but neither are they making much effort to help you gather the information you need. They may simply be apathetic or cynical – perhaps having witnessed many failed IT initiatives within their organization in the past. When interviewed, their participation is begrudging, and they will make it obvious that they would rather be back at their post getting on with some "real work". They are only involved because their management has forced them to be so; they would really just like you to go away.

The answers you get from them may be the truth, but not necessarily the whole truth. Rather than describe to you all the variations and exceptional circumstances they encounter in the course of doing their job, they will simply give you a basic description of the usual way of doing things. Then it will be up to you to tease out of them all the boundary conditions and how they are handled. For the purposes of process automation, these special cases are particularly important.
Hardest for the software developer to deal with are the deliberate frauds. The developer is at a distinct disadvantage, for he is reliant upon the user for information, but is generally not familiar enough with the domain to be able to adduce that information's authenticity.

Asked to review documents that capture their workflow, the deliberate fraud may declare the document correct, when in fact they have not even read it. Or perhaps they actually have attempted to read it but are unwilling to admit that they have failed to understand it. A user may announce that their job requires judgments too complex or heuristic to be captured in software, when in fact they are simply unwilling to release their accumulated wisdom and expertise because they fear becoming expendable. The user may declare a particular procedure to be the correct one, but actually describe how they would like the procedure to be, in the hope that your software will result in things being done in accord with their personal preference.

Perhaps the most common ploy of the passive aggressive user is procrastination. When asked to participate in interviews or submit to any demand on their time, the user offers only perfunctory compliance, complaining that they just can't find the time to put in greater effort, given the demands of their existing duties. They know that if they demur frequently enough, you will probably stop assigning them tasks altogether.


## Conclusion {#conclusion}

There is a common tendency in the development community to conflate a "user focused" approach with one that unquestioningly accepts arbitrary dictation from users. The result is a gullible and over-confident development team that has unwittingly compromised their ability to effect the success of their own project.

While it is essential for developers to maintain a focus on their user's needs and expectations, they must be careful to think critically about the feedback they receive. To this end, it is important to independently verify the user's statements, obtain feedback from as broad a demographic as possible, and maintain an awareness of the potential for both deliberate and unintentional user error.

1 Incompetent And Unaware Of It, J. Kruger and D. Dunning, Journal of Personality and Social Psychology, 1999, Vol. 77, No. 6, 1121-1134
