+++
title = "The Folly of Emergent Design"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:37:28-08:00
draft = false
+++

One of the most pernicious ideas to proceed from the current focus on lightweight methodologies is that of Emergent Design. It's difficult to find a precise description of emergent design – most discussion on the subject carefully avoids committing to any particular definition. One of the most succinct descriptions I've encountered is this, from the adaptionsoft web site:

"Many systems eventually require drastic changes. You cannot anticipate them all, so stop trying to anticipate any of them. Code for today, and keep your code and your team agile." 1

Proponents of Emergent Design tout the following advantages of such an approach:
• Visiblesignsofprogressappearmorequickly.
• The system reaches a state in which it can be evaluated by customers sooner, which is useful for verifying existing requirements and teasing out as yet undiscovered requirements.
• Theriskof"analysisparalysis"iseliminated.
• No effort is wasted in the preparation of infrastructure to support
anticipated requirements that never actually manifest.
• An increased ability / willingness to adapt to changing requirements, as the development effort is not burdened by prior commitment to a particular solution approach.

Opponents of Emergent Design claim the following disadvantages:
• Exploration of alternative solutions takes much longer when using code as the vehicle for exploration, rather than a more abstract medium such as UML.
• The "code for today" approach discourages the reaping of long term savings in implementation effort by investing in supporting functionality in the short term.
Proponents will counter these by referencing the incremental nature of constant refactoring. Opponents will counter this with appeals to the benefits of a middle ground where "just enough" design is partnered with early prototyping 2. Eventually, somebody makes comment on somebody else’s mother and her preference for military footwear, and all hope of rational discussion is lost.


## An Example Of The Hazards Of Emergent Design {#an-example-of-the-hazards-of-emergent-design}

As near as I can ascertain, the project upon which I am currently working
employs Emergent Design, although there has been no explicit statement to that
effect. At the beginning of the year there were one or two group design
sessions, which identified the major subsystems of the product and how they
would collaborate to achieve one of the principal use cases. Since then, any
design efforts which have occurred have been of an incremental nature, and
generally done "on the back of an envelope" as individuals have struggled to
implement various aspects of a subsystem's functionality against pressing
deadlines. Thus, developers have only done what was necessary to achieve the
functionality need for the task at hand – which seems consistent with
the philosophy of Emergent Design.

The resulting code base bears some interesting characteristics which I believe
illustrate some of the difficulties inherent with the practical application of
an Emergent Design approach. To illustrate, consider the following three classes
from the application's current code base, presented here in abbreviated form:

```nil
public class YearLevel {
public YearLevel(NormYearLevel, Country, String, String); public getNormYearLevel() : NormYearLevel;
public getCountry() : Country;
public getScanText() : String;
public getLabel(): String;
}
public class NormYearLevel {
public static final NormYearLevel NORM_YEAR_1 =
new NormYearLevel(1);
public static final NormYearLevel NORM_YEAR_12 =
new NormYearLevcel(12);
private NormYearLevel(int aYearLevel);
}
public class RawYearLevel {
public RawYearLevel(String aScanText);
}
```

The main purpose of this application is to process the responses of junior and
secondary school students to multiple choice exams. A given exam may be taken by
students from different countries and therefore different educational systems.
The results are captured in individual and aggregate reports, which are printed
and dispatched to the participating schools.

It takes as input the data files resulting from the optical scanning of the exam
papers. Students indicate their "year level" as defined by the educational
system in force in their country (a "year" is variously referred to as a
"grade", "form" etc). For example, a student in year 3 in Australia would
indicate a "3"; a student in Grade 4 in France would indicate a "4" and so on.

What is notable about these three classes is that they represent three different
aspects of the same concept, and might well have been collapsed into a single
abstraction. More significant than the choice and number of abstractions used to
represent the concept, is the way these disparate representations came into
being. Each was created by a different developer, working in a different
subsystem from the others, and employing a philosophy consistent with Emergent
Design. A review of the version control history for each class traces their
genesis.

First came RawYearLevel, conceived of and implemented by a developer concerned with the early stages of the data processing pipeline, as a way of representing the student’s literal indication of what year they were in.

In parallel with RawYearLevel, the YearLevel class was created by a second developer working in another subsystem, who was focusing on the opposite end of the pipeline, where the results are embodied in hard copy reports. The YearLevel class (without the NormYearLevel association) captured enough information to print on a report "This student was in Year 6" or "This student was in Grade 8", depending on the country and the educational system it employed.

Lastly came the NormYearLevel class, created by a third developer working in a subsystem between the two mentioned above, that was responsible for calculating individual and population statistics. In the course of these calculations it becomes necessary to relate a year level in one country with its educational equivalent in another country. So the concept of a Normative Year Level was introduced, and the country- specific YearLevel abstraction was augmented to be associated with it’s normative equivalent.

Each of these classes has "emerged" from an individual developer’s immediate need to implement some portion of a subsystem’s functionality. To meet that need, they have done the simplest thing that could possibly work 3. That often means writing a class from scratch. If another developer creates the same or a similar abstraction in parallel, each will be unaware of the duplication until their work is integrated. Sometimes it is considered simpler to get partial leverage from an existing abstraction. In either case, the imperative is to achieve the target functionality as quickly as possible, such is the time pressure the developers are under (a situation common to many development shops). It is by no means certain that the design issues surrounding these abstractions will ever be revisited.


## Just Refactor It {#just-refactor-it}

The inefficiency of maintaining the above three abstractions is compounded by the amount of surrounding code that does little more than map from one type to another. Proponents of Emergent Design would suggest that the problem can be very simply overcome – just refactor the code. Of course, this is entirely possible. However there are some very real reasons why the abstractions have persisted in the application for 6 months or more, and have not been eliminated through refactoring.
• Nobody considers the refactoring to be of high enough priority to warrant spending our limited developer resources on. The task is not immediately related to any particular operational requirement, and so it is viewed as being less important than making functional progress.
• There is considerable psychological inertia associated with a body of code that is basically functional. Refactoring will mean losing that functionality for the duration of the refactoring task, and so superficially appears a retrograde step.
• Theclasseshavebecomepartofthevocabularyofthedevelopers,and they have come to think of them as being an intrinsic part of the system i.e. their presence is not openly questioned.


## Constraining Evolution Leads To Mutants {#constraining-evolution-leads-to-mutants}

Emergent Design is frequently likened to the process of evolution. Proponents speak of "evolving a design" , the implication being that some software equivalent of natural selection is weeding out the inferior mutants, leaving only the fittest to survive. If this is the case, why have the three classes above not evolved into a better design? Or is that evolution yet to occur? Or are these three classes actually the fittest to survive already, for some suitable definition of "fittest"?
I conject that the practical application of Emergent Design so constrains the evolution of the design elements that we cannot expect such an approach to have a reasonable chance of giving rise to a good design.

Comparing the evolution of a software design with the evolution of a species, we see the following significant differences:
• Evolution can take its time exploring as many dead ends and genetic cul-de-sacs as it likes. There is no supervising authority standing by looking for visible signs of monotonic progress. There are no time constraints or fiscal limitations that require evolution to produce a workable result within a certain number of generations.
• Evolutioncanexploremanyalternativesinparallel,butadevelopment group will rarely have sufficient resources to try a large number of different design alternatives in parallel. A very limited number of resources assigned to a design task must try alternatives in series, if at all. Obviously there is a strong tendency to stick with the first one tried that appears to hold promise.
• Evolution is objective in its evaluation of the success of each alternative. There is no attachment to a genetic alternative that is nearly good enough. However software developers often favor "pet" design approaches, or try and force non-optimal designs further than they should go because there is the promise of success just around the corner, and the attendant resolution of an uncompleted task. That is to say, it is very human to normalize deviation.
• Evolution is not required to be predictable. No one has bet their financial future on the lesser fairy penguin evolving heat dissipation mechanisms to cope with increasing Arctic temperatures, and doing it in no more than 3 generations. But stakeholders in software development efforts will commonly invest large sums to see successful designs produced (and thereby business problems solved) within a limited contract period.

You will find any number of elegant analogies in the Emergent Design literature – but finding one that addresses the above constraints is quite another matter.
For example, there is the delightful story (probably apocryphal) of the landscaping engineer who was asked to cement pathways at a University, after the buildings had been erected. Rather than predict the correct place to put the pathways, the engineer stood back for one semester and let the students make their own way between buildings. The furrows they wore in the ground were adopted as the courses for the cement pathways.

How very Zen... really, it's a terrific tale. I love it. But before we spin our prayer wheels and marvel at the engineers’ wisdom, let’s think of the liberties that the landscape engineer was allowed in pursuing such a solution method. Liberties which would be denied a great many University contractors in the real world:
• Thelandscapeengineerwasallowedtotakethetimenecessarytowait for the paths to emerge. What if the University had required completion sooner than that – say, before the semester started?
• The landscape engineer was allowed an entire semester in which he was not required to demonstrate visible progress. What if a competitor had taken advantage of this lull and offered to complete the job using best guesses of the correct routes for the pathways.
• The landscape engineer was free to distribute the labor and materials cost over the course of the project as he saw fit. What if the budgeting system of the University had made allowances for expenditure on landscaping in this semester, but not in the following one?
• AnentireUniversitycohortspentasemesterwalkingthroughthemud after every rainfall. They were willing to put up with this discomfort so that the engineer could let his design emerge. I wonder how the senior lecturers felt about this. More importantly, I wonder how those students in wheelchairs coped.

Emergent Design has the capacity to lead to some very elegant solutions – eventually. That design may be wonderfully efficient – if you have the financial stamina to await its arrival and the confidence that you will recognize it when it appears.


## Conclusion {#conclusion}

Does Emergent Design work? Of course - just look in the mirror. You and every other product of evolution is testament to the potential success of the approach.

Does that imply that it is a suitable model for designing software? No.

While the idea has aesthetic appeal, the practical context in which the emergence occurs makes all the difference. The requirements for timeliness and predictability in a software development project, together with the subjective nature of those who gauge the cost/benefit of a particular approach, mean that true, uninhibited evolution cannot occur. If the compromises embodied in an emergent design are consistent with our corporate priorities, then it will be by coincidence only – and that’s too important a matter to leave to chance.

1 <http://www.adaptionsoft.com/xp%5Fpractices%5Fsimple%5Fdesign.html>
2 Extreme Programming Refactored, M Stephens and D Rosenberg, Apress, 2003
3 <http://xp.c2.com/DoTheSimplestThingThatCouldPossiblyWork.html>
