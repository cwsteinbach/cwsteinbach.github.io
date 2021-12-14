+++
title = "Anecdotal Evidence and Other Fairy Tales"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:47:15-08:00
draft = false
+++

As software developers we place a lot of emphasis upon our own experiences. This
is natural enough, given that we have no agreed upon body of knowledge to which
we might turn to resolve disputes or inform our opinions. Nor do we have the
benefit of empirical investigation and experiment to serve as the ultimate
arbiter of truth, as is the case for the sciences and other branches of
engineering - in part because of the infancy of Empirical Software Engineering
as a field of study; in part because of the difficulty of conducting controlled
experiments in our domain.

Therefore much of the time we are forced to base our conclusions about the competing technologies and practices of software development upon our own (often limited) experiences and whatever extrapolations from those experiences we feel are justified. An unfortunate consequence is that personal opinion and ill-founded conjecture are allowed to masquerade as unbiased observation and reasoned inference.

So absolute is our belief in our ability to infer the truth from experience that we are frequently told that personal experience is the primary type of evidence that we should be seeking. For example, it is a frequent retort of the XP/AM1 crowd that one is not entitled to comment on the utility of XP/AM practices unless one has had first hand experience of them. Only then are you considered suitably qualified to make comment on the costs and benefits of the practice - otherwise "you haven’t even tried it."

Such reasoning always makes me smile, for two reasons:

1.  It contains the logical fallacy called an "appeal to privileged knowledge". This is the claim that through experience one will realize some truth that forbids a priori description.
2.  If a trial is not conducted under carefully controlled conditions, it is very likely you will achieve nothing more than a confirmation of your own preconceptions and biases.

This post is concerned with the second point. It goes to the capacity humans have to let their personal needs, prior expectations, attitudes, prejudices and biases unwittingly influence the outcomes of technology and methodology evaluations – both researchers and subjects. There are a number of statistical and psychological effects whose influence must be eliminated, or at least ameliorated, before one can draw valid deductions from human experiences. Some of these effects are briefly described in the table below. Conclusions drawn from anecdotal evidence are frequently invalid precisely because the evidence has been gathered under circumstances in which no such efforts have been made.


## Observational Bias {#observational-bias}

When a researcher allows their own biases to color their interpretation of experimental results. Selective observation is a common type of observational bias in which the researcher only acknowledges those results which are consistent with their pre-formulated hypothesis.


## Population Bias {#population-bias}

When experimental subjects are chosen non-randomly and the resulting population exhibits some unanticipated characteristic that is an artifact of the selection process, which influences the outcome of an experiment in which they participate.


## The Hawthorne Effect {#the-hawthorne-effect}

Describes the tendency for subjects to behave uncharacteristically under experimental conditions where they know they are being watched. Typically this means the subjects improve their performance in some task, in an attempt (deliberate or otherwise) to favorably influence the outcome of the experiment.


## The Placebo Effect {#the-placebo-effect}

Describes the tendency of strong expectations, particularly among highly suggestible subjects, to bring about the outcome expected through purely psychological means.


## Logical Fallacies {#logical-fallacies}

Conclusions drawn from anecdotal evidence often exhibit one or more of the following deductive errors:

Post Hoc Ergo Propter Hoc
Meaning "after this, therefore because of this". When events A and B are observed in rapid succession, the post hoc fallacy is the incorrect conclusion that A has caused B. It may be that A and B are correlated, but not necessarily in a causal manner.


## Ignoring Rival Causes {#ignoring-rival-causes}

To disregard alternative explanations for a particular effect, instead focusing only upon a favorite hypothesis of the researcher. It is common to look for a simple cause of an event when it is really the result of a combination on many contributory causes.


## Hasty Generalization {#hasty-generalization}

The unwarranted extrapolation from limited experimentation into a broader context.


## Examples {#examples}

The following scenarios demonstrate how easily one or more of the above factors can invalidate the conclusions that we reach based on our own experience - thereby reducing the credibility of those experiences when later offered as anecdotal evidence in support of a conclusion.


### The Linux Enthusiast {#the-linux-enthusiast}

Chris is a Linux enthusiast. On his home PC he uses Linux exclusively, and often spends hours happily toying with device drivers and kernel patches in an effort to get new pieces of hardware working with his machine. In his work as a software developer he is frequently forced to use Microsoft Windows, which he has a very low opinion of. He is prone to waxing lyrical on the unreliability and insecurity of Windows, and the evil corporate tactics of Microsoft. Whenever he experiences a Blue Screen of Death on his work machine, his cubicle neighbors know that once the cursing subsides they are in for another of his speeches about the massive productivity hit that Windows imposes on the corporate developer. When surfing the web during his lunch hours, if he should come across a reference to Linux being used successfully as an alternative to Windows, then he will print out the article and file it away for future reference. He is confident that it is only a matter of time before Linux replaces Windows on the desktop, both in business and at home.

Analysis: Chris exhibits observational bias in a few ways. The hours he spends getting his Linux machine to recognize a new piece of hardware is enjoyable to him, and so he chooses not to observe that the same outcome might be achieved on a Windows system in a minute, thanks to plug-and- play. When he gets a BSOD, he chooses to observe its negative effect on his productivity while he waits for a reboot, but chooses to disregard the productivity cost of his subsequent anti-Microsoft pontifications. When surfing the web, he selectively observes those stories which are pro-Linux and/or anti-Microsoft in nature. Indeed, the media is complicit in this practice, because such stories make good press. There may be many more occasions in which Linux was unsuccessful in usurping Windows, but they are unremarkable and unlikely to attract media coverage. His confidence in Linux’s ultimate victory based upon his selective observations is a very hasty generalization.


### The XP Proponent {#the-xp-proponent}

Ryan and his team have been reading a lot about XP recently and are keen to try it out on one of their own projects. They have had difficulty getting permission to do so from their management, who are troubled by some aspects of XP such as pair programming and the informal approach to documentation. Through constant badgering, Ryan finally gets permission to use XP on a new project. But he is warned by his management that they will be watching the project’s progress very carefully and reserve the right to switch the project over to the company’s standard methodology if they think XP is not working out. Overjoyed, Ryan’s team begins the new project under XP. They work like demons for the next six months, doing everything in their power to make the project a success. At the end of that time, the project delivers a high quality first release into the hands of a few carefully chosen customers. Feedback from these customers is unanimously positive. Management is suitably impressed. Ryan and his team breathe a sigh of relief.

Analysis: The participants are a self-selected group of enthusiasts, which is an obvious source of population bias. It could be that they have an above-average level of ability in their work, and a commensurately higher level of enthusiasm and dedication - which drives them to try new approaches like XP. Their project’s success may be partly or entirely attributable to these greater capabilities they already had. Knowing they are being closely evaluated by management and have put their necks on the line by trying XP despite management’s concerns, they are also victims of the Hawthorne Effect. They are very motivated to succeed, because they perceive potential adverse consequences for themselves individually if they should fail. If Ryan’s team or their management attributes the project’s success to XP itself, then they are guilty of ignoring the rival causes just described. It may be that they succeeded despite XP, rather than because of it.


### The Revolutionary {#the-revolutionary}

Seymour thinks there is something wrong with the way university computing students are taught to program. He feels there is insufficient exposure to the sorts of problems and working conditions they will encounter when they finish their degrees. He strongly believes that students would become better programmers and better employees if there were a greater emphasis upon group programming assignments in the academic environment. This would enable them to develop the skills necessary to function effectively in a team, which is the context in which they will spend most of their working lives. To demonstrate the effectiveness of the group approach, he asks for some volunteers from his third year software engineering class to participate in an experiment. Rather than do the normal lab work for their course, which is focused on assignments to be completed by the individual, they will do different labs designed to be undertaken in groups of four or five. These labs will be conducted by Seymour himself. About 30 students volunteer to take part. At the end of the semester, these students sit the same exams as the other students. Their average mark is 82% while the average mark of the other students is 71%. Seymour feels vindicated and the volunteer students are pleased to have taken part in a landmark experiment in the history of computing education.

Analysis: Here is a case of population bias that any competent researcher would be ashamed of. The volunteer group is self-selected, and so may be biased toward those students that are both more interested and more capable. Poor performing, disinterested students would be unlikely to volunteer. The Hawthorne Effect comes into play due to the extra focus that Seymour places upon his volunteer group. They may receive extra attention and instruction as part of their labs, which may be enough in itself to improve their final grades. Additionally, knowing they are part of a select group, at some level they will be motivated to please the researcher and demonstrate that they have performed well in their role as "lab rats." Their superior performance in the final exam may be a result of these confounding factors, and have nothing to do with the difference between individual and group instruction. It would certainly be a hasty generalization to conclude that their better exam results will translate into better performance in the workforce.


## Conclusion {#conclusion}

I hope this post will give you pause for thought when you next conduct a
technology trial, and when you are next evaluating anecdotal evidence supplied
to you by friends and colleagues. Because personal experiences are particularly
vivid, we often tend to over-value them. From there, we can easily make
unwarranted generalizations and overlook the confounding effect of our own
preconceptions and biases.

In particular, next time one of the XP/AM crowd voice the familiar retort of
"How could you know? You haven’t even tried it" - bear in mind that
in the absence of quantification and controlled experimental technique, they
don’t know either.
