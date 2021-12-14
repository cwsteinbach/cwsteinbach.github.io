+++
title = "Web Accessibility for the Apathetic"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:42:17-08:00
draft = false
+++

If you're like me, you approach the subject of accessibility with a certain
self-conscious guilt. On the one hand, you recognize that there are excellent
ethical and legal reasons for making your applications – be they
web-based or rich client – accessible to those with sensory or
cognitive impairments; but on the other hand you can't ignore the fact that the
extra work required to add that accessibility is only going to make a difference
to a very small percentage of your users.

In recent years, the legal impetus has begun to gain strength, forcing those of
us to action who might otherwise have been willing to put our internal ethics
department on hold in the name of conserving time and energy. Having spent some
time recently working inside a department of the Australian government, I have
learnt that the issue of accessibility, in particular web accessibility, has a
reasonably high profile. Because government web sites are required to adhere to
accessibility guidelines1, there has developed a group, comprised of either
moralists or opportunists, who spend their time scouring the web pages of
government web sites looking for non-conformances to use as the basis for legal
prosecution. American courts have recently ruled that the accessibility
requirements pertinent to US governmental web sites are also applicable to
privately held web sites. Even your blog counts as material that is made
"publicly available," and must therefore be equally available to all.

With these ideas in mind, and also to assuage my growing feelings of guilt
regarding the accessibility (or lack thereof) of this site, I decided to
undertake a bit of a site revamp, the cosmetic results of which you will already
have noticed. This article provides a brief overview of the process I followed,
and thereby gives a general introduction to the tools and techniques necessary
to retro-fit accessibility to a site that was designed without specific
consideration of that issue.


## General Approach {#general-approach}

In general, web accessibility can be achieved by adhering to the following two principles:

• SeparatepresentationfromcontentbyrestrictingyouruseofHTMLto the standard structural elements, and using CSS (Cascading Style Sheets) to control the way that structure is presented.
• Emphasize textual content. Where non-textual content is used, always provide a textual equivalent.
A good portion of the details appearing below are in support of these two principles. The steps below show you how to transform a non- accessible web page into an accessible one.
Step 1: Ensure All HTML Elements Are Structural
Structural elements those which describe the semantic units of an HTML document. Examples of structural HTML elements are:
• <h1> ... <h6> • <p>
• <ol>
• <ul>
• <img> • <li>
• <div> • <span>
Over the years, browser vendors have added proprietary non-structural elements and attributes to the HTML grammar their browser understands, in an effort to differentiate their product from their competitor's. The result is a tag set which invites misuse, is interpreted differently (or not at all) in different browsers, and awkwardly combines content and presentation. By removing elements that specify some aspect of the document's presentation, accessibility can be improved.
Examples of non-structural HTML elements you should remove are:
• <hr>
• <i>
• <b>
• <u>
• <big>
• <small>
• <font>
• <basefont> • <br>
• <font>

• <tt>
The layout effects produced by these non-structural tags can, and should be, achieved with style sheets. Using these tags only pollutes your HTML document with presentation information that may well be useless or misleading to those with low vision. For instance, <b> elements should be removed because bold text has no meaning to a blind user. This doesn't mean that text can't be made bold, but rather that CSS rather than HTML should be the means by which the bolding is achieved.
Note that in some cases there is a structural tag that you should put in place of the deleted non-structural tag. For example:
• If you have removed <b> tags that were used to emphasize words, insert <strong> tags where the <b> tags used to be.
• Ifyouhaveremoved<b>tagsthatwereusedtocreateaheading,insert a heading tag like <h3> where the <b> tags used to be.
• If you have removed <b> tags that were used to add emphasis, insert <em> tags where the <b> tags used to be.
In other cases, there is no structural element already defined in HTML that adequately captures a structural aspect of your web page, so you must invent your own using the <span> or <div> elements. For instance, you might create a of class "footnote" to denote footnote references:
<span class=”footnote”>This is a footnote.</span>
The way that span elements of class footnote are displayed is later specified in a CSS.
Step 2: Ensure All HTML Attributes Are Structural
Non-structural attributes should be removed for the same reasons that structural elements should be removed. Examples of non-structural attributes you can delete are:
• align
• link
• alink
• halign
• valign
• background • color

• text
• bgcolor • vspace • height • width
• hspace • border
Again, all the layout effects that were produced by these attributes can be achieved with CSS, leaving the basic HTML document more accessible.
Step 3: Remove Misused Structural HTML Elements
Structural elements should not be used as ersatz layout mechanisms as this will confuse those accessing your web page with a text browser.
Examples of the misuse of structural elements for layout purposes include:
• Using empty paragraphs (<p>) to put a vertical space between consecutive blocks of text.
• Usingthe<table>elementtoachievecolumnaralignmentofmaterial that is not inherently tabular.
• Drawinglinesbystretchinga1-pixel<img>.
• Using<blockquote>purelytoachieveindentation.
Step 4:
Ensure All Non-Textual Content Has A Textual Equivalent
Users with visual impairment may use a text browser, Braille bar or screen reader to access your web page. These mechanisms can only deal with text as input. So you need to supply a textual equivalent to any non- textual content on your web page. A common examples is using the alt attribute of <img> tags to describe the significance of the image.
There are certain mechanisms which should be used sparingly, if at all, because they are inherently inaccessible. These include:
• Imagemaps
• Javascript
• Side-by-sideframes
• Secondarywindows
• Shockwaveanimations
Not only are these mechanisms difficult for some users to access, but
they may be deliberately disabled by any user in their browser.
Step 5:
Add In Attributes Or Elements That Aid Accessibility
There are a few HTML structural elements and attributes that are particularly helpful from an accessibility perspective:
• The <abbrev> and <acronym> elements can be used to specify the expansion of abbreviations and acronyms when they first occur in a document.
• The <th> element should be used to identify column headers. Tables are linearized in text browsers, and knowing which table cells are headers helps the user interpret them.
• In HTML forms, use the <label> element around the form labels. Additionally, field labels should be immediately to the left of, or immediately above, the field.
• Provide a logical tab order for elements by specifying the tabindex attribute for <input> elements.
• Use the title attribute of <a> elements to provide more information about the target of the hyperlink.
Checkpoint
At this point, you should have an HTML document that is marked up solely with structural elements and attributes. This is a good time to preview your page in a text browser like Lynx2, or with a screen reader like IBM Home Page Reader3.
It is also a good time to run your HTML through one of the automated accessibility-checker sites on the web. Such sites enable you to provide your HTML – either directly with cut/paste, or by nominating a URL – and then scan the document looking for accessibility problems. I found www.bobby.com to be quite useful.

Step 6:
Recreate The Layout Using Cantankerous Style Sheets
And now for the tricky bit. Converting your web page to use only structural HTML elements and attributes is easy compared to using CSS to achieve your desired layout. Mostly the difficulty stems from the variations in the way different browsers render CSS directives. Behavior of "floating" elements seems to be particularly problematic. Therefore it is essential to test the layout in as many different browsers as you can. This lack of standardization in behavior is the most frustrating aspect of using CSS. I found the following books useful in getting up to speed on CSS:
• CSS-TheDefinitiveGuide2ndEdition,EricA.Meyer,O'Reilly Media Inc, 2004
• CSS-DesigningfortheWeb2ndEdition,H.LieandBertBos, Addison Wesley, 1999
• MoreEricMeyeronCSS,EricMeyer,NewRiders,2004
Once you've got a style sheet that presents the HTML document the way you want, you're done. Just be sure that your choice of layout effects doesn't aggravate those suffering from particular medical conditions:
• Those with light-triggered epilepsy can seizure when subject to blinking text or images. Sensitivity varies between the 4Hz and 59Hz frequencies, with peak sensitivity around 20Hz.
• Colorperceptionproblemsarequitecommon–moresoinmalesthan females. Make sure your layout doesn't rely on color as the sole discriminator between different objects. The filter available at www.visicheck.com can show you what your page looks like to users with different color perception difficulties.
• Do not use text sizes that are too small. The minimum size should appear to be equivalent to a 10pt font, but 12pt is preferable. Note that you should not actually use pt or px units to specify font sizes, as these don't scale up when the user changes the text size in their browser. The em unit should be used instead.

1 <http://www.w3.org/TR/WAI-WEBCONTENT/>
2 <http://lynx.browser.org/>
3 <http://www-3.ibm.com/able/solution%5Fofferings/hpr.html>
