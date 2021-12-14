+++
title = "Basic Critical Thinking for Software Developers"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:47:03-08:00
draft = false
+++

## Vague Propositions {#vague-propositions}

A term is called “vague” if it has a clear meaning but not
a clearly demarcated scope. Many arguments on Usenet groups and forums stem from
the combatants having different interpretations of a vaguely stated proposition.
To avoid this sort of misunderstanding, before exploring the truth of a given
proposition either rhetorically or empirically, you should first state that
proposition as precisely as possible.

Consider this proposition:
P(1): Pair Programming works
If I were to voice that proposition on the Yahoo XP group1, I would expect it to receive enthusiastic endorsement. I would also expect no one to point out that this proposition is non-falsifiable.

It is non-falsifiable because the terms "pair programming" and "works" are so vague. There are an infinite number of scenarios that I could legitimately label "pair programming", and an infinite number of definitions of what it means for that practice to "work." Any specific argument or evidence you might advance to disprove P(1) will imply a particular set of definitions for these terms, which I can counter by referencing a different set of definitions – thereby preserving P(1).
A vast number of arguments about software development techniques are no more than heated and pointless exchanges fueled by imprecisely stated propositions. There is little to be gained by discussing or investigating a non-falsifiable proposition such as P(1). We need to formulate the proposition more precisely before it becomes worthy of serious consideration.

Let’s begin by rewording P(1) to clarify what we mean by "works":
P(2): Pair Programming results in better code
Now at least we know we’re talking about code as being the primary determinant of whether pair programming works. However P(2) is now implicitly relative, which is another common source of vagueness. An implicitly relative statement makes a comparison with something without specifying what that something is. Specifically, it proposes that pair programming produces better code, but better code than what?

Let’s try again:
P(3): Pair Programming produces better code than that produced by individuals programming alone
P(3) is now explicitly relative, but still so vague as to be non-falsifiable. We have not specified what attribute/s we consider distinguish one piece of code as being "better" than another.

Suppose we think of defect density as being the measure of programmatic worth:
P(4): Pair programming produces code with a lower defect density than that produced by individuals programming alone
Now we’ve cleared up what we mean by the word "works" in P(1), let’s address another common source of vagueness – quantifiers. A quantifier is a term like "all", "some", "most" or "always". We tend to use quantifiers very casually in conversation and frequently omit them altogether. There is no explicit quantifier in P(4), so we do not know whether the claimant is proposing that the benefits of pair programming are always manifest, occasionally manifest, or just more often than not.
The quantifier chosen governs the strength of the resulting proposition. If the proposition is intended as a hard generalization (one that applies without exceptions), then a quantifier like "always" or "never" is applicable. If the proposition is intended as a soft generalization, then a quantifier like "usually" or "mostly" may be appropriate.

Suppose P(4) was actually intended as a soft generalization:
P(5): Pair programming usually produces code with a lower defect density than that produced by individuals programming alone.
P(5) nearly sounds like it could be used as a hypothesis in an empirical investigation. However the term "pair programming" is still rather vague. If we don’t clarify it, we might conduct an experiment that finds the defect density of pair programmed code to be higher than that produced by individuals programming alone, only to find that advocates of pair programming dismiss our experimental method as not being real pair programming. In other words, the definition of the term "pair programming" can be changed on an ad hoc basis to effectively render P(5) non-falsifiable.

"Pair programming" is a vague term because it carries so many secondary connotations. The primary connotations of the term are clear enough: two programmers, a shared computer, one typing while the other advises. But when we talk of pair programming we tend to assume other things that are not amongst the primary connotations. These secondary connotations need to be made explicit for the proposition to become falsifiable. To the claimant, the term "pair programming" may have the following secondary connotations:
• The pair partners contribute more or less equally, with neither one dominating the activity
• The pair partners get along with each other i.e. there is a minimum of unproductive conflict.
• Thebenefitsofpairprogrammingarealwaysmanifest,buttoadegree that may vary with the experience and ability of the particular individuals.

To augment P(5) with all of these secondary connotations will make for a very wordy statement. At some point we have to consider what level of detail is appropriate for the context in which we are voicing the proposition.


## Non-Falsifiable Propositions {#non-falsifiable-propositions}

Why should we seek to refine a proposition to the point that it becomes falsifiable? Because a proposition that can not be tested empirically and thereby determined true or false is beyond the scrutiny of rational thought and examination. This is precisely why such propositions are often at the heart of irrational, pseudo-scientific and metaphysical beliefs.

I contend that such beliefs have no place in the software engineering domain because they inhibit the establishment of a shared body of knowledge – one of the core features of a true profession. Instead, they promote a miscellany of personal beliefs and superstitions. In such circumstances, we cannot reliably interpret the experiences of other practitioners because their belief systems color their perception of their own experiences to an unknown extent. Our body of knowledge degrades into a collective cry of "says who?".

Here are a few examples of non-falsifiable propositions that many would consider incredible:
• Thereisalong-neckedmarineanimallivinginLochNess.
• The aliens have landed and walk amongst us perfectly disguised as humans.
• Some people can detect the presence of water under the ground through use of a forked stick.

Try as you might, you will never prove any of these propositions false. No matter how many times you fail to find any evidence in support of these propositions, it remains true that "absence of evidence is not evidence of absence." If we are willing to entertain non-falsifiable propositions such as these, then we admit the possibility of some very fanciful notions indeed.

Here a few examples of non-falsifiable propositions that many would consider credible:
• Opensourcesoftwareismorereliablethancommercialsoftware • Agiletechniquesarethefutureofsoftwaredevelopment
• OOprogrammingisbetterthanstructuredprogramming.

These three propositions are, as they stand, just as worthless as the three propositions preceding them. The subject areas they deal with may well be fruitful areas of investigation, but you will only be able to make progress in your investigations if you refine these propositions into more specific and thereby falsifiable statements.


## Engage Brain Before Engaging Flame Thrower {#engage-brain-before-engaging-flame-thrower}

Vagueness and non-falsifiable propositions are the call to arms of technical holy wars. When faced with a proposition that seems set to ignite the passions of the zealots, a useful diffusing technique is to identify the non-falsifiable proposition and then seek to refine it to the point of being falsifiable. Often the resulting falsifiable proposition is not nearly as exciting or controversial as the original one, and zealots will call off the war due to lack of interest. Also, the very act of argument reconstruction can be informative for all parties to the dispute. For example:
Zealot: Skeptic: Zealot:
Real programmers use Emacs
How do you define a "real programmer?"
A real programmer is someone who is highly skilled in writing
Skeptic:
Zealot: Skeptic: Zealot:
Skeptic:
Zealot: Skeptic:
Zealot: Skeptic:
Zealot: Skeptic:
Zealot: Skeptic:
Zealot: Skeptic: Zealot:
Skeptic: Zealot:
So what you’re claiming is "people who are highly skilled in writing code use Emacs"?
Correct.
Are you claiming that such people always use Emacs?
Well, maybe not all the time, but if they have the choice they’ll use Emacs.
In other words, they prefer to use Emacs over other text editors?
Yep.
So you’re claim is really "people who are highly skilled in writing code prefer Emacs over other text editors?"
Fair enough.
Are you claiming that all highly skilled coders prefer Emacs, or could there be some highly skilled coders that prefer other text editors?
I guess there might be a few weird ones who use something else, but they’d be a minority.
So you’re claim is really "Most people who are highly skilled in writing code prefer Emacs over other text editors?”
Yep.
Leaving aside the issue of how you define "highly skilled", what evidence do you have to support your proposition?
Oh come on – everyone knows it’s true.
I don’t know it’s true, so clearly not everyone knows it’s true.
Alright – I’m talking here about the programmers that I’ve worked with.
So are you saying that most of the highly-skilled programmers you’ve worked with preferred Emacs, or that they shared your belief that most highly-skilled programmers prefer Emacs?
I’m talking about the editor they used, not their beliefs.

Skeptic:
Zealot: Skeptic:
So your claim is really "Of the people I’ve worked with, those who were highly skilled in writing code preferred to use Emacs over other text editors".
Yes! That’s what I’m saying, for goodness sake!
Not quite as dramatic as "real programmers use Emacs", is it?

You may find that it is not possible to get your opponent to formulate a specific proposition. They may simply refuse to commit to any specific claim at all. This reaction is common amongst charlatans and con men. They only speak in abstract and inscrutable terms (sometimes of their own invention), always keeping their claims vague enough to deny disproof. They discourage scrutiny of their claims, preferring to cast their vagueness as being mysterious and evidence of some deep, unspoken wisdom. If they cannot provide you with a direct answer to the question "What would it take to prove you wrong?" then you know you are dealing with a non- falsifiable proposition, and your best option may simply be to walk away.


## Summary {#summary}

Before engaging in any debate or investigation, ensure that the proposition being considered is at least conceivably falsifiable. A common feature of non-falsifiable propositions is vagueness.

Such propositions can be refined by:
• Defininganybroadornovelterminologyintheproposition
• Makingimplicitquantifiersexplicit
• Makingimplicitlyrelativestatementsexplicitlyrelative
• Makingbothprimaryandsecondaryconnotationsoftheterminology explicit

1 <http://groups.yahoo.com/group/extremeprogramming>
