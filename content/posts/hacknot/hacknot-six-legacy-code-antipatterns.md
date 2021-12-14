+++
title = "Six Legacy Code AntiPatterns"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:44:22-08:00
draft = false
+++

I recently began work on a J2EE project – a workflow assistance tool that has
been under development for a few years. The application is totally new to me and
yet is immediately familiar, for it bears the scars and wounds so common to a
legacy system. Browsing through the code base and playing with the GUI, the half
dozen legacy code anti-patterns that leave me with déjà vu are listed below. How
many do you recognize?


## Nadadoc {#nadadoc}

The Javadoc has been written in a perfunctory, content-free manner, giving rise to what I call Nadadoc. Here’s an example of Nadadoc:

```java
/**
  * Process an order
  *
  * @param orderID
  * @param purchaseID
  * @param purchaseDate
  * @return
  */
  public int processOrder(int orderID, int purchaseID, Date purchaseDate);
```

Just enough text is used to assuage any niggling professionalism the author might be experiencing, without the undertaking the burden of having to communicate useful information to the reader. Commenting of code is an afterthought, achieved by invoking the IDE facility for generating a Javadoc template and performing some token customization of the result.


## Abandoned Framework {#abandoned-framework}

With school boy enthusiasm, the original authors have decided they know enough about their application domain to build a framework for the construction of similar applications, the first use of which will be the product they are trying to write. Such naivety is driven by grand notions of reuse not yet tarnished by contact with the real world. Classes constructed early in this project are so insanely generic that even fundamental types such as java.util.Enumeration are rewritten with bespoke versions that are ostensibly more general purpose. Classes constructed later in the project, after the team realizes that constructing a framework within the time allowed is totally infeasible, are application specific hack-fests.


## GUI - Designed By Programmers And Written By Borland {#gui-designed-by-programmers-and-written-by-borland}

Software developers seem to ubiquitously suffer the self-deception that it is easy to design a good user interface. Perhaps they confuse the ability to program a GUI with the ability to design one. Perhaps the commonality of GUIs leads them to think "everyone’s doing it, so it must be easy." In any case, you can often spot a GUI designed by programmers at a glance. This is certainly the case with my current project. Common usability guidelines are violated everywhere - no keyboard access to fields, no keyboard accelerators, group boxes around single controls, no progress indicators for long operations, illogical and misaligned layouts.
At the code level, the story is even worse. Many elements of the UI have been generated by the GUI builder in an IDE – in this case JBuilder. Although it is possible to generate semi-acceptable code from these things, they are rarely used to good effect. When the default control names and layout mechanisms are used, the generated code becomes a real maintenance burden, consisting of a complex combination of components with names like panel7, label23 and the like.


## Oral Documentation Is Mostly Laughter {#oral-documentation-is-mostly-laughter}

If you can’t be bothered writing documentation, the lads at Fantasy Central (otherwise known as XP-land) have provided you with a ready- made out in the form of the oxymoron "oral documentation". When maintenance programmers ask "Where’s the documentation?" you need only say (preferably with smug self assurance) "We use oral documentation."

The developers of this system relied very heavily on oral documentation, and there are just a few problems with it that the XP dreamers generally neglect to mention:
• Thedocumentationsetbecomesself-referential.IfyouaskJohnabout component X, he’ll refer you to Darren, who refers you to James, who refers you back to John. Not because they don’t have the answers, but because explaining the inner workings of systems they’ve left behind is boring.
• Parts of the documentation set keep walking out the door due to attrition. Some chapters are unavailable due to illness.
• The documentation fades rather quickly. As developers move on and become ensconced in new projects, the details of the projects they’ve left behind quickly fade.
• Certain pages in an oral documentation set are bookmarked with laughter. In this system, a great many of them are so marked. The laughter disguises the embarrassment of the original developers when you uncover the hacks and shortcuts in their work. Not surprisingly, developers are loathe to discuss the details of work they know is sub- standard, and enquiries in these areas result in information that is a guilty mix of admission and excuse.


## Cargo-Cult Development Idioms {#cargo-cult-development-idioms}

When developers can't understand how the code works, they tend to add functionality by just cutting and pasting segments of existing code that appear to be relevant to their development goal. There develops a series of application-specific idioms that are justified with the phrase "that’s just how we do it." No one really knows why - sufficiently detailed knowledge of the code base to choose amongst implementation alternatives on a rational basis is lost or not readily available, so the best chance of success seems to be to follow those implementation idioms already present in the code.


## Architecture Where Art Thou? {#architecture-where-art-thou}

Many developers are not very enthusiastic about forethought. It just delays the start of coding, and that’s where the real fun is. Alas, when there is no pre-planned structure for that code it tends to grow in a haphazard, organic and often chaotic way. Rather like growing a vine - if you train the vine up a trellis, then the resulting plant exhibits at least a modicum of structure. Without the trellis, the vine wanders randomly without purpose or regularity. My current project was grown without a trellis and is riddled with weeds and straggling limbs. The original developers have, presumably against their will, attempted to document the project as if there were some intentional underlying structure. But there is too little accord and too many inconsistencies between the structure described and the reality of the code base for the one to have guided the construction of the other.