+++
title = "Testers: Are They Vegetable or Mineral?"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:34:26-08:00
draft = false
+++

There are real advantages to having a group of people, separate from developers,
whose job is solely to find fault with your work. They have an emotional and
cognitive distance from the product that a developer can never fully imitate.
Testing is a task requiring patience, attention to detail and a fairly devious
mindset. Sometimes managers make the mistake of regarding testing as a second
class activity, suitable to be performed by less skilled or more junior staff
members. Such misimpressions are a disservice to the project and the testing
community.

But a common byproduct of having a distinct testing team is the development of
an adversarial dynamic between testers and developers. I can understand
completely how easily this situation occurs. I recently had the misfortune to
work with a testing team whose methods left myself and other developers ready to
kill them.

Below, I have listed the main work habits this team engaged in, that made them
so difficult to work with. I hope that these items may serve as a brief catalog
of bug reporting "anti-patterns" that testers can use as a checklist to make
sure they are not accidentally annoying the developers they work with, and that
developers can use to identify sources of friction between themselves and their
testing team.


## Abbreviating Instructions For Reproducing The Bug {#abbreviating-instructions-for-reproducing-the-bug}

Problem: Some testers believe that they can save themselves some time by
describing the circumstances under which the bug appears in the briefest terms
possible.

Often the bug report degrades into a contracted narrative that only specifies
the milestones in the series of actions necessary to reproduce the bug. Being
unfamiliar with the application’s internal structure, a tester can
not know which of the series of actions they have followed is most significant
when diagnosing the underlying fault. By neglecting actions they consider
unimportant, there is a significant risk they are omitting important
information.

Solution: The best way to avoid this is to simply enumerate all the actions that
are necessary to reproduce the buggy behavior, starting with the launch of the
application. Put the first step in a bug reporting template to remind testers to
do this e.g. "1) Launch the application. 2) your text here"


## Not Identifying The Erroneous Behavior {#not-identifying-the-erroneous-behavior}

Problem: The description in the bug report ends in a simple statement of
application state without identifying what aspect of that state is actually in
error. For example, the bug report concludes "The Properties dialog appears",
but the tester fails to add "... and the property controls are enabled, even
though the selection is read-only".

Solution: Put the heading "Erroneous behavior:" or "Actual behavior:" in your
bug report template, to remind the tester to include that information


## Not Identifying The Expected Behavior {#not-identifying-the-expected-behavior}

Problem: Even when the bug report contains a description of the erroneous
behavior, testers sometimes forget to explain what the expected (correct)
behavior is. For example, the bug report concludes "The file saves silently",
but the tester fails to add "... but there is no visual indication that the
application is busy performing the save. The cursor should change to an hour
glass and a modal progress dialog should appear.

Solution: Put the heading "Expected behavior: " in your bug report template, to
remind the tester to include that information. Not Justifying The Expected
Behavior

Problem: It is not always clear why a tester has decided that a particular behavior is buggy. The bug report may simply claim "X should happen" without making it clear why X is the correct behavior. A reference to a requirement specification is an appropriate justification. If that requirement is for adherence to an externally specified standard, then a reference to the relevant portion of that standard is appropriate.
Solution: Put the heading "Requirement reference:" in your bug report template, to remind the tester to include that information.
Re-Opening Old Bug Reports For New Bugs With Similar Symptoms

Problem: A bug report is marked as FIXED and everyone thinks it is done with. But in the course of subsequent testing, a tester sees faulty behavior occurring that is very similar to that produced by the bug that was thought FIXED. Reasoning that the behavior is so similar that it must have the same underlying cause, the tester concludes that the bug previously marked FIXED has resurfaced. They REOPEN the FIXED bug report. This is problematic for the developer, because the re-opening of the bug implies that the original symptoms are re-occurring, not the similar symptoms that the tester is now observing. The tester has communicated to the developer their incorrect diagnosis of the fault, rather than simply reporting the faulty behavior they have observed.
Solution: Insist that testers refrain from reusing old bug reports unless the erroneous behavior they see is exactly the same as that described in the old bug report. Even then, there is some chance of confusing two separate bugs that just happen to produce identical observed behavior. If there is any doubt, create an entirely new bug report. The develop can always mark it as a duplicate of the old bug report and re-open the old bug report themselves, if investigation demonstrates that the new and old bugs have the same underlying cause.

See also "Diagnosing Instead of Reporting"


## Testing An Old Version Of The Software {#testing-an-old-version-of-the-software}

Problem:
Developer: Tester: Developer: Tester:
It's fixed!
It's NOT fixed!
It's fixed! Here's a screen shot showing it fixed!
I don't care about your screen shot. It's NOT fixed for me!
This developer / tester exchange quickly escalates into justifiable homicide and arises far more often than it should. In a testing process which permits the version of the software being tested to change underfoot, the conflict often arises from a developer fixing a bug in a version yet to be released to the tester. Both developer and tester are correct in their assessment of the bug’s status, with respect to the version of the software that is front of them.
Solution: Institute a process to enable version coordination between developers and testers. Label each new version with a unique number and make the version numbers currently being tested and developed readily available to all. Ensure someone has the responsibility to update this version number whenever a new version is released to the testers. When a bug report is declared FIXED, ensure developers include the version number in which the fix will appear.
Inventing Requirements Based Upon Personal Preference

Problem: Generally a set of requirements is not so complete as to explicitly specify program behavior in every possible circumstance. Quite aside from inevitable oversights by those assembling the requirements, some requirements are left to "common sense". A requirement such as "shall conform to Microsoft Windows User Interface Guidelines" is broad and may be difficult to interpret in any particular instance. Rather than interrogate the standard thoroughly, some testers will try and substitute their own version of "common sense" for the requirement, bringing with it their mistakes and misinterpretations. For instance, I received a UI bug report indicating that "a sub-menu should not appear if all menu items within it are disabled." The tester regarded this as "common sense". However, the UI standards explicitly dictated that such sub-menus should always appear, even when all of their menu items are disabled, so that the user could at least see the contents of the sub-menu and would know where to find a particular option when it did become available. Yet the bug report stated quite emphatically that the behavior "should" be different. The tester had fabricated the requirement, and decided to lend it authority by using the word "should", so as to imply the presence of such a requirement.
Solution: See "Not Justifying the Expected Behavior" Omitting Screen Shots

Problem: Many bug tracking systems provide the facility to attach a file to a bug report, the way one might attach a file to an email. But testers frequently forget (or can’t be bothered) making use of this facility. Particularly for GUI-related bugs, a screen shot showing the bug occurring, or illustrating a step in its reproduction, is an efficient way of capturing information.
Solution: Make sure testers are aware of the "attach" functionality in your bug tracking system and are encouraged to use it. Image attachments can also be a convenient way of proving to a disbelieving developer that a bug occurs, or to a tester that a bug has been fixed.


## Using Vague Or Ambiguous Wording {#using-vague-or-ambiguous-wording}

Problem: In the text of the bug report, the tester employs terminology that is
imprecise or ambiguous. For example: the tester refers to "this dialog" in the
bug report, intending the word "dialog" to mean "an exchange between parties";
but the developer interprets "dialog" as referring to a secondary window in the
interface. Another example: The tester describes a text field as being "enabled
when it should be disabled", but really intended that the text field is
"editable when it should be uneditable".

Solution: None – however a large, blunt object applied with extreme
prejudice can at least have a cautionary effect.


## Diagnosing Instead Of Reporting {#diagnosing-instead-of-reporting}

Problem: Either through arrogance or a misguided attempt to be helpful, the
tester describes what they believe is the underlying fault exposed by the bug,
rather than simply reporting the observed behavior. For example, the tester
examines a log file and deduces from the name of an exception appearing in a
stack trace that the application is running out of memory. Having provided this
insight, they omit the rest of the bug report, thinking that they have already
provided the crucial information.

Solution: See "Solution" above. Exaggerating The Priority Of A Bug

Problem: Some testers exhibit a tendency to elevate the priority of the bug
reports they lodge later in the testing process. As testing proceeds and the
identification of new bugs becomes harder and harder, it seems that the extra
effort involved in their location is justified by raising their priority - by
way of psychological compensation, I suppose. Developers find that bugs which
would have been regarded minor in early testing are suddenly becoming major
issues. This effect may also be attributable to increasing stress or approaching
deadlines.

Solution: For each priority level your bug reporting system allows, provide a
clear definition that can be referred to in order to resolve disputes over bug
priority.


## Justifying Partial Coverage With Appeals To Bad Assumptions {#justifying-partial-coverage-with-appeals-to-bad-assumptions}

Problem: Rather than exhaustively test all possible combinations of inputs or
circumstances, testers choose a limited subset of these for testing, reasoning
that the chosen subset will be sufficient to exercise the underlying code. In
effect, they are making assumptions about the code coverage that results from
manipulating the application’s interface in various ways.

Solution: Sometimes assumptions of this nature can legitimately be made. If
there is insufficient time to perform exhaustive testing, then it is the
developers who should be choosing the representative subset of operations to
test, not the testers.

See "Diagnosing Instead of Reporting"
