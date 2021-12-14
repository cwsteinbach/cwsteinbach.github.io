+++
title = "The Mismeasure of Man"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:35:39-08:00
draft = false
+++

Software developers are drawn to metrics for a variety of reasons. Generally, their motivations are good. They want to find out something meaningful about the way their project is progressing or the way they are doing their job. Managers are also drawn to metrication for a variety of reasons, but their motives are not necessarily honorable. Some managers view metrics as an instrument for getting more work out of their team and detecting if they are slacking off.

Performance metrics – metrics intended to quantify individual or group performance – can be useful if they are employed sensibly and in full awareness of their limitations. Unfortunately, it is very common for performance metrics to be gathered and interpreted in ways that are ultimately harmful to a project and its developers. Many is the metrics program that, through inept implementation and application, has engendered anger and resentment amongst those it was intended to benefit.
Below, we consider various performance metrics commonly encountered in development environments, the ways they are abused, and illustrate their misuse with some examples taken from my own experience and the experience of others as they have related it to me.

The Number Of The Counting Face Time
This is perhaps the most commonly abused "metric" in the software development world. For reasons of both tradition and convenience, many managers and developers alike persist in considering the number of hours spent in front of the screen as being some indication of how devoted a programmer is to their work. Those that work long hours are considered "hard workers," those that keep regular hours are considered "clock watchers."

The fault behind such thinking is the assumption that software development is a manufacturing-like process, rather than a problem- solving process. If a worker on a production line works an extra hour then the result is an extra hours' worth of stuff. If they work an extra three hours then the result is an extra three hours worth of stuff; which will be exactly three times the quantity of extra stuff they would've produced had they only worked a single extra hour. If their role on the production line is menial assembly work, then the quality of the stuff they produce in their third hour of overtime will be the same as the quality of the work from their first hour of overtime. In such an environment, it is reasonable to see productivity as a direct function of time on the job.

But software development is nothing like this mechanistic process. It is a complex, intellectual effort conducted by knowledge workers, not a menial assembly task performed by laborers. So more hours spent in front of the screen does not necessarily equate to more progress. For example, long work hours might be a result of problems such as:
• Relyingontrialanderrorratherthanthinkingahead
• Goofingoffsurfingtheweborsocializing
• Solvingthewrongproblem,andhavingtostartagain
• Gold-plating(extendingscopebeyondwhatisrequired,simplyforthe satisfaction of it)
• Using a lengthy, inefficient algorithm rather than a smaller, elegant one
• Writing functionality that should have been purchased in a third party library
• Makingthesolutionmoregenericthanisnecessary
• Poor understanding of the technologies employed, resulting in a lot of
thrashing
• Losing a lot of time to debugging, because of the higher defect injection rates that occur when working while fatigued
• Overly ambitious scheduling resulting from poor self-insight and lack of experience

So by expecting or encouraging long working hours, we may simply be rewarding poor performance and inefficient work practices.
I first encountered the obsession with working hours at a small "dot com" company I once had the misfortune to work for. Full of bright and enthusiastic young people, the CTO of this company considered his stable of go-getters a resource to be exploited to the fullest. Not being the most technically aware of CTOs he was unable to assess the performance of the technical staff that reported to him in any meaningful way, so he was forced to rely on what he considered to be secondary indicators of performance – the number of weekly hours each employee logged in their electronic time-sheet.

Those with more experience of his somewhat indirect approach to assessment were quite generous when it came to such time-keeping tasks, logging some spectacular hours – some of which they actually worked. Those unfamiliar with the man’s chronological obsession, such as myself, made the mistake of working efficiently and recording their work hours accurately. This did not go down so well.

In my letter of resignation I cited unscrupulous and irrational management practice as one of the principal reasons I was leaving. On my last day at said company I received what is, to date, the only written response to a resignation that I have ever encountered. The response contained a month-by-month tabulation of average daily working hours – both the company average and my personal figures. Of course, my "performance metric" was disgustingly normal, whereas the company averages seemed to indicate that many staff were dedicating all their waking hours to work. The conclusion was obvious – I was not putting in the sort of effort that was expected of me. How right they were.

Lines Of Code
It should be common knowledge that lines of code (LOC) and non- comment lines of code (NLOC) are not measures of size, productivity, complexity or anything else particularly meaningful. It is none-the-less very common to find them being used in the field to quantify exactly these characteristics. This is probably because these metrics are so easily gathered and there is an intuitive appeal to equating the amount of code written with the amount of progress being made.

But it is a big mistake to consider large quantities of code necessarily a good thing, for large volumes of code may also be symptomatic of problematic development practices such as:
• Unnecessarily complex or generic design
• Cut-and-paste reuse
• Duplication of functionality
Large quantities of code can also bring such problems as:
• A greater opportunity for bugs
• A greater maintenance burden
• A greater testing effort
• Poor performance

So by rewarding those who produce larger quantities of code, we may simply be encouraging the production of a burdensome code base.

The story is told of a team of developers whose well-meaning but uninformed manager decided that he would start measuring their individual contributions to the code base by counting the number of lines of code each of them wrote per week. Fancying himself as more technically informed than most other middle managers, he wrote a simple script to count the number of lines of code in a file.

The project was written in C. Figuring that most statements in C ended in a semicolon, he presumed that his script could just count the number of semicolons in the file and that would give him the number of C statements. He congratulated himself on thinking of this clever counting method, which would not be susceptible to differences in coding style between developers, nor any of the techniques developers sometimes employed to try and manipulate metrics in their favor by changing the layout of their code.

However a few of the developers got wind of the technique their manager was using, and started writing function comments containing long rows of semicolons to delineate the beginning and end of the comment block.

Their measured rate of code production skyrocketed ... so much so that their manager became suspicious and, looking at the code to manually verify that his script was working correctly, discovered what was going on. But the developers simply claimed that their recent change in comment style was just an innocent search for greater code readability The manager could not prove otherwise.


## Function Points {#function-points}

In some circles, Function Points (FPs) have currency as a way of measuring the size of a piece of software. There are complex counting procedures that enable functionality to be expressed as a number of FPs in an ostensibly language-independent way. The formation of the IFPUG (International Function Point Users Group) and the amount of semi- academic study they have received has invested FPs with a certain amount of faux credibility. However, this credibility is undeserved, as FPs are a fundamentally flawed metric. They are not a valid unit of measurement, nor can they validly be manipulated mathematically. Any metric involving them is approximately meaningless. FPs have been discussed at length in a previous article1.


## Screens {#screens}

Having worked principally in the area of rich-client and desktop applications, I've witnessed numerous mismeasures of progress from this domain. The most foolish of them was to use a "screen" (dialog / window) as a unit of measurement. Thus, if programmer A implemented two dialogs in the time programmer B implemented one, A was considered to be twice as productive as B.

The faults with such an approach are alarmingly obvious, but often ignored by an unthinking management that is too impressed by the fact that they can attach numbers to something, which creates a false impression that they are measuring something. Such are the perils of metrication in the hands of the ignorant.
To labor the obvious, here are a few reasons one programmer might produce more "screens" than another, that have nothing to do with productivity:
• Theirscreensweresimplerinappearanceand/orbehavior.
• Their screens were sufficiently similar in appearance and/or behavior,
so there could be code re-use between them.
• Their screens could be constructed with standard GUI components, without the need for custom components being developed.
• Their screens were not the end result of a usability-based design process, but were whatever was most programmatically expedient.

By counting "screens" as a measure of progress, we encourage programmers to race through their tasks, giving short shrift to issues of usability and reuse.
I once worked for a small firm in the finance industry. Their flagship product was a client/server application for managing investment portfolios. I was brought in, together with another GUI guy, to extend the functionality of the system and clean up a few of the existing screens and dialogs. Under the hood, this product was a disaster. Poorly coded, undocumented and architecturally inconsistent, it was the end result of the half-hearted, piece-meal hacking of many previous generations of contractors.

The gentleman who had shepherded all these contractors through the company doors, and who considered himself both Technical Lead and Project Manager, was not heavily into software. Indeed, he never actually bothered to look at the application's code. He had only one way to gauge individual or collective progress and that was on the basis of appearance. If a piece of work involved lots happening on the screen, then he figured that it represented a lot of work. If it wasn't visually significant, then he figured there probably wasn't much to it. Let's call him Senior Idiot.

He and I did not get on so well, right from the start. I'm told I don't suffer fools lightly and as fools go, this guy was an exceptional specimen. My fellow GUI guy was no better. Examining the code that he wrote and the work he delivered, it was clear he was working at a level consistent with the noxious quality of the existing code base. Let's call him Junior Idiot.

A few months after I started, Big Idiot took me aside and asked why my progress was "so slow." I thought this was an interesting comment, given that by my own analysis I was generating good quality code at a rate several times the industry average. Both the code and the resulting interfaces were some of the best they had in the entire, sorry product. When I enquired how he had determined my progress was "slow" given that he never actually looked at code, he explained that he was comparing the "number of screens" Little Idiot had managed to grunt out, to what I had developed in the same time. Little Idiot was some way in front.
He was correct. Little Idiot had produced several rather large screens (large in the sense that they occupied many pixels, not in the sense that they represented a lot of functionality). They were usability disasters, every one of them, and the product of some pretty deft cut-and-paste but, scatological in quality as they were, they were there to be seen.

After some chuckling, I tried to carefully explain to him the "discrepancy" that he saw was because Little Idiot was spitting out rubbish as quickly as possible, and I was taking some time to do a decent job. Additionally, Little Idiot was producing non-reusable code , whereas I was writing general purpose code, reuse of which would mean that future work, both my own and others, would progress much more quickly than Little Idiot could ever do. He was not convinced and my time at this little company came to an end shortly thereafter, much to our mutual relief.


## Iterations {#iterations}

Unbelievable as it is, I can honestly say that I've seen entire projects compared on the basis of what iteration they are up to in their respective schedules. Suppose projects A and B both employ an iterative methodology. A is in the third of five planned iterations, B is in the fourth of seven planned iterations. Some observers may then conclude that project A is behind project B because "three" is less than "four." Others might conclude that project A is ahead of project B because it has completed 60% of its iterations and B only 57%.

I recall the organization in which I first encountered this. A rather hubristic, research oriented environment in which some very clever people worked. Sadly, the quality of the management was not on a par with the quality of the technical staff. As they say, "A fish rots from the head down," so it was no surprise that the manager at the top was not as clued up in many areas as one might like.

At this time, "data warehousing", "knowledge management", "project cross-fertilization" and "knowledge repositories" were the buzzwords that substituted for critical thought. Mashing all these concepts together in his head, the top guy decided to establish a "project wall" in the office, upon which the project managers were required to post the Gantt charts for their respective projects, and keep them up to date. This strategy was meant to promote some sort of comparison and knowledge sharing between projects, although exactly how this was to be done meaningfully was never quite made clear. The device became widely known as "The Wall Of Shame", as that was its obvious but unstated purpose – to publicly shame those managers whose projects were running behind schedule. Presumably, the potential for embarrassment was meant to encourage individual project's to maintain schedule.

It came as a surprise to no-one but the man who instituted the scheme, that it had precisely no effect on anything, except to become the focus of widespread derision.


## Tasks / Bugs {#tasks-bugs}

Many software development teams allocate work to individuals on a per-task basis. Typically, these tasks are tracked in some electronic form – perhaps as bugs in a bug tracking system or tickets in a trouble ticket system. XP projects like to track tasks on pieces of card because the arts- and-crafts association creates the illusion of simplicity (an illusion which disappears when reports of any kind are required, or when the first strong breeze comes along).

Regardless of the mechanism used, "the task" is so useful as a unit of work allocation that it is very tempting and convenient to think of it as a unit of measurement. Of course, it is not a unit of measurement, as no two tasks are the same. A tiny, one-line bug fix might be captured as one task, as might the implementation of an entire subsystem. The granularity is ever-varying, making any mathematical comparison of task counts meaningless.

But convenience outweighs reason and so one frequently finds, particularly amongst the ranks of management, the tendency to equate high rates of task completion with high productivity and effort, and lower rates with lower productivity and effort. The mistake is so common that developers become quite practiced at gaming the system to make themselves look good. Common image enhancement techniques include:
• Breaking work down into unusually small tasks, thereby enabling a greater number of tasks to be completed at a faster rate.
• Registering tasks as completed before they have been properly tested. This enables bugs to be readily found in the work, each of which will be considered a separate task. These tasks can be completed relatively quickly because the programmer is familiar with the code at fault, having just written it.
• Registering tasks multiple times, describing it in slightly different ways each time. Once completed, all the tasks are closed, with all but one marked as duplicates. If the management forgets to exclude duplicate tasks from their reporting, the programmer's rate of task completion is artificially inflated. He might also "forget" to mark some of the duplicate tasks as being duplicates, to further enhance the effect.
• When a task is found to be more involved than originally thought, rather than revise the scope of the existing task, new tasks are spawned to capture the unanticipated work. Their eventual completion will mean that the number of "completed" tasks registered against the programmer's name is greater.
• When selecting work to do, programmers gravitate towards the short tasks which can be easily dispensed with, enabling them to quickly get runs on the board.

When invalid metrics are gathered, the result is often to contort the team member's work practice so as to create the best perceived performance, regardless of what their actual performance might be.

A colleague once related to me the story of two teams of developers in a multinational company who reported to the same manager. One team contained three developers working mainly on maintenance tasks, documentation and bug fixing. The other, containing six developers, worked on per-client product customizations. Both happened to use a common issue tracking system.

A developer from the smaller team complained to the manager about the discrepancy in work loads between the two teams. He felt that his own team was dreadfully overburdened while the larger one just seemed to be taking it easy. Although uncertain that the developer's complaint was valid, the manager felt compelled to "handle" the situation in a managerial kind of way. Turning to the issue tracking system he did a few simple queries and discovered that the small team was closing issues at nearly twice the rate of the larger team. This struck him as confirmation of the developer's complaint. After all, a team twice as large should be getting through issues much faster than a team half its size.

So the manager sent an e-mail to all members of both teams, and CC'd the general manager. In this e-mail he highlighted the discrepancy in issue closure rate for the two teams, chastised the larger team for slacking off and praised the smaller team for their hard work.

The original complainant was suitably appeased, but the other members of his team, along with the entirety of the larger team, were not quite so happy. The following day, the leader of the larger team came to the managers office and explained to him, in a tone of barely suppressed hostility, that the two teams worked on completely different sized issues, and so comparing issue closure rates across the two was quite meaningless. The smaller team addressed issues that could generally be resolved in a single day, two days at the most, and so naturally they got through them at a fairly rapid pace. His team, the larger one, addressed implementation issues that might legitimately involve weeks of effort, including design, requirements gathering and testing. He was more than a little offended that his hard working team was being reprimanded on such an irrational basis.

The manager admitted his error – but of course, never apologized to those he had offended.


## Version Control Operations {#version-control-operations}

Astonishing as it may seem, some developers like to commit changes to their version control system frequently to create the impression that they are hard at work. This only works if you are managed by the technically incompetent. In other words, it works more frequently than you would like.


## Requirements Completed {#requirements-completed}

Regardless of whether you capture your requirements in tabular, use case or story card format, individual requirements make spectacularly bad units of measurement.
Consider the enormous variation in scope that can exist between one requirement and another. "The user shall not be able to enter an age greater than 120 or less than 0" counts as "one requirement"; so does "The system shall reserve the section of track for the given vehicle in accordance with safe-working procedure SP-105A." But the latter is probably a far greater undertaking than the former, and we would expect it to take significantly more time and effort to complete. Pity the developer who is assigned the task of satisfying this requirement, only to have his labors viewed as an achievement "equal" to that of his colleague who was assigned the simpler age-related requirement.


## Noise Generated {#noise-generated}

Some programmers just get the job done. Others seem to find it necessary to let others know that they are getting the job done. You've probably met the type before. Every little obstacle and difficulty they encounter seems to be a major drama to them – almost a theatric opportunity. These are the same programmers who will work overtime to fix problems of their own creation, then seek credit for the extra hours they've put in. Although there is no number associated with their vociferations, they effectively multiply the amount of perceived work they are doing, and inflate the perceived effort they are making by drawing attention to their actions.

I once worked with such a programmer. He was a hacker of the first order; and I use the word "hacker" in the pejorative sense. Each day over the lunch room table he would regale us with stories of his mighty development efforts, the technical heights to which he had scaled, and the complex obstacles he had overcome – all of these adventures apparently having happened since the previous day's story-telling episode. But when you actually looked in the source code for evidence of these mighty exploits, you would find only an amateurish and confused mess, and be left wondering how so much difficulty could have been encountered in the achievement of such modest results.


## Pages Of Documentation {#pages-of-documentation}

Used intelligently, documentation makes a useful component of the development process. But when seen as an end in itself, documentation becomes a time-consuming ritual for comforting self-serving administration. Strange then that we should so frequently see, most often in heavily bureaucratic environments, people striving to generate technical specifications that are as voluminous as possible, apparently fearing that brevity will be interpreted as evidence of laziness. A page fails to measure either effort or progress for all the same reasons that "Lines of Code" fails. Stylistic variations mean there is little relationship between volume of text and effective communication as there is between volume of code and functionality.


## Conclusion {#conclusion}

In the above you will have noticed the same problems occurring again and again. All these scenarios reflect a poor understanding of the basics of measurement theory, together with a willingness to rationalize a metric's invalidity because of the ease with which it can be collected.

Essentially, a valid unit of measurement is a way of consistently dividing some real world quantity into a linear scale. In other words, X is a valid unit of measurement if X is half as much of something real as 2X is, one third as much of something real as 3X, and so on. For this to be true, all instances of X must be the same. For example, the "meter" is a valid unit of measurement because 2 meters is twice the linear distance of 1 meter, and all instances of the "meter" are the same. The "1 meter" that exists between the 0 and "1 meter" marks on your tape measure is the same quantity of something real as the "1 meter" between the "4 meters" and "5 meters" marks. Compare this to an invalid metric like a "task." A task doesn't divide any real world quantity into equal portions. In particular, it doesn't divide effort or work into equal portions, because different tasks might require different amounts of work to complete. So "2 tasks" is not twice "1 task" in any meaningful sense. Put more simply, when comparing tasks, you're not comparing like with like.

The attraction to metrics, even false ones, perhaps stems from the false sense of control they offer. Once we pin a number on something, we feel that we know something about it, that we can manipulate it mathematically, and that we can make comparisons with it. But these statements are only true for valid metrics. For false metrics like bugs, tasks, function points, pages, lines of code, iterations etc., we create only the illusion of knowledge. The illusion may be comforting, particularly to those of an analytical bent, but it is also an invitation to misinterpretation and false conclusions.

We might try and rationalize these invalid metrics, figuring that they may not be perfect, but they are "close enough" to still have some significance. But really this is just wishful thinking. You might think, "our tasks may not be exactly the same, but they're close enough in scope that 'tasks completed' still means something." Really? What evidence do you have that these tasks are of approximately equal scope? If you're honest with yourself, you'll find you've got nothing more than gut feel to justify that statement. Yet the very reason we use metrics is to obtain greater surety than that provided by gut feel. So we see we are really just trying to convince ourselves that our own guesswork can be somehow made better by hiding it behind a number – borrowing the credibility often associated with quantification.

Metrics are a tool easily abused. A common cause of mismeasurement is their punitive application with the intent of motivating higher productivity. In their zeal to find some way to meet a deadline, managers sometimes sacrifice reason for expediency, hoping that some hastily contrived metric can be used to convince someone that they need to be working harder. Of course, such tactics frequently backfire, resulting only in developers feeling resentful of such numeric bullying.

See Function Points: Numerology for Software Developers
