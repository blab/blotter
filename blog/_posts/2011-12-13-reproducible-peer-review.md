---
layout: post
title: Reproducible peer review
author: Trevor Bedford
---

I discovered this [paper by Peter Rothwell and Christopher Martyn](http://brain.oxfordjournals.org/content/123/9/1964) through an excellent [blog post by Bradley Voytek](http://blogs.scientificamerican.com/guest-blog/2011/11/02/what-is-peer-review-for/).  In the paper, the authors show that reviews of the same paper by two independent reviewers show a level of agreement little better than expected by chance alone.  The authors repeat their experiment across two neuroscience journals.  For the first journal, they have 179 pairs of reviews, with 219 of the 358 votes (61%) recommending acceptance or acceptance with revision.  If votes between reviewers were distributed entirely by chance, we would expect 67 accept-accept pairs, 43 accept-reject pairs, 43 reject-accept pairs and 27 reject-reject pairs.  However, if the reviewers are coming to some sort of scientific consensus we would see an overabundance of accept-accept and reject-reject pairs.  

Here, I've shown their findings, with observed and (expected) counts for each scenario.  In journal A, there appears to be little or no difference from the chance expectation, while journal B shows a very modest improvement over the chance expectation.  A simple Fisher's exact test gives a *P* value of 0.285 on the results of journal A and a *P* value of less than 0.0001 on the results of journal B.  Additionally, Rothwell and Martyn find little correspondence in reviewer's assessments of priority of publication.

Journal A | Accept  | Reject
--------- | ------- | ------
Accept    | 71 (67) | 35 (43)
Reject    | 42 (43) | 31 (27)

Journal B | Accept  | Reject
--------- | ------- | ------
Accept    | 57 (47) | 18 (27)
Reject    | 16 (27) | 25 (15)

Interestingly, the authors studied reproducibility of abstract acceptance at two different scientific conferences.  Here, each abstract was reviewed and rated on a 1 to 6 scale by a panel of 14 or 16 reviewers.  In this case, variance across abstracts can be assessed, but also variance across reviewers (we expect some reviewers to be tougher than others in their assessments).  Rothwell and Martyn find a very modest *R*^2 across abstracts of 0.11–0.15, indicating very little reviewer agreement.  However, *R*^2 across reviewers was a more respectable 0.27–0.32, suggesting more variation in reviewer "toughness".

Thus, it appears that in small samples of two or three reviewers, noise from positive/negative reviewer bias may swamp the signal of a particular manuscript.  This fits with my own anecdotal experiences.  Usually (but by no means always) reviewers seem to agree on what's lacking in a manuscript, but will often disagree on how terrible a particular failing is to the manuscript's prospects.  Perhaps if each reviewer's overall positive/negative rating bias were taken into account, we could arrive at a measure of manuscript quality that is more repeatable between independent reviewers.  In turn, this could make authors less beholden to the roll of the reviewer die.

