+++
title = "Naming Classes: Do it Once and Do it Right"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:39:25-08:00
draft = false
+++

The selection of good class names is critical to the maintainability of your
application. They form the basic vocabulary in which developers speak and the
language in which they describe the code's every activity. No wonder then that
vague or misleading class names will quickly derail your best efforts to
understand the code base.

Because we are called on to invent class names so frequently, there is a tendency to become somewhat lackadaisical in our approach. I hope the following guidelines will assist you in devising meaningful class names, and encourage you to invest the effort necessary to do so. As always, these are just guidelines and ultimately you should use your own discretion.

1.  A Class Name Is Usually A Noun, Possibly Qualified.

The overwhelming majority of class names are nouns. Sometimes you use the noun by itself:
• Image
• List
• Position • File
• Exception
Other times you qualify the noun with one or more words which help to specialize the noun:
Class Name
JPEGImage
LinkedList
ParsePosition
RandomAccessFile
FormException
Grammatical Breakdown
The noun Image is qualified by the noun JPEG
The noun List is qualified by the adjective Linked
The noun Position is qualified by the verb Parse
The noun File is qualified by the adjective Random and the verb Access
The noun Exception is qualified by the noun Form

When searching for a noun to serve as a class name, consider the following suffixes which are often used to form nouns from other words:1
Suffix Example Class Names
-age Mileage, Usage
-ation Annotation, Publication, Observation
-er User, Broker, Listener, Observer, Adapter -or Decorator, Creditor, Author, Editor
-ness Thickness, Brightness, Responsiveness
-ant Participant, Entrant
-ency Dependency, Frequency, Latency
-ion Creation, Deletion, Expression, Enumeration -ity Plasticity, Mutability, Opacity
-ing Tiling, Spacing, Formatting
-al Dismissal, Removal, Committal

1.  Avoid Class Names That Have Non-Noun Interpretations

Suppose that while maintaining an application you come across a class called Empty. As a noun, instances of Empty might represent a state in which some vessel is devoid of contents. However the word "empty" can also function as a verb, being the act of removing all the contents of a vessel. So there is potential confusion as to whether the class models a state or an activity. This ambiguity would not arise if the class had been called EmptyState or EmptyActivity.

1.  A Class Name Is Sometimes An Adjective.

There is a special type of class called a structural property class2, which is often named with an adjective. Such classes exist to confer specific structural properties upon their subclasses (or implementers, in the case of interfaces). They are often suffixed with -able. Examples include:
• Comparable
• Undoable
• Serializable • Printable
• Drawable

1.  Use Commonly Accepted Domain Terminology

Specialist domains come ready-made with their own vernacular. This can be both a curse and a blessing. The down side is that newcomers to the domain have a lot of new terminology to master. The up side is that, once mastered, that terminology makes for efficient and precise communication with others fluent in the domain’s jargon. Incorporating domain terminology in your class names is a good idea, as it succinctly communicates a lot of information to the reader. But you must be careful to use only terminology that is commonly known and has a precise definition, and ensure that your usage of the term is consistent with that definition. Avoid region-specific slang and colloquialisms. Examples:
• DichotomousItem
• CorrigendaSection • DeweyDecimalNumber • AspectRatio
• OrganicCompound

1.  Use Design Pattern Names

Incorporating design pattern names like Factory, Proxy and Singleton into your class names is a good idea, for the same reasons that it is useful to use terminology from the application domain – because a lot of information is communicated succinctly. Just be careful not to get pattern- happy, and start thinking “everything is an instance of some pattern.” Only refer to design pattern names if they have direct relevance to the intrinsic nature of the class. Examples:
• ConnectionFactory • ClientProxy
• AccountObserver
• DocumentBuilder
• TableDecorator

1.  Aim For Clarity Over Brevity

Many developers demonstrate a form of scarcity thinking when it comes to naming classes – as if there were a shortage of characters in the world and they should be conserved. The days when we needed to constrain identifiers to particular length restrictions are long gone. Today we should be focused upon selecting class names that communicate effectively, even

if at the expense of a little extra length. With many developers using IDEs that support auto-completion, the traditional arguments in favor of abbreviation (typographical error and typing effort) are no longer applicable. The one case where abbreviation is warranted is specialist acronyms that are commonly used in the application domain e.g. CMOSChip is clearer than ComplimentaryMetalOxide- SemiconductorChip. Examples:
• ProductionSchedule is clearer than ProdSched • LaunchCommand is clearer than LaunchCmd
• ThirdParty is clearer than ThrdPrty
• ApplicationNumber is clearer than AppNum
• SystemCorrespondence is clearer than SysCorro 7. Qualify Singular Nouns Rather Than Pluralize
When a class represents a collection of some type, it can be tempting to name it as the plural of the collected type e.g. a collection of Part classes might be called Parts. Although correct, you can communicate more about the nature of the collection by using qualifying nouns such as Set, List, Iterator and Map. Examples:
Class Name
PartList
PartSet
PartPool
Group Semantics
Parts are ordered
Parts are unordered and each Part can not appear more than once Parts are interchangeable

1.  Find Meaningful Alternatives To Generic Terms

Terms like Item, Entry, Element, Component and Field are very common and rather vague. If these terms really are the standard terminology in your application domain then you should use them. But if you are free to use class names of your own invention then search for something more specific and meaningful.

1.  Imply Relationships With Other Classes

Naming a class provides you with the opportunity to communicate something about that class’s relationship with other classes in the application. This will help other developers understand that class’s place in a broader application context.

Some techniques that may be helpful in this regard:
• Use the name of a super-class or interface as a suffix e.g. call implementations of the Task interface PrintTask, ExecuteTask and LayoutTask.
• PrefixthenameofabstractclasseswiththewordAbstract.
• Name association classes by pre-pending and appending the class names on either side of the association e.g. the association between Student and Test could be called StudentTakesTest.

1 Bloomsbury Grammar Guide, Gordon Jarvie
2 Object Oriented Software Construction, 2nd Edition, Bertran Meyer
