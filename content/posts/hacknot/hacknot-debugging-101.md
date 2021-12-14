+++
title = "Debugging 101"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:43:21-08:00
draft = false
+++

“An interactive debugger is an outstanding example of what is not needed – it encourages trial-and-error hacking rather than systematic design, and also hides marginal people barely qualified for precision programming.”– Harlan Mills

Recently, a colleague and I were working together to resolve a bug in a piece of code she had just written. The bug resulted in an exception being thrown and looking at the stack trace, we were both puzzled about what the root cause might be. Worse yet, the exception originated from within an open source library we were using. As is typical of open source products, the documentation was sparse, and wasn't providing us with very much help in diagnosing the problem before us. It was beginning to look like we might have to download the source code for this library and start going through it – a prospect that appealed to neither of us.

As a last resort before downloading this source code, I suggested that we try doing a web search on the text of the exception itself, by copying the last few lines of the stack trace into the search field for a web search engine. I hoped the search results might include pages from online forums where someone else had posted a message like "I'm seeing the following exception, can anyone tell me what it means?", followed by all or part of the stack trace itself. If the original poster had received a helpful response to their query, then perhaps that response would be helpful to us too.

My colleague, who is reasonably new to software development, was surprised by the idea and commented that it was something she would never have thought to try. Her response got me to thinking about debugging techniques in general, and the way we acquire our knowledge of them.

Reflecting on my formal education in computer science, I cannot recall a single tutorial or lecture that discussed how I should go about debugging the code that I wrote. Mind you, I cannot remember much of anything about those lectures, so perhaps it really was addressed and I've simply forgotten. Even so, it seems that the topic of debugging is much neglected in both academic and trade discussions. Why is this?

It seems particularly strange when you consider what portion of their time the average programmer spends debugging their own code. I've not measured it for myself, but I wouldn't be surprised if one third or more of my day was spent trying to figure out why my code doesn't behave the way I expected. It seems strange that I never learnt in any structured way how to debug a program. Everything I know about debugging has been acquired through experience, trial and error, and from watching others. Unless my experience is unique, it seems that debugging techniques should be a topic of vital interest to every developer. Yet some developers seem almost embarrassed to discuss it.

I suspect the main reason for this is hubris. The ostensible ability to write bug-free code is a point of pride for many programmers. Displaying a knowledge of debugging techniques is tantamount to admitting imperfection, acknowledging weakness, and that really sticks in the craw of those developers who like to think of themselves as "l337 h4x0r5". But by avoiding the topic, we lose a major opportunity to learn methods for combating our inevitable human weaknesses, and thereby improving the quality of the work we do.

So I've taken it upon myself to list the main debugging techniques that I am aware of. For many programmers, these techniques will be old hat and quite basic. But even for veteran debuggers there may be value in bringing back to mind some of these tried and true techniques. For others, there might be one or two methods that you hadn't thought of before. I hope they save you a few hours of frustrating fault-finding.


## General Principles {#general-principles}

Regardless of the specific debugging techniques you use, there are a few general principles and guidelines to keep in mind as your debugging effort proceeds.


### Reproduce {#reproduce}

The first task in any debugging effort is to learn how to consistently reproduce the bug. If it takes more than a few steps to manually trigger the buggy behavior, consider writing a small driver program to trigger it programmatically. Your debugging effort will proceed much more quickly as a result.


### Progressively Narrow Scope {#progressively-narrow-scope}

There are two basic ways to find the origin of a bug – brute force and analysis. Analysis is the thoughtful consideration of a bug's likely point of origin, based on detailed knowledge of the code base. A brute force approach is a largely mechanical search along the execution path until the fault is eventually found.
In practice, you will probably use a combination of both methods. A preliminary analysis will tell you the area of the code most likely to contain the bug, then a brute force search within that area will locate it precisely.

Purists may consider any application of the brute force approach to be tantamount to hacking. It may be so, but it is also the most expedient method in many circumstances. The quickest way to search the path of execution by brute force is to use a binary search, which progressively divides the search space in half at each iteration.


### Avoid Debuggers {#avoid-debuggers}

In general, I recommend you avoid symbolic debuggers of the type that have become standard in many IDEs. Debuggers tend to produce a very fragile debugging process. How often does it happen that you spend an extended period of time carefully stepping through a piece of code, statement by statement, only to find at the critical moment that you accidentally "step over" rather than "step into" some method call, and miss the point where a significant change in program state occurs? In contrast, when you progressively add trace statements to the code, you are building up a picture of the code in execution that cannot be suddenly lost or corrupted. This repeatability is highly valuable – you're monotonically progressing towards your goal.

I've noticed that habitual use of symbolic debuggers also tends to discourage serious reflection on the problem. It becomes a knee-jerk response to fire up the debugger the instant a bug is encountered and start stepping through code, waiting for the debugger to reveal where the fault is.
That said, there are a small number of situations where a debugger may be the best, or perhaps only, method available to you. If the fault is occurring inside compiled code that you don't have the source code for, then stepping through the just-in-time decompiled version of the executable may be the only way of subjecting the faulty code to scrutiny. Another instance where a debugger can be useful is in the case of memory overwrites and corruption, as can occur when using languages that permit direct memory manipulation, such as C and C++. The ability most debuggers provide to "watch" particular memory segments for changes can be helpful in highlighting unintentional memory modifications.


### Change Only One Thing At A Time {#change-only-one-thing-at-a-time}

Debugging is an iterative process whereby you make a change to the code, test to see if you've fixed the bug, make another change, test again, and so on until the bug is fixed. Each time you change the code, it's important to change only one aspect of it at a time That way, when the bug is eventually fixed, you will know exactly what caused it – namely, the very last thing you touched. If you try changing several things at once, you risk including unnecessary changes in your bug fix (which may themselves cause bugs in future), and diluting your understanding of the bug's origin.


## Technical Methods {#technical-methods}

Debugging is a manually intensive activity more like solving logic problems or brain teasers than programming. You will find little use for elaborate tools, instead relying on a handful of simple techniques intelligently applied.


### Insert Trace Statements {#insert-trace-statements}

This is the principle debugging method I use. A trace statement is a human readable console or log message that is inserted into a piece of code suspected of containing a bug, then generally removed once the bug has been found. Trace statements not only trace the path of execution through code, but the changing state of program variables as execution progresses. If you have used Design By Contract (see “Introduce Design By Contract” below) diligently, you will already know what portion of the code to instrument with trace statements. Often it takes only half a dozen or so well chosen trace statements to pinpoint the cause of your bug. Once you have found the bug, you may find it helpful to leave a few of the trace statements in the code, perhaps converting console messages into file- based logging messages, to assist in future debugging efforts in that part of the code.


### Consult The Log Files Of Third Party Products {#consult-the-log-files-of-third-party-products}

If you're using a third party application server, servlet engine, database engine or other active component then you'll find a whole heap of useful information about recently experienced errors in that component's own log files. You may have to configure the component to log the sort of information you're interested in. In general, if your bug seems to involve the internals of some third party product that you don't have the source code for (and so can't instrument with trace statements), see if the vendor has supplied some way to provide you with a window into the product's internal operation. For example, an ORM library might produce no console output at all by default, but provide a command line switch or configuration file property that makes it output all SQL statements that it issues to the database.


### Search The Web For The Stack Trace {#search-the-web-for-the-stack-trace}

Cut the text from the end of a stack trace and use it as a search string in the web search engine of your choice. Hopefully this will pick up questions posted to discussion forums, where the poster has included the stack trace that they are seeing. If someone posted a useful response, then it might relate to your bug. You might also search on the text of an error message, or on an error number. Given that search engines might not discover dynamically generated web pages in discussion forums, you might also find it profitable to identify web sites likely to host discussions pertaining to your bug, and use the site's own search facilities in the manner just described.


### Introduce Design By Contract {#introduce-design-by-contract}

In my opinion, DBC is one of the best tools available to assist you in writing quality code. I have found rigorous use of it to be invaluable in tracking down bugs. If you're not familiar with DBC, think of it as littering your code with assertions about what the state of the program should be at that point, if everything is going as you expect it to. These assertions are checked programmatically, and an exception thrown when they fail. DBC tends to make the point of program failure very close to the point of logical error in your code. This avoids those frustrating searches where a program fails in function C, but the actual error was further up the call chain in function A, which passed on faulty values to function B, which in turn passed the values to function C, which ultimately failed. It's best to use DBC as a means of bug prevention, but you can also use it as a means of preventing bug recurrence. Whenever you find a bug, litter the surrounding code with assertions, so that if that code should ever go wrong again, a nearby assertion will fail.


### Wipe The Slate Clean {#wipe-the-slate-clean}

Sometimes, after you've been hunting a bug for long enough, you begin to despair of ever finding it. There may be an overwhelming number of possible sources yet to explore, or the behavior you're observing is just plain bizarre. On such occasions it can be useful to wipe the slate clean and start again. Create an entirely new mini-application whose sole function is to demonstrate the presence of your bug. If you can write such a demo program, then you're well on your way to tracking down the cause of the bug. Now that you have the bug isolated in your demo program, start removing potentially faulty components one by one. For example, if your demo program uses some database connection pooling library, cut it out and run the program again. If the bug persists, then you've just identified one component that doesn't contribute to the buggy behavior. Proceed in that manner, stripping out as many possible fault sources as you can, one at a time. When you remove a component that makes the bug disappear, then you know that the problem is related to the last component you removed.


## Intermittent Bugs {#intermittent-bugs}

A bug that occurs intermittently and can't be consistently reproduced is the programmer's bane. They are often the result of asynchronous competition for shared resources, as might occur when multiple threads vie for shared memory or race for access to a local variable. They can also result from other applications competing for memory and I/O resources on the one machine.

First, try modifying your code so as to serialize any operations occurring in parallel. For example, don't spawn N threads to handle N calculations, but perform all N calculations in sequence. If your bug disappears, then you've got a synchronization problem between the blocks of code performing the calculations. For help in correctly synchronizing your threads, look first to any support for threading that is included in your programming language. Failing that, look for a third party library that supports development of multi-threaded code.

If your programming language doesn't provide guaranteed initialization of variables, then uninitialized variables can also be a source of intermittent bugs. 99% of the time, the variable gets initialized to zero or null and behaves as you expected, but the other 1% of the time it is initialized to some random value and fails. A class of tools called "System Perturbers"1 can assist you in tracking down such problems. Such tools typically include facility for zero-filling memory locations, or filling memory with random data as a way of teasing out initialization bugs.


### Exploit Locality {#exploit-locality}

Research shows that bugs tend to cluster together. So when you encounter a new bug, think of those parts of the code in which you have previously found bugs, and whether nearby code could be involved with the present bug.


### Read The Documentation {#read-the-documentation}

If all else fails, read the instructions. It's remarkable how often this simple step is foregone. In their rush to start programming with some class library or utility some developers will adopt a trial-and-error approach to using a new API. If there is little or no API documentation then this may be an appropriate approach. But if the API has some decent programmer- level documentation with it, then take the time to read it. It's possible that your bug results from misuse of the API and the underlying code is failing to check that you have obeyed all the necessary preconditions for its use.


### Introduce Dummy Implementations And Subclasses {#introduce-dummy-implementations-and-subclasses}

Software designers are sometimes advised to "write to interfaces". In other words, rather than calling a method on a class directly, call a method on an interface that the class implements. This means that you are free to substitute in a different class that implements the same interface, without needing to change the calling code. While dogmatic application of this guideline can result in a proliferation of interfaces that are only implemented once, it does point to a useful debugging technique. If the outcome of the collaboration between several objects is buggy, look to the interfaces that the participating objects implement. Where an object is invoked only via interfaces, consider replacing the object with a simple, custom object of your own that is hard-wired to perform correctly under very specific circumstances. As long as you limit your testing to the circumstances that you know your custom object handles correctly, you know that any buggy behavior you subsequently observe must be the fault of one of the other objects involved. That is, you've eliminated one potential source of the bug. You can achieve a similar effect by substituting a custom subclass of a participant class, rather than a custom implementation of an interface.


### Recompile And Relink {#recompile-and-relink}

A particularly nasty type of bug arises from having an executable image that is a composite of several different compile and/or relink operations. The failure behavior can be quite bizarre and it can appear that internal program state is being corrupted "between statements". It's like gremlins have crept into your code and started screwing around with memory.

Most recently, I have encountered this bug in Java code when I change the value of string constants. It seems the compiler optimizes references to string constants by inserting them literally at the point of reference. So the constant value is copied to multiple class files. If you don't regenerate all those class files after changing the string constant, those class files not regenerated will still contain the old value of that constant. Performing a complete recompilation prevents this from occurring. Finally, set the compiler to include debugging information in the generated code, and set the compiler warning level to the maximum.


### Probe Boundary Conditions And Special Cases {#probe-boundary-conditions-and-special-cases}

Experienced programmers know that it's the limits of an algorithmic space that tend to get forgotten or mishandled, thereby leading to bugs. For example, the procedure for deleting records 1 to N might be slightly different from the procedure for deleting record 0. The algorithm for determining if a given year is a leap year is slightly different if the year is divisible by 400. Breaking a string into a list of space-separated words requires consideration of the cases where the string contains only one word, or is empty. The tendency to code only the general case and forget the special cases is a very common source of error.


### Check Version Dependencies {#check-version-dependencies}

One of the most obscure sources of a bugs is the use of incompatible versions of third party libraries. It is also one of the last things to check when you've exhausted other debugging strategies. If version 1.0.2 of some library has a dependency on version 2.4 of another library, but you supply version 2.5 instead, the results may be subtle failures that are difficult or impossible to diagnose. Look particularly to any libraries that you have upgraded just prior to the appearance of the bug.


### Check Code That Has Changed Recently {#check-code-that-has-changed-recently}

When a bug suddenly appears in functionality that has been working for some time, you should immediately wonder what has recently changed in the code base that might have caused this regression. This is where your version control system comes into its own, providing you with a way of looking at the change history of the code, or recreating successively older versions of the code base until you get one in which the regression disappears.


### Don't Trust The Error Message {#don-t-trust-the-error-message}

Normally you scrutinize the error messages you get very carefully, hoping for a clue as to where to start your debugging efforts. But if you're not having any luck with that approach, remember that error messages can sometimes be misleading. Sometimes programmers don't put as much thought into the handling and reporting of error conditions as one would like, so it may be wise to avoid interpreting the error message too literally, and to consider possibilities other than the ones it specifically identifies.


## Graphics Bugs {#graphics-bugs}

There are a few techniques that are particularly relevant when working on GUIs or other graphics-related bugs. Check if the graphics pipeline you are using includes a debugging mode – a mode which slows down graphics operations to a speed where you can observe individual drawing operations occurring. This mode can be very useful for determining why a sequence of graphic operations don't combine to give the effect you expected.
When debugging problems with layout managers, I like to set the background colors of panels and components to solid, contrasting colors. This enables you to see exactly where the edges of the components are, which highlights the layout decisions made by the layout managers involved.


## Psychological Methods {#psychological-methods}

I think it's fair to say that the vast majority of bugs we encounter are a result of our own cognitive limitations. We might fail to fully comprehend the effects of a particular API call, forget to free memory we've reserved, or simply fail to translate our intent correctly into code. Indeed, one might consider debugging to be the process of finding the difference between what you instructed the machine to do, and what you thought you instructed the machine to do. So given their basis in faulty thinking, it makes sense to consider what mental techniques we can employ to think more effectively when hunting bugs.


## Wooden Indian {#wooden-indian}

When you're really stuck on a bug, it can be helpful to grab a colleague and explain the bug to them, together with the efforts you've made so far to hunt down its source2. It may be that your colleague can offer some helpful advice, but this is not what the technique is really about. The role of your colleague is mainly just to listen to your description in a passive way. It sometimes happens that in the course of explaining the problem to another, you gain an insight into the bug that you didn't have before. This may be because explaining the bug's origin from scratch forces you to go back over mental territory that you haven't critically examined, and challenge fundamental assumptions that you have made. Also, by verbalizing you are engaging different sensory modalities which seems to make the problem "fresh" and revitalizes your examination of it.


## Don't Speculate {#don-t-speculate}

Arthur C. Clarke once wrote "Any sufficiently advanced technology is indistinguishable from magic." And so it is for any sufficiently mysterious bug. One of the greatest traps you can fall into when debugging is to resort to superstitious speculation about its cause, rather than engaging in reasoned enquiry3. Such speculation yields a trial-and-error debugging effort that might eventually be successful, but is likely to be highly inefficient and time consuming. If you find yourself making random tweaks without having some overall strategy or approach in mind, stop straight away and search for a more rational method.


## Don't Be Too Quick To Blame The Tools {#don-t-be-too-quick-to-blame-the-tools}

Perhaps you've had the embarrassing experience of announcing "it must be a compiler bug" before finding the bug in your own code. Once you've done it, you don't rush to judgment so quickly in the future. Part of rational debugging is realistically assessing the probability that there is a bug in one of the development tools you are using. If you are using a flaky development tool that is only up to its beta release, you would be quite justified in suspecting it of error. But if you're using a compiler that has been out for several years and has proven itself reliable in the field over all that time, then you should be very careful you've excluded every other possibility before concluding that the compiler is producing a faulty executable.


## Understand Both The Problem And The Solution {#understand-both-the-problem-and-the-solution}

It's not uncommon to hear programmers declare "That bug disappeared" or "It must've been fixed as a side-effect of some other work". Such statements indicate that the programmer isn't seeking a thorough understanding of the cause of a bug, or its solution, before dismissing it as no longer in need of consideration. Bugs don't just magically disappear. If a bug seems to be suddenly fixed without someone having deliberately attended to it, then there's a good chance that the fault is still somewhere in the code, but subsequent changes have changed the way it manifests. Never accept that a bug has disappeared or fixed itself. Similarly, if you find that some changes you've made appear to have fixed a bug, but you're not quite sure how, don't kid yourself that the fix is a genuine one. Again, you may simply have changed the character of the bug, rather than truly fixing its cause.


## Take A Break {#take-a-break}

In both bug hunting and general problem solving I've experienced the following series of events more times than I can remember. After struggling with a problem for several hours and growing increasingly frustrated with it, I reach a point where I'm too tired to continue wrestling with it, so I go home. Several choice expletives are muttered. Doors are slammed. The next morning, I sit down to continue tackling the problem and the solution just falls out in the first half hour.
Many have noted that solutions come much easier after a period of intense concentration on the problem, followed by a period of rest.

Whatever the underlying mechanism might be, if you have similar experiences its worth remembering them when you're faced with a decision between bashing your head against a problem for another hour, or having a rest from it.

Another way to get a fresh look at a piece of code you've been staring at for too long is to print it out and review it off the paper. We read faster off paper than off the screen, so this may be why it's slightly easier to spot an error in printed code than displayed code.


## Consider Multiple Causes {#consider-multiple-causes}

There is a strong human tendency to oversimplify the diagnoses of problems, attributing what may be multi-causal problems to a single cause. The simplicity of such a diagnosis is appealing, and certainly easier to address. The habit is encouraged by the fact that many bugs really are the result of a single error, but that is by no means universally the case.


## Bug Prevention Methods {#bug-prevention-methods}

"Prevention is better than cure," goes the maxim; as true of sicknesses in code as of sicknesses in the body. Given the inevitability and cost of debugging during your development effort, it's wise to prepare for it in advance and minimize it's eventual impact.


## Monitor Your Own Fault Injection Habits {#monitor-your-own-fault-injection-habits}

After time you may notice that you are prone to writing particular kinds of bugs. If you can identify a consistent weakness like this, then you can take preventative steps. If you have a code review checklist, augment the checklist to include a check specifically for the type of bug you favor. Simply maintaining an awareness of your "favorite" defects can help reduce your tendency to inject them.


## Introduce Debugging Aids Early {#introduce-debugging-aids-early}

Unless you've somehow attained perfection prior to starting work on your current project, you can be confident that you have numerous debugging efforts in store before you finish. You may as well make some preparation for them now. This means inserting logging statements as you proceed, so that you can selectively enable them later, before augmenting them with bug-specific trace statements. Also think about the prime places in your design to put interfaces. Often these will be at the perimeters of significant subsystems. For example, when implementing client-server applications, I like to hide all client contact with the server behind interfaces, so that a dummy implementation of the server can be used in place of the server, throughout client development. It's not only a convenient point of interception for debugging efforts, but a development expedient, as the test-debug cycle can be significantly faster without the time cost of real server deployment and communication.


## Loose Coupling And Information Hiding {#loose-coupling-and-information-hiding}

Application of these two principles is well known to increase the extensibility and maintainability of code, as well as easing its comprehension. Bear in mind that they also help to prevent bugs. An error in well modularized code is less likely to produce unintended side-effects in other modules, which obfuscates the origin of the bug and impedes the debugging effort.


## Write A Regression Test To Prevent Reoccurrence {#write-a-regression-test-to-prevent-reoccurrence}

Once you've fixed the bug it's a good idea to write a regression test that exercises the previously buggy code and checks for correct operation4. If you wish, you can write that regression test before having fixed the bug, so that a successful bug fix is indicated by the successful run of the test.


## Conclusion {#conclusion}

If you spend enough time debugging, you start to become a bit blasé about it. It's easy to slip into a rut and just keep following the same patterns of behavior you always have, which means that you never get any better or smarter at debugging. That's a definite disadvantage, given how much of the average programmer's working life is consumed by it. There's also a tendency not to examine debugging techniques closely or seriously, as debugging is something of a taboo topic in the programming community.

It's wise to acknowledge your own limitations up front, the resultant inevitability of debugging, and to make allowances for it right from the beginning of application development. It's also worth beginning each debugging effort with a few moments of deliberate reflection, to try and deduce the smartest and quickest way to find the bug.

1 Rapid Development, Steve McConnell, Microsoft Press, 1996
2 The Pragmatic Programmer, A. Hunt and D. Thomas, Addison-Wesley, 2000
3 Code Complete, Steve McConnell, Microsoft Press, 1993
4 Writing Solid Code, Steve Maguire, Microsoft Press, 1993
