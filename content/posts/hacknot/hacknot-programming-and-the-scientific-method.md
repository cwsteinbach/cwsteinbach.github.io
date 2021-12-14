+++
title = "Programming and the Scientific Method"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:49:19-08:00
draft = false
+++

In 1985 Peter Naur wrote a rather cryptic piece entitled Programming as Theory
Building [1] in which he drew an analogy between software development and the
scientific method. Since then, other authors have attempted to co-opt this
analogy as a means of enhancing the perceived credibility of particular
programming practices. This post aims to explain the analogy between the
scientific method and programming, and to explore the limitations of that
analogy.


## The Scientific Method {#the-scientific-method}

There is no canonical representation of the scientific method. Different sources will explain it in different ways, but they are all referring to the same logical process. For the purposes of this discussion, I will adopt a simplified definition of the scientific method, considering it to be comprised of the following activities repeated in a cyclic manner:

1.  Model – Form a simplified model of a system by drawing general conclusions from existing data.
2.  Predict – Use the simplified model to make a specific prediction about how the system will behave when subject to particular conditions.
3.  Test – Test the prediction by conducting an experiment.

If the test confirms our prediction, we return to step 2 and make a new prediction based upon the same model. Otherwise, we return to step 1 and revise our model so that it accounts for the results of our most recent test (and all preceding tests).
More formal descriptions of the scientific method often include the following terms:
Hypothesis – A testable statement accounting for a set of observations. It is equivalent to the model in the above description.
Theory – A well supported and well tested hypothesis or set of hypotheses.
Fact – A conclusion confirmed to such an extent that it would be reasonable to offer provisional agreement.2


## An Example Of The Scientific Method {#an-example-of-the-scientific-method}

Suppose you are given a sealed black box that has only three external features – two toggle switches marked A and B, and a small lamp. By playing around with the switches you notice that certain combinations of switch positions result in the lamp lighting up. Your task is to use the scientific method to develop a theory of how the box operates. In other words, to create a model which can account for the observed behavior of the box.
Round 1
Model: Casual observation suggests that the switches and lamp are connected in circuit with an internal power source. Let’s suppose that this is the case, and that the two toggle switches are wired in series.
Predict: If our model is accurate, then we should find that turning both switches on causes the lamp to light up.
Test: We get the box, turn both switches on and find that the lamp does indeed light up. Our model has been partially verified. But there are other predictions we can make based upon it.
Round 2
Model: As in experiment 1.
Predict: If our model is accurate, then we should find that turning switch A
off and switch B on causes the lamp to go out.
Test: We get the box, turn switch A off and switch B on and find that the lamp actually lights up. Our prediction was incorrect, therefore our model is wrong
Round 3
Model: Now we need to rework our model so that it correctly accounts for all our observations thus far. Then we can use it as a basis for further prediction. Suppose the box were wired with the two toggle switches in parallel. That would account for our observations from rounds 1 and 2. Let’s make that our new model.

Predict: If this new model is accurate, then we should find that turning switch A on and switch B off causes the lamp to light up.
Test: We get the box, turn switch A on and switch B off and find that the lamp actually goes off. Our prediction was incorrect; therefore our new model is wrong.
Round 4

Model: Once again, we need to reformulate our model so that correctly accounts for all of our existing observations. After some thought, we realize that if the box were wired so that only switch B effected the lamp, with switch A out of the circuit entirely, then this would account for all of our existing observations, as well as giving us a new prediction to test.

Predict: If this latest hypothesis is true, then we should find that turning switch A off and switch B off causes the lamp to go out.
Test: We get the box, turn switch A off and switch B off and observe that the lamp does indeed go out. Our prediction was correct, and our model is consistent with our observations from all four experiments.

You can see why the scientific method is sometimes described as being very inefficient – there is a lot of trial and error involved. But it’s important to note that it’s not random trial and error. If we just made random predictions and then tested them through experiment, all we would end up with is a disjoint set of cause/effect observations. We would have no way of using them to predict how the system would behave under situations that we hadn’t already deserved. Instead, we choose our predictions deliberately, guided by the intent of testing a particular aspect of the model currently being considered. In this way, each experiment either goes some way toward confirming the model, or confuting it.

Note that all we can ever have is a model of the system. We make no pretense to know the truth about the system in any absolute sense. Our model is simply useful, at least until new observations are made that our model can’t account for. Then we must change it to accommodate the new observations. This is why all knowledge in science (even that referred to as fact) is actually provisional and continually open to challenge.


## A Programming Example {#a-programming-example}

The following example demonstrates how software development is similar to the scientific method.

The task is to develop an application which models the behavior of the black box in the above example. The software will present a simple GUI with two toggle buttons marked A and B, and an icon which can adopt the appearance of a lamp turned on or off. The lamp icon should appear to be turned on as if the lamp were a real lamp connected to an internal power source, and the toggle buttons were toggle switches, with switch B in circuit with the lamp, and switch A out of circuit.
The table below compares the activities in the scientific method with their programming counterparts. Keep these analogs in mind as you read through the following example.

Model Predict
Test
Round 1
Scientific Method
Form a simplified model of a system by drawing general conclusions from existing data
Use the simplified model to make a specific prediction about how the system will behave when subject to particular conditions.
Test the prediction by conducting an experiment.
Programming
Developing a mental model of how the software works
Taking a particular case of interaction with that model, and predicting how the software will respond
Subjecting software to a test and getting a result.
Model: Unlike experimentation, we begin by assuming our model is correct. It is created from our requirements definition and states "The lamp icon should appear to be turned on as if the lamp were a real lamp connected to an internal power source, and the toggle buttons were toggle switches, with switch B in circuit with the lamp, and switch A out of circuit."
Predict: If the software is behaving correctly, toggling both buttons on should result in the lamp icon going on.
Test: We run the software, toggling the buttons A and B on, and observe that the lamp icon does indeed come on. So far our hypothesis has been confirmed; which is to say, the software behaves as the requirements say it should. But there are other behaviors specified by the requirements
Round 2
Model: As per round 1
Predict: If the software is behaving correctly, then toggling button A off
and button B on will cause the lamp icon to go on.
Test: We run the software, toggle button A off and button B on, and find that the lamp icon actually turns off. Our prediction was incorrect; therefore our software is not behaving as per its requirements. Instead of adjusting our model to suit the software, we adjust the software to suit the model i.e. we debug the software. In the software world, we can change the "reality" we are observing to behave however we want - unlike the real world where we have to adjust our model to fit an invariant reality. Once the software behaves in a manner consistent with the above prediction, we have to repeat our test from round 1 (i.e. regression test), to confirm that the prediction made there still holds i.e. that we haven’t "broken" the software reality.
Round 3
Model: As per round 1.
Predict: If the software is behaving correctly, then toggling button A on
and button B off should cause the lamp icon to turn off.
Test: We run the software, toggle button A on and button B off and find that the lamp icon actually turns on. Our prediction was incorrect; therefore our software is in error. Once again we debug the software until it behaves in a manner consistent with the above prediction. Then we regression test by repeating the tests in rounds 2 and 3.
Round 4
Model: As per round 1.
Predict: If the software is behaving correctly, then toggling buttons A and
B off should cause the lamp icon to turn off.
Test: We run the software, toggle buttons A and B off and find that the lamp icon does indeed turn off. Our prediction was correct; therefore the software is behaving as per its requirements.
Notice the critical difference between programming and experimentation. In experimentation, reality is held invariant and we adjust our model until the two are consistent. In programming, the model is held invariant and we adjust our reality (the software) until the two are consistent.


## Limits Of The Analogy {#limits-of-the-analogy}

Rote performance of the model/predict/test cycle does not mean that one is doing
science, or even that one's activities are science-like. There are critical
attributes of the way these activities are carried out that must be met before
the results have scientific validity. Two of these are objectivity and
reproducibility. Some authors have taken the analogy between scientific method
and programming too far by neglecting these attributes.

McCay3 contends that pair programming is analogous to the peer review process
that scientific results undergo before being published. The reviewers of a
scientific paper are chosen so that they are entirely independent of the
material being reviewed, and can perform an objective review. They must have no
vested interest in the material itself, and no relationship to the researcher or
anyone else involved in the conduct of the experiment. To this end, scientific
peer reviews are often conducted anonymously. Clearly this independence is
missing in pair programming. Both parties have been intimately involved in the
production of the material being reviewed, and as a coauthor each has a clear
personal investment in it. They have participated in the thought processes that
lead to the code being developed, and so can no longer analyze the material in
an intellectually independent manner.

Mugridge 3 contends that the continuous running of a suite of regression tests
is equivalent to the concept of scientific reproducibility. But here again, the
independence is missing. A single researcher arriving at a particular result is
not enough for those results to be considered credible by the scientific
community. Independent researchers must successfully replicate these results, as
a way of confirming that they weren’t just a chance occurrence, or an
unintentional byproduct of situational factors. But running regression tests
does not provide such confirmation, because each run of the regression tests is
conducted under exactly the same circumstances as the preceding ones. The same
tests are executed in the same environment over and over again, so there is no
independence between one execution and the next. Thus the confirming effect of
scientific reproducibility is lost.

Both Mugridge and McCay try and equate the XP maxim "do the simplest thing that
could possibly work" (DTSTTCPW) with Occam’s Razor.
Occam’s razor is a principle applied to hypothesis selection that
says "Other things being equal, the best hypothesis is the simplest one, that
is, the one that makes the fewest assumptions." Because the scientific
hypothesis is analogous to the system metaphor in XP, the XP equivalent of
Occam’s Razor would be "Other things being equal, the best system
metaphor is the simplest one, that is, the one that makes the fewest
assumptions." However XPers often invoke DTSTTCPW with regard to implementation
decisions, not choice of metaphor. Indeed, the metaphor is one of the least used
of XP practices.4

Additionally, the "all other things being equal" part of Occam’s
razor is vital, and neglected in XP’s DTSTTCPW slogan. We evaluate
competing hypotheses with respect to the criteria of adequacy 5 –
which provide a basis for assessing how well each hypothesis increases our
understanding. The criteria include testability, fruitfulness, simplicity and
scope. Note that simplicity is only one of the factors to consider. The scope of
a hypothesis refers to its explanatory power; how much of reality it can explain
and predict. We have a preference for a hypothesis of broader scope, because it
accounts for more natural phenomena. In a programming context, suppose we have
two competing models of a piece of software’s operation. One is more
complex than the other, but the more complex one also has greater scope. Which
one is better? It’s a subjective decision; but it should be clear
that considering simplicity alone is a naive basis for hypothesis selection.


## Conclusion {#conclusion}

OK, so there are parallels between the scientific method and programming. Aside
from the intellectual interest, what value is there in recognizing these
parallels?

Naur claims that the theory of a piece of software corresponds to the model that
the programmer builds up in their head of how it works. Such a theory might say
"The software is like a box with two toggle buttons and a lamp", or "The
software is like an assembly line with pieces being added on as the item
proceeds". Perhaps multiple metaphors are used. Once a programmer has a theory
(model) of the software in their head, they can talk about and explain its
behavior to others. When they make changes to the code, they do so in a way that
is consistent with the theory and therefore "fits in" with the existing code
base well. A programmer not guided by such a theory is liable to make
modifications and extensions to the code that appear to be "tacked on" as an
afterthought, and not consistent with the design philosophy of the existing code
base. I believe there is some validity in this notion.

Cockburn then extends this by claiming that this theory is what is essential to
communicate (in documentation or otherwise) from one generation of programmers
to the next: "What should you put into the documentation? That which helps the
next programmer build an adequate theory of the program". He also sees this as
validation of the "System Metaphor" practice from XP. Perhaps so, but I think
there is only limited utility in identifying what has to be communicated. The
real problem is identifying how to communicate; how to persist that knowledge in
a robust form, and transfer it from one programmer to another as new programmers
arrive on a project and old ones leave.

1 Programming as Theory Building, Peter Naur
2 Why People Believe Weird Things, Michael Shermer
3 if (extremeProgramming.equals(scientificMethod)), Larry McCay
4 Agile and Iterative Development, C. Larman
5 How to Think About Weird Things, 3rd edition, T. Schik and L. Vaughn, McGraw Hill, 2002
