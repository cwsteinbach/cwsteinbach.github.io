+++
title = "The Top Ten Elements of Good Software Design"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:37:34-08:00
draft = false
+++

“You know you've achieved perfection in design, not when you have nothing more
to add, but when you have nothing more to take away.” – Antoine de Saint-Exupery

Much is spoken of "good design" in the software world. It is what we all aim for
when we start a project, and what we hope we still have when we walk away from
the project. But how do we assess the "goodness" of a given design? Can we agree
on what constitutes a good design, and if we can neither assess nor agree on the
desirable qualities of a design, what hope have we of producing such a design?

It seems that many software developers feel that they can recognize a good design when they see or produce one, but have difficulty articulating the characteristics that design will have when completed. I asked three former colleagues – Tedious Soporific, Sparky and WillaWonga – for their "Top 10 Elements of Good Software Design". I combined these with my own ideas, then filtered and sorted them based upon personal preference and the prevailing wind direction, to produce the list you see below. A big thanks to the guys for taking the time to write up their ideas.

Below, for your edification and discussion, is our collective notion of the Top 10 Elements of Good Software Design, from least to most significant. That is, we believe that a good software design ...


## Considers The Sophistication Of The Team Implementing It {#considers-the-sophistication-of-the-team-implementing-it}

Does it seem odd to consider the builder when deciding how to build? We would not challenge the notion that a developer’s skill and experience has a profound effect on their work products, so why would we fail to consider their experience with the particular technologies and concepts our design exploits? Given fixed implementation resources, a good design doesn’t place unfamiliar or unproven technologies in critical roles, where they become a likely point of failure.
Further, team size and their collocation (or otherwise) are considered. It would not be unusual for such a design’s structure to reflect the high level structure of the team or organization that will implement it.


## Uniformly Distributes Responsibility And Intelligence {#uniformly-distributes-responsibility-and-intelligence}

Classes containing too much intelligence become both a point of contention for version control purposes, and a bottleneck for maintenance and development efforts. They also suggest that a class is capturing more than a single data abstraction.


## Is Expressed In A Precise Design Language {#is-expressed-in-a-precise-design-language}

The language of a design consists of the names of the entities within it, together with the names of the operations those entities perform. It is easier to understand a design expressed in precise and specific terms, as they provide a more accurate indication of the purpose of the entities and the way they cooperate to achieve the desired functionality. Look for the following features:
• The objective of the designed thing can be described in one or two sentences completely.
• Theinterfacerequirementsoftheentitiesarestatedprecisely.
• Thecontractsbetweenanentityanditscallersarestatedpreciselyand contract adherence is enforced programmatically (Design by Contract).
• Entities are named with accurate and concrete terms, and specified fully enough to form a suitable basis for implementation.


## Selects Appropriate Implementation Mechanisms {#selects-appropriate-implementation-mechanisms}

Certain mechanisms are problematic and more likely to produce difficulties at implementation time. A good design minimizes the use of such mechanisms. Examples are:
• Reflectionandintrospection • Dynamiccodegeneration
• Self-modifyingcode
• Extensivemulti-threading

Sometimes the use of such mechanisms is unavoidable, but at other times a design choice can be made to sacrifice more complex, generic mechanisms for those easier to manage cognitively.


## Is Robustly Documented {#is-robustly-documented}

As long as a design lies hidden in the complexities of the code, so too does our ability arrive at an understanding of the code’s structure as a whole. As the abstract structure becomes apparent to us, either through rigorous examination of the code or study of an accompanying design document, we gradually develop a course understanding of the code’s topography. A good design document is used before or during implementation as a justification and guide, and after construction as a way for those new to the code base to get an overview of it more quickly than they can through reverse engineering. Captured in abstract form, we can discuss the pros and cons of different approaches and explore design alternatives more quickly than we can if we were instead manipulating a code-level representation of the design.

But as soon as the abstract and detailed records of a design part company, discrepancy between the two becomes all but inevitable. Therefore it is essential to document designs at a level of detail that is sufficiently abstract to make the document robust to changes in the code and not unnecessarily burdensome to keep up to date. A good design document should place an emphasis upon temporal and state relationships (dynamic behavior) rather than static structure, which can be more readily obtained from automated analysis of the source code. Such a document will also explain the rationale behind the principal design decisions.


## Eliminates Duplication {#eliminates-duplication}

Duplication is anathema to good design. We expect different instances of the same problem to have the same solution. To do otherwise introduces the unnecessary burden of understanding two different solutions where we need only understand one. There are also attendant integrity problems with maintaining consistency between the two differing solutions. Each design problem should be solved just once, and that same solution applied in a customized way to different instances of the target problem.


## Is Internally Consistent And Unsurprising {#is-internally-consistent-and-unsurprising}

We often use the term "intuitive" when describing a good user interface. The same quality applies to a good design. Something is "intuitive" if the way you expect (intuit) it to be is in accord with how it actually is. In a design context, this means using well-known and idiomatic solutions to common problems, resisting the urge to employ novelty for its own sake.

The philosophy is one of "same but different" – someone looking at your design will find familiar patterns and techniques, with a small amount of custom adaptation to the specific problem at hand. Additionally, we expect similar problems to be solved in similar ways in different parts of the system. A consistency of approach is achieved by employing common patterns, concepts, standards, libraries and tools.


## Exhibits High Cohesion And Low Coupling {#exhibits-high-cohesion-and-low-coupling}

Our key mechanism for coping with complexity is abstraction – the reduction of detail in order to reduce the number of entities, and the number of associations between those entities, which must be simultaneously considered. In OO terms this means producing a design that decomposes a solution space into a half dozen or so discrete entities. Each entity should be readily comprehensible in isolation from the other design elements, to which end it should have a well defined and concisely stateable purpose. Each entity, be it a sub-system or class, can then be treated separately for purposes of development, testing and replacement. Localization of data and separation of concerns are principles which lead to a well decomposed design.


## Is As Simple As Current And Foreseeable Constraints Will Allow {#is-as-simple-as-current-and-foreseeable-constraints-will-allow}

It is difficult to overstate the value of simplicity as a guiding design philosophy. Every undertaking regarding a design – be it implementation, modification or rationalization – begins with someone developing an understanding of that design. Both a detailed understanding of a particular focus area, and a broader understanding of the focus area’s role in the overall system design, are necessary before these tasks can commence.

It is necessary to distinguish between accidental and essential complexity1. The essential complexity of a solution is that which is an unavoidable ramification of the complexity of the problem being solved. The accidental complexity of a solution is the additional complexity (beyond the essential complexity) that a solution exhibits by virtue of a particular design’s approach to solving the problem. A good design minimizes accidental complexity, while handling essential complexity gracefully. Accidental complexity is often the result of the intellectual conceit of the designer, looking to show off their design "chops." Sometimes a "simple" approach is misinterpreted as being "simple- minded." On the other hand, we might make a design too simple to perform efficiently. This seems to be a rather rare occurrence in the field. As the scope of software development broadens at the enterprise level and attracts greater essential complexity, the reduction of accidental complexity becomes ever more important.


## Provides The Necessary Functionality {#provides-the-necessary-functionality}

The ultimate measure of a design’s worth is whether its realization will be a product that satisfies the customer’s requirements. Software development occurring in a business context must provide business value that justifies the cost of its construction. Also of significant importance is the design’s ability to accommodate the inevitable modifications and extensions that follow on from changes in the business environment in which it operates.

But it is necessary to exercise great caution when predicting future requirements. An excessive focus upon anticipatory design can easily result in wasted effort resulting from faulty predictions, and encumber a design with unnecessary complexity resulting from generic provisions which are never exploited. Terms like "product line" and "framework" may be warning signs that the design is making high-risk assumptions about the future requirements it will be subject to.

It is easy to overlook the non-functional requirements (e.g. performance and deployment) incumbent upon the design. Taking different "views" of the design, in the manner of the "4+1" architectural views in RUP 2, can help provide confidence that there are no gaping holes (functional or otherwise) and that the design is complete.

1 The Mythical Man Month, Anniversary Edition, F. Brooks, Addison-Wesley,, 1995
2 Rational Unified Process, P Kruchten, Addison-Wesley, 1999
