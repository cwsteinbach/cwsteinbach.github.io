+++
title = "The Architecture Group"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:35:32-08:00
draft = false
+++

An organizational antipattern that I have seen a few times now is the formation of an Architecture Group. Architecture Groups generally have the following purposes:
• Todesigntheenterprisearchitecturesharedbyagroupofapplications within an organization
• Toreviewthedesignofprojectstoensuretheyareconsistentwiththe enterprise architecture
• Toprescribethestandardtechnologiestobeusedacrossprojectsinthe organization
In summary, the Architecture Group is an internal "governing body" and "standards group" rolled into one. Membership of the group tends to be restricted by seniority – the architects and senior technical staff.

In general, the Architecture Groups I've witnessed in action have been disastrous. That's not to say that it need necessarily be so – I have no legitimate basis for generalizing beyond my direct experience – but based on the reasons that I've seen these groups fail, I conject that failure is a likely outcome of any such group.
The negative impact of an Architecture Group often originates from the tendency to create an "us and them" mentality amongst staff. Because the group makes technology and design decisions which are then imposed upon other projects, those working on individual projects come to resent the architecture group for the constraints they have placed upon the project. Working at the overview level, as an architecture group does, it is difficult or impossible to keep track of the low level details of a variety of projects. And yet the details of those projects are key determinants of the suitability of the technologies and designs that the architecture group deals with. Project staff come to view the architecture group as dwelling in an ivory tower, from where they can afford to overlook the troublesome aspects of the projects in their influence.

Members of the architecture group can begin to share this view. They consider their decision making more objective and sensible precisely because it is not influenced by the low level concerns of individual projects. Once high level consideration has occurred, any difficulties encountered while implementing those decisions are dismissed as "implementation details" that are beneath the group's level of concern.

The major source of trouble with architecture groups seems to be the social dynamic that builds up around them. They have a tendency to become a clique that is in overestimation of its own collective abilities, because it is deprived of any negative feedback concerning the consequences of the decisions it makes. The absence of feedback results in part from the unwillingness of project staff to criticize those senior to them, and in part of the self-imposed isolation of the architecture group, which makes its decisions from behind closed doors.

The issue of seniority is a real stumbling block, because senior staff may have great difficulty in admitting that they have made a poor decision, even when it is perfectly obvious to project staff that this is the case. Any adjustment to the decrees of the architecture group, once made, results in a perceived loss of face which the members of the architecture group can ill afford. Being senior, they are perhaps more cognizant of the political forces at work in the organization. Perhaps they are more ambitious, and therefore reticent to concede wrong doing for fear of the impact it might have on their reputation. Perhaps they view the objections of project staff as a challenge to their authority. In any case, members of the architecture group develop an ego identification with the decisions they make, which leads them to ignore or devalue negative feedback from project staff – leading to the reinforcement of the architecture group's external image as being isolated from the project community.
Consider also that people working in architectural roles tend to be abstractionist by nature. They are comfortable working at a high level and just trusting that the low level details will work themselves out. When project staff object that a decision made in the abstract has resulted in concrete difficulties at the implementation level, the abstractionist is prone to characterizing the situation as one of a well conceived plan that has been fumbled in the execution. In other words, they shoot the messenger, preferring to blame the implementation of their decision rather than the decision itself, which is perfect – as long as it is only considered in the abstract.


## Conclusion {#conclusion}

Those who institute an architecture group in their organization may be courting disaster. There is a strong tendency for the group to become cliquish, divorced from the consequences of its decision making, and the object of wide-spread resentment within the organization. Coordination of projects and adherence to enterprise architectures should occur in a way that does not impinge upon individual project's chances of success, nor rob them of the ability to solve the particular problems of their project in an effective way.
