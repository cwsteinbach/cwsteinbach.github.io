+++
title = "SWT: So What?"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:42:37-08:00
draft = false
+++

If you are about to undertake a major project using SWT, I suggest you think
very carefully before doing so. Compared to its obvious competitor, Swing, SWT
is very lacking in functionality, support and community development experience.
Little wonder that there is not a lot of detailed information to be found from
people who are using SWT in anger to create serious applications. There is a
certain amount of fan-boy stuff1, written by people in the first blush of
initial enthusiasm, convinced that everything is "cool" and "awesome", but very
little from people who have been through a significant implementation effort
extending over months or years. The closest one can get to finding "veteran"
users is on the eclipse.org.swt newsgroup. In surveying opinions on SWT from the
development community, I have found that people's enthusiasm for SWT is
inversely proportional to the amount of experience they have had with it.

Let me briefly outline the principle differences between SWT and Swing, at a high level:
• Sun first released Swing in 1997. It is bundled with Java and is considered the "standard" for GUI development in Java. Swing creates a GUI using only emulation - that is, Java draws the buttons, menus and other widgets on a blank window using primitive graphic operations. It entirely ignores whatever widgets are made available by the native platform, but through its pluggable "Look and Feel" facility it imitates the appearance and behavior of those widgets.
• IBM released SWT as open source in 2001, having written it to support development of the Eclipse IDE. IBM began developing Eclipse in Swing, found it unacceptably slow, and so decided to write their own widget toolkit instead. In general, SWT wraps the native widgets from the underlying platform, which is intended to give better performance than Swing, and make interfaces written with SWT indistinguishable from native applications.
Discussions of the relative merits of Swing and SWT fall tend towards religious war. SWT advocates champion SWT's fidelity to native applications, performance and efficiency. They deride Swing’s responsiveness, memory consumption and complexity. Swing advocates champion Swing’s maturity, power and support. They deride SWT's capabilities, quality and small developer base. Advocates from both sides consider their opponents to be of questionable parentage.


## Problems In Using SWT {#problems-in-using-swt}

There are numerous obstacles for the would-be SWT programmer to overcome. Collectively, you will find them a source of great frustration.


### Bugs {#bugs}

Unless you are developing a trivial interface, you will be forced to become very well acquainted with the Bugzilla at eclipse.org. As further examples, try doing a query on the Bugzilla to find the number of bugs raised by the principal developers of Azureus2 and BitTorrent3 - probably the two most well-known SWT applications at this time. You will see that each has raised fifty or more issues in the course of developing their products. That may be fine if you're working on an open source application without strict deadlines or resource limitations, but in a commercial context, losing so much time and effort to bugs is a major problem.
You don't want your project to have critical issues to be fixed on a time line that is beyond your control. The old open source standby of "just fix it yourself" is a non-sequitur here. In a commercial context, one is paid to advance the business interests of the client, not to overcome shortcomings in a widget toolkit. Besides, making additions to SWT requires a low-level knowledge of the behavior of five different operating systems and windowing environments, and how many people have that kind of expertise?

The fact that each bug fix must be made to work for different native implementations is a significant multiplication of effort, and the source of often lengthy delays when it comes to bug fixes and functional enhancements. This was stated by Steve Northover, the original architect of SWT, in a recent message to the eclipse.org.swt newsgroup. He responded to one programmer's frustrated complaints about bugs in the Table widget which had been outstanding for several years, in this way:
If you stop to think about it, we support 5 different operating systems using totally different code bases and somehow knit together and implement a portable API to all of them and we do this for free. It's a full time job, 24-7.

This problem is an unavoidable byproduct of the architectural decision that underlies SWT – the use of native widgets necessitates the development and maintenance of numerous distinct code bases. The burden is significant and, to quote James Gosling, "a bad place to be".4


### Limited Functionality {#limited-functionality}

Those coming to SWT from a Swing background will probably be shocked by the absence of many bits of functionality that they are accustomed to having at their fingertips. For instance, Swing programmers will think nothing of having a Button widget that displays both a text label and image, and be surprised they can't do that in SWT unless the Button appears within a ToolBar or CoolBar [Ed. 2006 – This issue has since been resolved]. They will be used to attaching Borders to widgets as they see fit, using the Swing BorderFactory, but wonder why borders are only supported on some SWT widgets such as Text and Label. They will be accustomed to setting up input masks on text fields using the facilities on JTextField, but find in SWT they will have to write that themselves by listening to individual keystrokes on a Text widget.


### Eclipse Driven Development {#eclipse-driven-development}

We do well to remember that SWT was originally developed in service of Eclipse. Now that Eclipse is open source and SWT is being touted by some as an alternative to Swing for general interface development, this heritage is turning out to be quite a burden. There is a bipartite division in issue response times that seems to be related to relevance to Eclipse. If a bug is found that effects Eclipse, then there is some chance of it being attended to in a reasonable time frame. If the bug doesn't effect Eclipse – then the situation is quite different. Such bugs appears to attract a much lower priority. And given the resource restrictions the Eclipse GUI team struggles with, getting enhancement requests done is quite an achievement. This Eclipse-centric approach to maintenance and extension is a problem when the application you're constructing is not from the same domain as Eclipse. The facilities required to construct the interface for, say, a warehousing or inventory-tracking system are different from those required to construct a programmer's IDE. The former makes demands of SWT not made by the latter – but maintenance and enhancement appears to be prioritized according to relevance to Eclipse. Therefore you'll find SWT less and less relevant the further away you stray from the programming domain.


## Myths {#myths}

There is a lot of urban myth and misinformation surrounding both SWT and Swing. When evaluating the relative merits of these two technologies, your first task will be to distinguish fact from opinion. There is much of the latter masquerading as the former. Below, I address a few of the common misconceptions in this area.
SWT Is Fast, Swing Is Slow

Apparently it was performance concerns with Swing that prompted IBM to begin development of SWT. It would be interesting to know if they would make this same decision now, especially given the Swing performance improvements in JDK1.5. In practice, both Swing and SWT applications can be made to appear unresponsive if you perform long- running operations in the GUI event thread (a concept shared by both) or if a big garbage collection cycle arrests the entire application. The best way to compare Swing and SWT performance would be via benchmarks, however it is difficult to construct a fair comparison that truly compares like with like when the underlying technologies differ in such fundamental ways.


### SWT Exposes The Native Widgets Of The Underlying Platform {#swt-exposes-the-native-widgets-of-the-underlying-platform}

In general, SWT exposes the behavior of the native platform's own GUI widget set. However this is only part of the story. There are some inferences people tend to make based on this, that are incorrect.

Some believe that the entirety of the underlying widget's behavior is exposed through SWT. This is not necessarily so. SWT must produce the same behavior across all the platforms it caters to. If widget W has behaviors A, B and C on its native platform, but C is missing from one platform's implementation of the widget W, then only A and B are provided by W on all platforms. In other words, behavior C will be masked out on its native platform, because it was not available on all platforms. This "lowest common denominator" approach can be very limiting. For example, you would not think it a great challenge to put both an image and a text label on a button. However, unless the button is in a Toolbar or CoolBar, you can't do it in SWT [Ed. 2006 – This issue has since been resolved]. This is because it's not permitted on one of the platforms that SWT supports, therefore it can't be available on any of them. Every few weeks, somebody posts a message to the SWT newsgroup wanting to know how to do this, and is surprised to find that they can't ... they have to write their own button widget if they want that functionality.

However, the situation is not that simple. Sometimes the "lowest common denominator" is augmented using emulation in SWT. In other words, somebody has determined that the lowest common denominator is simply not acceptable, and those platforms where the behavior is not available natively have that behavior added on by SWT itself. In some cases this extends to emulation of an entire widget. For example, Motif has no tree widget. Rather than hide the tree widget on all platforms, SWT emulates the entire tree widget for Motif.

There are both advantages and disadvantages to SWT's partial exposure of native widgets. On the up side, you get fidelity to platform appearance and behavior. On the down side, that fidelity may not extend to the inclusion of features outside of the LCD. Further on the down side, not only do you get the native widget's behavior, you also get its bugs. On the up side, sometimes SWT can compensate for those bugs so that they appear fixed to the SWT user.


### Platform Fidelity Increases Usability {#platform-fidelity-increases-usability}

The rationalization that SWT proponents constantly offer for attaching such importance to absolute platform fidelity is that it increases usability. SWT is meant to offer greater platform fidelity than Swing, which makes the usability of SWT applications better. I believe this argument is specious, for several reasons.

First, this argument gets voiced by programmers, not users. This is significant because what is important to programmers is not necessarily important to the general user population. There is also the possibility of programmers letting their technical convictions influence their perception of usability. Consider, it was feedback from programmers that drove the development of SWT to begin with. In the forward to "SWT: The Standard Widget Toolkit", Erich Gamma states:
I was part of the team with the mission to build a Java based integrated development environment for embedded applications that was shipped as the IBM VisualAge/MicroEdition. ... We felt pretty good about what we had achieved! However, our early adopters didn't feel as good as we did... they complained about the performance and most importantly about the fact that the IDE didn't look, feel and respond like a native Windows application. Some of the performance problems were our fault and some of them could be attributed to Swing. The performance problems didn't bother us that much; they could be engineered away over time. What worried us more was the non-native criticism. While we could implement a cool application in Swing that runs on Windows, we couldn't build a true Windows application. Fixing this problem required more drastic measures.

So SWT sprung from an IDE development effort, and the feedback of the IDE’s early adopters - who are themselves programmers. I suspect that the issue of platform fidelity is of very little significance to non- programmers. Personally, I have seen no evidence that whatever discrepancies exist between Swing's emulation of Windows and the native Windows appearance make any appreciable difference in usability at all. Many users don't even notice, and those that do only have a vague awareness that something is a bit different about the application, but they're not quite sure what.

Second, due to the LCD effect already described, SWT often doesn't expose the exact behavior or appearance of the native widget set. Where is the evidence that the difference in fidelity between the SWT version of widgets and the Swing emulation of those widgets actually results in a difference in usability? In fact, there is much to suggest that it is not the case. Consider the success of applications such as iTunes for Windows, QuickTime, Winamp and the Firefox browser. All of these have interfaces very different from that of native Windows applications – yet they are successfully used by even novice Windows users. When users upgrade from one version of Windows to another, say from 2000 to XP, there are numerous cosmetic differences in the interface presented, but do they suddenly find themselves lost and unable to use the applications? No, of course not. The reason is that minor aesthetics are not key determinants of usability. Overall interface structure, task orientation and affordance are the key factors. Whether a button has a 3-pixel wide or 2-pixel wide shadow is not important. As long as a user can recognize the controls presented to them, and those controls behave in a predictable way, then usability is unaffected.

Finally, if usability and platform fidelity are so inextricably linked, what are we to make of the Flat Look part of SWT – that subset which creates interfaces which are similar to web pages in appearance but exhibit greater functionality? They are entirely unlike anything in any of the native platforms that SWT supports. If you've seen the PDE in Eclipse, you've seen Flat Look. If the claim that platform fidelity is linked to usability is true, shouldn't Flat Look interfaces be usability nightmares? The inconsistency between philosophy and implementation is puzzling.


### SWT Is Quicker To Learn Than Swing {#swt-is-quicker-to-learn-than-swing}

SWT enthusiasts claim that it is easier to learn than Swing. Having been through the learning curve for both, I have not found this to be the case. There are two main aspects to the ease of learning for any technology – the difficulty of the technical concepts themselves, and the way those concepts are taught. Conceptually, there is a significant overlap between SWT and Swing. Component hierarchies, layout managers, threading and separation of data from presentation are concepts present in both. The basic selection of built-in widgets and layouts is much the same also. The real differentiator is the quality and quantity of instructional material available. The Javadoc for SWT is sparse, the remaining knowledge has to be pieced together from articles, code snippets and asking questions on the SWT newsgroup. There are perhaps a half dozen books on SWT available. Beyond that, you need to look at the SWT code itself and reverse engineer an understanding of what's going on. The situation with Swing is very different. The Javadoc is extensive, there is a vast amount of tutorial information available online, and a large number of books are dedicated to the topic. Therefore learning Swing is generally easier than learning SWT, because of the greater amount of plain English information available.


### Limited Third Party Widget Selection Is A Good Thing {#limited-third-party-widget-selection-is-a-good-thing}

Any comparison of SWT and Swing must unearth the fact that there is next to nothing in the way of third part widgets available for SWT, but there are a number of such offerings available for Swing. This can have a profound effect on programmer productivity, forcing one to write by hand what might otherwise be available off the shelf for considerably less cost.

Probably the most desperate pro-SWT argument I've heard to date is the claim that this reduced selection of COTS widgets is a good thing because it reduced the opportunities for programmers to do the wrong thing. If there is a wide selection of widgets available, the argument goes, then programmers will fill their interfaces with every cute widget they can get their hands on. This is not a problem when using SWT, as few such widgets are available in the first place.

The argument is so ridiculous as to beggar belief, but it is one I have heard SWT zealots voice, in a desperate attempt to rationalize their ideological convictions. Its main failing is to confuse widget availability and widget usage. The usability of an interface is not a function of how many different types of widgets it contains, but of the way those widgets are organized and used in the interface. A good interface designer knows that novel widgets may confuse users unfamiliar with them, and so does not employ them unless they offer a radical functional improvement in return for lesser intuitiveness. A bad interface designer will construct an interface with poor usability regardless of how few widgets they have at their disposal. To understand why, consider the following analogy.

Suppose you take a good artist and a bad artist, give them each a palette of one thousand colors then ask them to paint a picture. The good artist produces a work of art, the bad artist an eyesore. Now, in an attempt to make it harder for the bad artist to do the wrong thing, you restrict them both to a palette of ten colors. What results? The good artist produces another work of art, perhaps less subtle than the first, and the bad artist produces another eyesore, just with less variation in hue. By restricting the color selection, you haven't made it harder for the bad artist to create a mess, you've just made it more difficult for the good artist to use their talent to the fullest. The worth of the final painting is a function of the artist’s talent much more than it is the availability of colors. So it is too with user interfaces. The usability of the interface is mostly a function of the designer’s talent and experieoplnce, not the number of widgets available to them.


## Conclusion {#conclusion}

There has been a revival of interest lately in rich client interfaces. It seems that the obsession with web applications that the industry has experienced in recent years may be starting to thaw. It is finally being appreciated that it is not OK to squeeze all interaction through the restrictions currently imposed by web browsers. Even though programmers may be temporarily enamored of web-based development, their enthusiasm is not necessarily shared by the user population who must struggle with the results of their IT department's technical and ideological enthusiasms.

So now it is time for programmers to impose their technical preferences regarding rich client interfaces upon an unsuspecting user group, for which they will need some ostensible justification - hence the cattle call to SWT, and the unsubstantiated claims in its favor.

For those interested in what actually benefits their organization, rather than what looks best on their CV and is "cool", there is really no competition between Swing and SWT. SWT is simply not ready for generalized interface development, and given that its development lags behind Swing some seven years, one has to wonder how its use and continued development can be rationalized.

If you are developing a rich interface in Java, and considering both SWT and Swing, I urge you to consider the following issues:
• IfyoubelievethatthegreaterplatformfidelityofSWTwillmakefora more usable application, what actual evidence do you have to support that conclusion? Have you put both in front of your user population?
• It's hard to find good GUI developers. Finding good GUI developers with SWT skills is even harder. Where are you going to find the staff to develop your GUI in SWT? If you anticipate getting Swing developers to cross-train in SWT, get ready for staff turnover. Taking a Swing developer and giving them SWT is like taking someone used to riding a Harley Davidson and giving them a Vespa motor scooter. They're not likely to be delighted.
• HowcloseisyourtargetGUItotheEclipseGUI?Beawarethatevery time you step even a little way beyond the functional demands of Eclipse, you are on your own. You will likely have to start writing custom widgets in order to get the behavior you want. Can your organization justify spending time and money writing widgets that in Swing, would be available off the shelf?
• Due to the bugs and shortcomings in SWT, your developers will be working with a lowered productivity, and so you should expect project delays and/or increased resource requirements. Can your organization justify this extra investment?
• Before deciding that Swing applications are slow and ugly, take the time to look at products like Netbeans and GUI libraries such as JIDE. I have heard people voice these opinions, having not looked at Swing since the days of AWT.
• Is your source of information about SWT the blogs of novice GUI developers, or those who have had only a fleeting encounter with SWT. Let me suggest you subscribe to the SWT newsgroup and mailing list where you will get the perspective of those who have been struggling with it for a longer period of time, and are past that initial phase of enthusiasm.

Of course, just because SWT is the technically inferior solution doesn't mean that it will go away. Hype, marketing, vendor over-enthusiasm and managerial stupidity can propel a second-rate solution to prominence. This may yet prove to be the case for SWT.
SWT Resources
• ProfessionalJavaNativeApplicationswithSWT/JFace,J.L.Guojie
• DefinitiveGuidetoSWTandJFace,R.Harris,R.Warner
• SWT/JFaceinAction,M.Scarpinoet.al.
• SWT Developers Notebook, T. Hatton
• Developing Quality Plugins for Eclipse, E. Clayberg
• Contributing to Eclipse, E. Gamma, K. Beck, Addison Wesley, 2004
• SWT:TheStandardWidgetToolkit,Volume1,S.Northover,M.
Wilson, Addison Wesley, 2004
• SWTDesigner,<http://www.swt-designer.com/>
• SWTSightings,<http://www.oneclipse.com/Members/admin/news/swt>-
sightings

1 <http://blogs.bytecode.com.au/glen/2005/02/12/1108169609271.html>
2 <http://azureus.sourceforge.net/>
3 <http://www.bittorrent.com/>
4 <http://www.builderau.com.au/program/work/0,39024650,39176462,00.htm>
