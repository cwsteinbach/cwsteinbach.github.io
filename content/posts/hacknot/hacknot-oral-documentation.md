+++
title = "Oral Documentation: Not Worth the Paper it's Written On"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:38:12-08:00
draft = false
+++

The Agile Manifesto1 states:
"The most efficient and effective method of conveying information to and within a development team is face-to-face conversation."

Forgive me for questioning a holy proclamation, but isn't it rather well established that verbal communication is often incomplete and ambiguous, and that human memory is inaccurate and prone to confabulation? The plethora of psychological research in such areas as false memories, the veracity of eyewitness testimony, and the effect of predisposition on the interpretation of sensory data has surely given us a big hint that our perceptual and communicative capabilities are erratic and dubitable?
So where comes the apparently wide spread acceptance of (or at least, lack of challenge to) such outrageous Agile sophistry? For my part, it is difficult to ignore the manifest problems associated with a development team's reliance upon face-to-face communication. Over the last 3 or 4 months, as the inheritor of a code base whose authors preferred the "verbal tradition" style of documentation, I suffer daily from the flow-on effects of this laziness. Let me illustrate by providing you with a summary of a typical day for me in recent months, so you too can marvel at the feel-good richness and super-duper efficiency of face to face communication amongst software developers.

Fade in.

Scene 1 - a cubicle. Ed is slouched in an office chair staring forlornly at the screen in front of him. Except for the occasional insouciant jab at his keyboard, he gives the appearance of being comatose.

The day begins with my desire to extend the functionality of a legacy application, approximately 600K lines of code. I need to locate that portion of the code responsible for performing function X, so that I can insert function Y just after it. I go looking for function X amongst the code. I can’t find it. In fact, I started looking for it sometime yesterday, and haven’t found it yet. I check the folder marked "docs", to find it contains only a single README.txt file, the sole contents of which is the teaser "This directory will contain the docs" – apparently the dying message of a long extinct group of developers whose brains exploded before being able to make good on their promise. I find a piece of code that looks like it’s in the same ballpark as the code I’m looking for, and examine the revision history of the file it is in, to find that it has principally been developed by "Bob". I must find Bob. I need to find Bob. Bob will know where function X is.

Here is my first problem. I cannot contact Bob directly, because I am but a lowly contractor. Bob is a valuable and in-demand member of my client’s staff, and I can’t just go up to him and steal his valuable time. There’s a chain of command to be observed here! I must lodge a request with my manager to see Bob, who will forward that request to a liaison officer, who will forward that request to Bob’s manager, who will then cue it up with Bob. If he’s not too busy.

Scene 2 - a meeting room. Ed sits opposite a brown-skinned man wearing a turban.

The next day, I get to meet Bob. He can only spare 15 minutes to talk to me, because he’s busy preparing for the next release of some whiz-bang new pile of crud. It’s at this point that I discover that Bob’s real name is "Sharmati Sanyuktananda", but everyone just calls him "Bob" for short. Bob is Indian. Bob’s formal exposure to English was limited to the 15 minutes he spent reading "Miffy Learns English" while waiting in line at Immigration for his visa to be processed.

I try and talk with Bob, but it is like talking with Dr Seuss. At the end of 15 minutes, I have learnt almost nothing from him, and he keeps repeating something about public transport, which seems to have no relevance. His final word is "Sue", who I know is another member of the client’s staff. So I contact my manager to organize some time with Sue.

Scene 3 - a meeting room. Ed sits opposite a nerdish looking woman wearing glasses with a very strong prescription.

Next day, I discover, to my significant relief, that Sue speaks English quite well. Unfortunately, her memory is a little hazy on the bit of code I’m asking her about. She remembers dealing with it about a year ago, but there’s been a lot of water under the bridge since then. At this point, I am beginning to consider tying weights around my feet and jumping off that bridge. She can’t tell me where functionality X is, but she’s pretty sure it isn’t where I’m looking. "Have you tried asking John?", she queries. So I contact my manager and request a meeting with another client staff member, John.

Scene 4 - a meeting room. Ed sits opposite a cool dude with sideburns and shoulder length hair.

Next day, John is disarmingly candid about the code I’m dealing with. "Oh yeah, I remember this crap", he begins. "We wrote that it in about a week, sometime last year, when we were up against the wall. It is absolute rubbish." "No kidding", I think. John is my guardian angel – he knows that function X got ripped out at the last moment, so they could meet their deadline. But then they put it back in a bit later, when things slowed down, and it’s kept in a different module in the version control system. Which one? "You’ll have to ask Declan", says John in a matter of fact way. I ask my manager to queue up some time with Declan.

Scene 5 - a cubicle. Ed is slouched in an office chair, browsing the advertisements on an employment web site.

My manager replies a few hours later, saying that Declan left the company a few months ago – maybe someone else knows. Have I tried asking Bob?
Fade to black.

And that, ladies and gentlemen, is the delight of face-to-face communication amongst software developers. See how efficient and effective it is? No one wasted any time writing nasty old documents, which saved them a bit of time – once. Everyone since then has wasted the time they saved, multiplied tenfold, trying to recover the information the original author could have documented in an hour or two, but was too busy, choosing to rely instead on good old "face to face" communication.

When it comes to the maintenance and extension of legacy code, and clearing the organizational hurdles associated with the handover of code from one party to another, a reliance on "face to face" communication is very convenient for the first generation of developers, and a chain around the leg of every other developer and organization involved thereafter.

It all sounds very folksy and appealing when you just say the words. If you’re just talking in general terms about how much easier it is to have a bit of a chin wag with the bloke sitting next to you, then it sounds so reasonable to point out how much is being saved by just talking about stuff rather than writing it down. Of course! We’ll just have a little chat about it and everything will be alright. That same simplicity is a large part of its appeal to many developers. Unfortunately, reality is not quite so simple.

For a maintenance programmer, the reality of dealing with your predecessor’s reliance upon "oral documentation" is:
• Thepeopleyouneedtotalktoareoftennotavailable–theirtimemay be spoken for, or they may have left the company.
• The people that are available to talk with are often inarticulate techies with the verbal communication skills of a mime.
• The people you talk to have fuzzy memories, particularly where low level details are concerned. Frequently, they simply can't recall the information you need.
• The people you talk to all give you a different account of how things work. You’re not getting the facts anymore, you’re getting opinions and best guesses.
• The people you talk to have moved on to new duties and are not particularly interested in answering your queries about a system they would prefer to forget.

The "out" offered by XP/AM 2 and other idealistic retreats is that you just "do the documentation as needed". Brilliant! If only I’d thought of that, maybe I could’ve been a thought leader too! The problem is, "as needed" and "when time is available" are rarely coincident for reasons entirely beyond the developer’s control. Try and convince a manager that you need to take a week out to catch up on some documentation. During that week you won’t be writing code, you won’t be making any functional progress towards a measurable or billable outcome, but the schedule will be taking a hit. Good luck with that one.

Fowler has a few delightful stories of "handover" scenarios in which face-to-face communication has been achieved by paradropping an "ambassador" into an enemy territory full of maintenance programmers, so that knowledge can be still be transferred verbally, and documentation produced as required by those maintenance programmers. I would like to enunciate a question that has long been in my mind, but heretofore unexpressed: "Martin, what part of the Twilight Zone do you live in, and where can I get a ticket?" Really ... is it just me or do the folksy anecdotes and one-off case studies that some Agile enthusiasts put forward sound just a little too contrived to be realistically transferred to your average corporate setting? Where are these companies they speak of, that have the latitude to abandon their normal procedures and protocols and set about bending over backwards in an effort to provide just the right climate to support these processes, no matter how involved the accommodation may be?

Whenever I read these fabulous accounts of the stunning success of AM/XP in some corporate environment, and how it didn’t really matter that the team prepared no documentation whatsoever, I feel like I’m reading some sort of fairy tale, where everybody finishes their projects without difficulty, and then goes off to have a picnic in some bucolic setting, where they eat cucumber sandwiches and drink lashings of ginger beer. Hurrah!

By contrast, here’s how handover happens in my world. One day – sometime before you’ve actually finished what you’re working on – some pointy-haired manager comes up to you and says "You’re changing to Project W tomorrow". No thought, no discussion, no campfire chat and singing of old spirituals. Just the immediate transferal of resources from one emergency to the next emergency. Whatever difficulties you might leave behind – too bad. What happens to the programmers that come after you is of no immediate concern. This dooms the poor sods to spending inordinate amounts of time, as I have recently, wandering the halls like a restless spirit, shuffling from one vague and apathetic source of information to the next.

The reliance upon face-to-face communication that the XP/AM contingent favor is not the straight-talking, light-weight, near-telepathic communicative fantasy of the Agile dream, but a prescription for pain and suffering for every maintenance programmer that has to come along and clean up after the original programming team has done a hit-and-run on the code base.

Are my experiences unique here, or do others find this whole "fireside chat" model of developer communication a little hard to swallow?

1 <http://www.agilemanifesto.org>
2 Extreme Programming / Agile Methods
