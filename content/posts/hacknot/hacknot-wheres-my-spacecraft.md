+++
title = "Dude, Where’s My Spacecraft?"
author = ["Ed Johnson"]
lastmod = 2021-12-14T11:37:11-08:00
draft = false
+++

The Mars Polar Lander (MPL) that NASA launched in 1999 is now a rather
attractive and very expensive field of tinsel-like shrapnel scattered over
several square kilometers of the Martian surface. It is not functional in any
capacity. It is no more. It has ceased to be.

Its demise was the result of the flight control software incorrectly answering
the question that car-bound children have been plaguing their parents with for
years – "are we there yet?" About 40 meters above the ground, the
software succumbed to the constant nagging of its digital offspring and answered
too hastily "Yes! We’re there!" – triggering the shutdown
of the MPL’s descent engines. The craft’s final moments
were spent free falling towards the Martian soil at 50 mph (80km/h) –
ten times the impact speed it was designed to withstand.

Monitoring the MPL’s progress from Earth, NASA had expected a 12
minute period of broadcast silence during the descent to the landing area, due
to the cant of the craft during re-entry. Shortly after touchdown, the MPL was
scheduled to begin a 45 minute data transmission to Earth, but this transmission
never occurred. NASA kept attempting contact with the MPL for the next six
weeks, until finally giving up hope of ever hearing from it again.

Of course, it was not long before the faecal matter hit the rotary air distribution device.

In-depth mission reviews were conducted at NASA Headquarters, JPL and Lockheed Martin Astronautics. An independent assessment team was also established. Initially there were considered to be a number of possible causes for the mission’s failure, but extensive investigations singled out one of them as being the most likely failure mode, with a high degree of confidence.

The assessment team concluded that a spurious signal from one or more of the touchdown sensors at the ends of the MPL’s legs caused the software to conclude incorrectly that the craft had already made contact with the Martian soil and to therefore shutdown the descent engines prematurely.

However, this wasn’t an unexpected hardware fault. The tendency of the Hall Effect touchdown sensors to generate a false momentary signal upon leg deployment was well known to NASA engineers, having been discovered in early testing. The software should have screened out these spurious signals, but this functionality was never actually implemented.

More precisely, the series of events leading to failure was likely the following:

1.  1500m above the surface of Mars, the legs of the MPL deployed. The touchdown sensor at the end of one or more of the legs generated a characteristic false touchdown signal while being deployed. The false touchdown event was registered by the flight control software and buffered.
2.  40m above the surface, the software began continuous sampling of the values from the touchdown sensors.
3.  The first value read was the buffered false touchdown event that occurred upon leg deployment.
4.  The software immediately triggered the shutdown of the Lander’s descent engines, believing that the Lander was now on the surface of Mars.


## Reasons For Failure {#reasons-for-failure}

One of the main reasons the flight software did not behave correctly is because the definition of "correct" was changed in response to field testing. With respect to detecting touchdown, the system requirements initially stated:

"The touchdown sensors shall be sampled at 100 Hz rate. The sampling process
shall be initiated prior to Lander entry to keep processor demand constant"

When the false signal characteristic of the touchdown sensors was later
discovered, the following clause was added:

"However, the use of the touchdown sensor data shall not begin until 40 meters
above the surface.”

The intended effect of this addendum was to disregard the false touchdown signal
previously generated during leg deployment at 1500m. This change was never
propagated to the lower level software requirements.

Also note there is no explicit mention of the spurious signal generation. Even
if this addendum had been propagated into the lower level requirements
correctly, the software engineers would not have been aware that a false
touchdown event might already have been registered at the time the use of the
sensor data began.


## Moral #1 {#moral-1}

The story contains two obvious lessons about requirements:
• Requirements tracking is useful in maintaining integrity between
multiple requirements sources.
• Requirements should include a rationale i.e. specify why, not just
what.
And now a few words from some XP spokesmen on requirements tracking:
I think I get, from the term, the idea of what RequirementsTracking is. It sounds like you keep track of changes to the requirements, who made the change, why they made it, when, stuff like that. If that’s wrong, correct me now. If that’s what RequirementsTracking is, I don’t see the benefit. Please tell me a story where the moral is, “And that’s why I am ever so happy that I tracked requirements changes." 1
– Ron Jeffries, with assistance from Kent Beck


## Moral #2 {#moral-2}

You would think that a thorough testing program would uncover the flight software’s shortcomings. However, later testing did not detect the software’s inability to cope with these signals because the touchdown sensors were incorrectly wired when the tests were performed. When the wiring error was discovered and corrected, the tests were not re-executed in their entirety. Specifically, the deployment of the Lander leg was not included in the test re-runs. The moral is: Thou shall fully regression test.

1 <http://c2.com/cgi/wiki?RequirementsTracking>
