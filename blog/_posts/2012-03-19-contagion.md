---
layout: post
title: Running the numbers for Contagion... they don't come out well
author: Trevor Bedford
image: /images/blog/contagion_movie.jpg
---

I know I'm totally late to the party with this, but after seeing [Contagion](http://en.wikipedia.org/wiki/Contagion_(film\)) on the plane back from the states in December, I've been wanting to run the numbers comparing their stated epidemiological parameters with how quickly we see the pandemic spread.  I finally got my hands on a DVD copy, so I was able to go through and record some of the epidemiological details.  I was initially skeptical of the movie, thinking they'd do the standard Hollywood thing of grossly exaggerating everything.  With this in mind, I was pleasantly surprised to see <i>R</i><sub>0</sub> listed as a very reasonable 2 and not, say, 20, and mortality rate listed around 20% or 25% rather than a Hollywood 90%.

Here are some of the most relevant numbers stated during the film, which helpfully lists "Day X" at the beginning of many scenes.  On day 12, a news announcer states: "The WHO estimates the number of people who have been infected worldwide to be over 8 million."  At some point between day 26 and day 28, an announcer states: "The death toll in the United States is believed to have reached 2.5 million."  And around day 35, another announcer states: "[The virus] so far has taken over 26 million lives worldwide." 

![](/images/blog/contagion_realistic.png)				

These are the results of running a simple [SIR model](http://en.wikipedia.org/wiki/Compartmental_models_in_epidemiology) with <i>R</i><sub>0</sub> of 2, an exponentially distributed duration of infection of 3 days and a mortality rate of 20%. The left-hand panel shows the number of currently infected (prevalence) through time.  The log <i>y</i>-axis makes it abundantly clear that an epidemic undergoes an initial phase of exponential growth, until the number of remaining susceptibles drops below a certain threshold (when <i>R</i><sub>0</sub> &times; <i>S</i> < 1), at which point the epidemic undergoes exponential decay.  Cumulative cases (and deaths), shown in the right-hand panel, initially increase exponentially, until the pandemic peaks at around day 65 or 70, at which point they level off.  The red circle shows the 8 million infections that supposedly exist at day 12.  These 8 million infections are not reached in the SIR model until day 50.  It's abundantly clear that the timeline of the pandemic has been vastly sped up to increase the scare factor.  

![](/images/blog/contagion_fit.png)			

Curious as to what sort of parameters would be necessary to get the extremely rapid pandemic shown in the movie, I fit <i>R</i><sub>0</sub> to the 12 day / 8 million number arriving at <i>R</i><sub>0</sub> = 4.92.  Although it seems that the overly rapid progression could be corrected for by keeping basically the same movie but just relabeling the days, there are other aspects of the movie that are internally inconsistent.  Cheever (Fishburne) says that "without a vaccine approximately one in 12 people [8% of the population] will contract the disease."  If <i>R</i><sub>0</sub> is 2, then we expect 80% of the human population to eventually become infected.  For comparison, the relatively mild H1N1 pandemic managed to infect around [35% of the population](/blog/h1n1-pandemic/).  

It seems that the movie wants to offer a story of a devastating event, but something far from an apocalyptic scenario, i.e. "70 million deaths" rather than the 1.1 billion deaths that <i>R</i><sub>0</sub> of 2 and a mortality rate of 20% would imply, but that the writers could not resist making the pandemic scenario scarier than necessary. 


