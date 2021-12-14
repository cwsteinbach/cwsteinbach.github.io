+++
title = "IEEE Software Endorses Plagiarism"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:52:12-08:00
draft = false
+++

plagiarize – take (the work or an idea of someone else) and pass it off as one’s own. – New Oxford Dictionary of English

Ours is an occupation obsessed with invention and novelty. Every week it seems that some new technology or development technique arrives, heralded by a fanfare of hype and a litany of neologisms. So keen are we to exploit the community's enthusiasm for newness that we will even take old ideas and rebadge them, offering them up to our colleagues as if they were original.

Every time I see such reinvention, I feel a certain discomfort. There seems to me something fundamentally wrong with positing work as being entirely your own, when it in fact borrows, duplicates or derives from the work of others.

In science, precedence counts for a great deal and authors are usually generous and fastidious in providing correct attribution and acknowledgement of former discoveries which their own work has benefited from. Indeed, a broad indication of the significance of a paper is the number of subsequent citations that the work receives. In software development, there appears to be rather less respect for the contributions that others make; perhaps even a certain contempt for prior art.


## Fail Fast {#fail-fast}

A particularly egregious example of this disrespect for precedence appeared in
the Sept/Oct 2004 issue of IEEE Software, in an article in the Design section by
Jim Shore called Fail Fast 1. The section editor is Martin Fowler.

Shore describes "a simple technique that will dramatically reduce the number of
bugs in your software". His technique, which he considers "nonintuitive" is to
write your code so that it fails "immediately and visibly." This is achieved by
putting assertions at the beginning of each method, that check the validity of
the values passed to the method's arguments, throwing a run-time exception if
invalid values are encountered.

For example, if you write a method for finding the positive square root of a
non-negative argument, you make the expectation of "non-negativity" explicit at
the beginning of the method, like this:

```java
public void squareRoot(float value) {
  if (value < 0.0) {
    throw new SomeException(value);
  }
  // More code goes here
}
```

This technique is the antithesis of defensive programming, which would encourage
us to make the method as tolerant of unexpected input as possible.

Shore then goes to some lengths to enumerate the strengths of this technique, such as:
• Whenfailureoccurs,theresultisastacktracethatleadsdirectlytothe source of error. Code that doesn't fail-fast can sometimes propagate errors to other portions of the call hierarchy, finally to fail in a location quite distant from the original point of error.
• Reduced use or elimination of a debugger; the messages from the assertion failures are sufficient to localize the error.
• Loggingofassertionfailuresprovideexcellentdebugginginformation for maintenance programmers who later diagnose a production failure from log files.
• Reducedtimeandcostofdebugging.

There are no citations anywhere within the article; nor does it specify any
references. The author (and by extension, the editor) are apparently content to
have you believe that this concept is new and original.


## Design By Contract {#design-by-contract}

You may well be familiar with the term Design by Contract (DBC). The term was
coined by Bertrand Meyer, and a full exposition of it may be found in Chapter 11
of his excellent text Object Oriented Software Construction 2. Shore's Fail Fast
technique is nothing more than a re- naming of a subset of the concepts within
DBC. In short, “Fail Fast” is entirely derivative in
nature.

For those who have not previously encountered it, DBC is a technique for
specifying the relationship between a class and its clients as a formal
agreement 2 – a contract. A contract is expressed as an assertion of
some boolean conditional statement. When the condition is false, the contract is
said to fail; which results in the throwing of a runtime exception.

Broadly speaking there are three types of contracts – preconditions,
postconditions and invariants. The Fail Fast technique relies only upon
preconditions – assertions placed at the beginning of a method that
specify the conditions the method assumes to be true. The topic of DBC is fairly
involved, particularly with regard to the way that contracts accumulate across
inheritance relationships. Meyer's exegesis of DBC is vastly superior to the
limited discussion of preconditions (under the new name “Fail
Fast”) given by Shore.

Not only does Shore co-opt the work of others, he combines it with bad advice
regarding the general use of assertions. Shore claims: When writing a method,
avoid writing assertions for problems in the method itself. Tests, particularly
test-driven development, are a better way of ensuring the correctness of
individual methods.

This is the purest nonsense. Assertions are an excellent way of documenting the
assumed state of a method mid-way through its operation, and are helpful to
anyone reading or debugging the method body. This was first pointed out by Alan
Turing back in 1950:

How can one check a large routine in the sense that it's right? In order that
the man who checks may not have too difficult a task, the programmer should make
a number of definite assertions which can be checked individually, and from
which the correctness of the whole program easily follows.3 In contrast to
Shore, Meyer is generous in his acknowledgement of predecessors and contributors
to DBC itself. Section 11.1 of his text has an entire page of "Bibliographical
Notes" in which he acknowledges the work of Turing, Floyd, Hoare, Dijkstra,
Mills and many others. Indeed, he has delivered an entire presentation on the
conceptual history of DBC prior to his own involvement.4


## Giving Credit Where Credit Is Due {#giving-credit-where-credit-is-due}

Such misattribution and inattention to precedence as Shore’s harms our profession in several ways:
• It is professionally discourteous in that it denies those who develop and originate work their proper credit.
• It discourages modern readers from exploring the history of the concepts they are presented with, thereby denying them an opportunity to deepen their knowledge through exploration of the prior art. Meyer has already expounded the benefits of "fail fast" versus "defensive programming" at length. If Shore’s article had appropriate citations, readers would be directed towards this better and more detailed explanation, and would realize that the concept can be taken much, much further through postconditions, invariants, and inheritance of contracts
• It garners false credit for those who ignore the precedence of other's work, encouraging others to do the same – diverting energy into the re-labeling of already known concepts that could otherwise be directed into new areas.
• It creates confusion amongst the readership and obfuscates links with the existing body of knowledge. Central to any epistemological effort is a consistent naming scheme, so that links between new discoveries and existing concepts can be identified. Renaming makes it difficult, particularly for those new to the field, to distinguish new from old concepts.


## Conclusion {#conclusion}

To have work published in a peer reviewed journal is a significant achievement.
It means that one's work has been found to make a worthwhile contribution to the
literature, and to be of a high professional standard. By these criteria, the
Fail Fast article by Jim Shore in the Sept/Oct 2004 issue of IEEE Software
should not have been published. The material it presents as being new and
original is a superficial (and flawed) restatement of earlier work by Meyer,
Hoare and others. It should be cause for concern for us all that a high profile,
professional journal should publish work that is derivative and
misrepresentative. Those who reviewed Shore’s article prior to
publication, and the editor/s who approved its publication deserve the harshest
admonishment for effectively endorsing plagiarism.

1 Fail Fast, Jim Shore, IEEE Software, Sept/Oct 2004, pg 21
2 Object Oriented Software Construction, 2nd Edition, Bertrand Meyer, Prentice Hall, 1997 3 Checking A Large Routine, Talk delivered by Alan Turing, Cambridge, 24 June 1950.
4 Eiffel’s Design by Contract: Predecessors and Original Contributions, Bertrand Meyer
