+++
title = "FUDD: Fear, Uncertainty, Doubt and Design Documentation"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:38:43-08:00
draft = false
+++

"Think twice, cut once" - Carpenter's adage

In the years that I've been doing software development, the one source of recurring dispute between myself and colleagues is the issue of design documentation. I am of the opinion that the production and review of design documentation significantly increases the chances of producing quality software, and that such documentation should be an integral part of the development of any piece of commercial software.

In the course of advancing this argument, I believe I have heard every counter-argument known to man (or "excuses," as I prefer to call them). It would require a small book to document them thoroughly, in all their variation and inventiveness, but the following list covers the main ones:
• WehaveatightscheduleandthesoonerIbegincoding,thebetter.
• Thedocumentwillquicklydriftoutofsynchwiththecode.
• Icanalwaysproduceadesigndocumentlater,ifIhaveto.
• Noonelooksatdesigndocumentsanyway.
• Theinformationyoucapturecanbeobtaineddirectlyfromthecode.
• I'mpaidtowritesoftware,nottechnicaldocuments.
• Thecustomerwantsworkingsoftware,notdocuments.
• NobodydoesBigDesignUpFrontanymore.
• Neverhadtodoitonanyofmypreviousprojects.
• Everyoneontheteamknowshowthesystemisdesigned.
• Agooddesignwillemergeoncewebegincoding.
• It'sbetterjusttowritethecode,thenrecoverthedesignlaterwitha CASE tool.
• Icommentthesourcecodethoroughly.
• Youcan'treallyunderstandhowthesoftwarewillworkuntilyouwrite the code.

I'm not going to try and disprove any of these statements. The state of empirical research in the area and the vagueness of many of the statements themselves forbids disproof. Additionally, it is quite possible to develop and deliver software without a shred of design documentation. Indeed, it is common practice. But I believe that we can do better with design documentation than without it. In other terms, though a tradesman might achieve his end with blunt tools, the going is harder and the result messier than if he had used sharp tools. My experience suggests that design documentation is a sharp tool that we blunt with our own misconceptions and false beliefs about the role it plays in the development process. Given that I can't prove that to you, I will try and persuade you of it by challenging some of the beliefs underlying the above statements.

It should first be acknowledged that for many developers, the notion of writing documentation of any type is a task they anticipate with the same distaste as root canal work. In other words, any of the above stated reasons for eschewing design documentation may really just be an attempt to rationalize the real reason:
I hate writing documentation

I believe the enmity toward documentation that we see so much of in the development community derives largely from the cognitive shortcomings (real or perceived) of the average software developer. Many developers come from mathematics, science and engineering backgrounds, and talent in those areas is often accompanied by a proportional lack of ability in the humanities. Documentation requires expression in natural language, and a disturbing number of developers have approximately the same facility with the written word as a high school junior. Nobody enjoys doing things that they're no good at. It's frustrating and tiring.
From the reasons given above, I have tried to distill the core underlying beliefs:
• Wellwritten/commentedcodesubstitutesfordesigndocumentation • Theteamalreadyknowsthedesign,sothere'snoneedtodocumentit • Codeistheonlymeaningfulworkproductandsignofprogress
• Themaintenancecostofdesigndocumentationisprohibitivelyhigh

Let me challenge each of these beliefs in turn.


### Well Written/Commented Code Substitutes For Design Documentation {#well-written-commented-code-substitutes-for-design-documentation}

Design documentation can provide value before the code is even written.

Senior technical staff frequently maintain an architecture-level view of the system being developed, leaving front-line developers to focus on whatever functional area they are currently preoccupied with. These are two distinctly different mindsets, and switching back and forth between them is tiring. When you've got your head buried in a complex multi- threading problem, you're not inclined to be thinking about how your code fits into the overall scheme of things. Similarly, when you're sorting out architectural issues, you're not concerned with lower level implementation details. By having the design of a low level subsystem reviewed by someone with a high level view of system structure, we can ensure that individual units of work go together in an architecturally consistent manner.

Additionally, the very act of externalizing a design to a level of detail that convinces a reviewer that it is sufficient, can lead the developer to discover aspects of the problem they might otherwise gloss over in their haste to begin coding. The problem with "back of the envelope" designs and hastily scribbled whiteboard designs is that they make it easy to overlook small but problematic details.


### The Team Already Knows The Design, So There's No Need To Document It {#the-team-already-knows-the-design-so-there-s-no-need-to-document-it}

Those who have taken part in the construction of a system have had the opportunity to witness the evolution of its design and absorb it in a piecemeal fashion over a period of time. But new team members and maintainers are thrown in at the deep end and confronted with the daunting task of gaining sufficient familiarity with an unknown body of code to enable them to fix and enhance it. For these developers, design documentation is a blessing. It enables them to quickly acquire an abstract understanding of a body of code, without having to tediously recover that information from the code itself. They can come up to speed with greater ease and more quickly than they might without the guidance of the design documentation.


### Code Is The Only Meaningful Work Product And Sign Of Progress {#code-is-the-only-meaningful-work-product-and-sign-of-progress}

This statement is true if the only lifecycle activity you recognize is coding, and the only goal towards which you proceed is "code complete." As a design matures and different aspects of the solution space are explored, the designers' understanding of the problem deepens. This progress in understanding is real progress towards a solution, even though it is not captured in code. The exploration and evaluation of design alternatives is also real progress, the end result of which is captured in a design document.


### The Maintenance Cost Of Design Documentation Is Prohibitively High {#the-maintenance-cost-of-design-documentation-is-prohibitively-high}

Many developers view design documentation as a programmatic after- thought; something that you do after the real work of writing code is done, perhaps to satisfy a bureaucrat and create a paper trail. Any type of documentation produced in such a desultory fashion and out of a sense of obligation is likely to be low in quality, and of little use. So the preconception becomes a self-fulfilling prophecy.

It's not difficult at all to create useful design documentation, as long as you know what use you're going to put it to. I've found that useful design documentation can be achieved by following these two simple guidelines:

1.  Include only those details that have explanatory power. There's no need to put every class on a class diagram, or to include every method and attribute. Only include the most significant classes, and only those features that are critical to the class’s primary responsibilities; generally, these are the public features. Omit method arguments if you can get away with it. In other words, seek minimal sufficiency. This also makes the resulting document more robust to change.
2.  Focus on dynamic behavior, not static structure. If possible, restrict yourself to a single class diagram per subsystem. Associations and inheritance hierarchies are relatively easy to recover from source code, but the interactions that occur in order to fulfill a subsystem's main responsibilities are much harder to identify from the code alone. This is why reverse engineering of interactivity diagrams by CASE tools is ubiquitously done poorly. The primary function of the design document is to explain how the classes interact in order to achieve the most important pieces of functionality

That code can be written in such a way as to obviate the need for documentation is a retort of the documentation-averse that I've been hearing for many years. Those not keen on commenting their code will appeal to the notion of "self-commenting code". Those not keen on design documentation will claim "the code is the design". This phrase, as it is commonly used, is intended to convey the idea that the code is the only manifestation/representation of the software's design that can be guaranteed to be accurate. While a design document will drift out of synch with the code, the code will always serve as the canonical representation of the design it embodies.

I believe such reasoning constitutes a scarecrow argument in that it presents an image of design documentation as necessarily so detailed and rigorous that it is fragile and brittle. Certainly it is possible to write design documentation in that manner, but it is also possible to make it quite robust by exercising some common sense regarding content and level of detail.

To the XPers who promote such fallacies, I would ask this:
“If you believe you can write code in such a way that the cost of change becomes negligible, why can't you employ those same techniques to write design documentation with the same properties? A design document does not demand the same accuracy or contain the same complexity as source code; so why can't you just refactor a design document with the same ease with which you refactor your code?”

This inconsistency points to "the code is the design" argument as a failed attempt to rationalize personal preference. Twiddling with the code is fun, twiddling with diagrams is not (apparently).


## Conclusion {#conclusion}

Explicit consideration of design as a precursor to implementation has numerous benefits, most of which have their origin in the limited abilities of the brain to cope with complexity. Embarrassingly, there are those in our occupation who would deny the applicability of the mechanisms commonly employed in other fields to cope with these limitations. Abstraction, planning and forethought are as useful to software engineers as civil engineers. Design recovery from complex artifacts is just as difficult for us as for those in other construction-based occupations.

To get value from design documentation:
• Makeitapartofyourdevelopmentcycle-don'ttreatitasanoptional afterthought. Document as part of the design of each subsystem (NB: design documentation does not imply BDUF).
• Keepitasconciseaspossible,intheinterestsofmaintainability.
• Eschew CASE tools offering round trip engineering and use a simple drawing tool (personally, I like the UML stencils in Visio).
• Concentrate on capturing dynamic behavior rather than static structure.
