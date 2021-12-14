+++
title = "Get Your Filthy Tags Out of My Javadoc, Eugene"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:38:56-08:00
draft = false
+++

Recently I've been instituting a code review process on a number of projects in
my workplace. To kick start use of the process, I took a sample of the Java code
written by each of my colleagues and reviewed it.

While doing so I was struck by the degree of individual variation in the use of Javadoc comments, and reminded of how easy it is to fulfill one's obligation to provide Javadoc without really thinking about how effectively one is actually communicating.

I think the quality of Javadoc commenting is important because - let's be honest - it's the only form of documentation that many systems will ever have.
Here are some of the problems in Javadoc usage that I frequently observe:
• Developers never actually run the Javadoc utility to generate HTML documentation, or do so with such irregularity they can have no confidence that their copy of the HTML documentation is up to date.
• Developers use their IDE's facility to auto-generate a comment skeleton from a method signature, but then fail to flesh out that skeleton.
• HTML tags are overused, severely impairing the readability of comments when viewed as plain text.
• Comment text is diluted with superfluous wording and duplication of information already conveyed by data types.
• Valuable details are omitted e.g. method pre-conditions and post- conditions, the types of elements in Collections and the range of valid values for arguments (in particular, whether an object reference can be null).
• The conventional single sentence summary at the beginning of a method header comment is omitted.
• Non-publicclassfeaturesarenotcommented.

My conclusion is that many developers are just "going through the motions" when writing Javadoc comments. With a little more thought, more effective use of both the author's and the reader's time can be made.

I propose the following guidelines for effective Javadoc commenting ...


## Do Not Use HTML Tags {#do-not-use-html-tags}

This maximizes the readability of the comment when viewed in situ, and saves the author some time (which is better spent adding meaningful text to the comment).


## Use simple typographic conventions1 to create tables and lists. {#use-simple-typographic-conventions1-to-create-tables-and-lists-dot}


## Javadoc All Class Features, Regardless Of Scope {#javadoc-all-class-features-regardless-of-scope}


## While third parties using your code as an API don't need it, the developers and maintainers of your code base do - and they are your principal audience. {#while-third-parties-using-your-code-as-an-api-don-t-need-it-the-developers-and-maintainers-of-your-code-base-do-and-they-are-your-principal-audience-dot}


## Don't Prettify Comments {#don-t-prettify-comments}

Cute formatting such as lining up the descriptions of @param tags wastes space you could devote to meaningful description and makes the comments harder to maintain.


## Drop The Description For Dimple Accessors {#drop-the-description-for-dimple-accessors}

For methods that simply set or get the value of a class attribute, this sentence duplicates the information contained in an @param or @return clause respectively.
Assume Null Is Not OK


## Adopt the convention that object references can not be null unless otherwise stated. In the few circumstances where this is not true, specifically mention that null is OK, and explain what significance the null value has in that context. {#adopt-the-convention-that-object-references-can-not-be-null-unless-otherwise-stated-dot-in-the-few-circumstances-where-this-is-not-true-specifically-mention-that-null-is-ok-and-explain-what-significance-the-null-value-has-in-that-context-dot}


## Use Terse Language {#use-terse-language}

Feel free to use phrases instead of full sentences, in the interest of brevity. Avoid superfluous references to the subject like "This class does ...", "Method to ...", "An integer that ...", "An abstract class which ...".


## Be Precise {#be-precise}

• Forclasses:preciselydescribetheobjectbeingmodeled.
• For methods: describe the range of valid values for each @param and
@return.
• Forfields:describethetypesofobjectsinCollectionsandtherangeof
valid values.

1 <http://docutils.sourceforge.net/rst.html>
