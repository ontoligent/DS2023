---
title: The Flight of a Swallow
layout: landing
---
> Let us take any graphical curve, that, for example, of criminal recidivists for the last fifty years. If its physiognomy is unlike that of the human face, is it not, at least, like the silhouette of hills and vales, or, since it is a question of movement,—for in statistics we speak quite properly of the movement of criminality, of birth or marriage rates,—like the sinuous lines, the sharp rises and sudden falls, in the flight of a swallow? . . . Why should the statistical diagrams that are gradually traced out on this paper from accumulations of successive crimes and misdemeanours—whose records are transmitted in official reports to the government, from the government in annual returns to the bureau of statistics at Paris and from this bureau, in blue books, to the magistrates of the different tribunals—why should these silhouettes, which likewise give visible expression to masses or series of co-existent or successive facts, be the only ones to be taken as symbolical, whereas the line traced on my retina by the flight of a swallow is deemed an inherent reality in the being which it expresses and which essentially consists, it seems to me, of moving figures, of movements in an imaginary space? Is there really less symbolism in one case than in the other? Is not my retinal image, the curve traced on my retina by the flight of this swallow, merely the expression of a mass of facts (the different states of the bird) which we have not the slightest reason in the world to consider as analogous to our visual impression?
> — Gabrielle Tarde, 1890, “Statistics and Archaeology,” <i>The Laws of Imitation</i>, <a href="https://archive.org/details/bwb_P9-DIS-834/page/n3/mode/2up">Internet Arhive</a>.

![](../../images/flight-of-the-swallow.png)

Consider the passage and painting above.
The passage is by the French sociologist Gabriele Tarde (1843-1904) from an essay written at a time when the value of data for the social sciences was just being discovered. He is making the point that the patterns surfaced by the visualization of data are fundamentally the same as the patterns we perceive with our senses. The graph he had in mind is something like the one below.
![]
:::{figure} ../../images/linly_1160-641X_1881_num_1_1_T1_0060_0001_1.png 

Lacassagne, Alexandre. 1881. “Marche de la criminalité en France depuis 1825 jusqu’en 1880.” <i>Publications de la Société Linnéenne de Lyon 1</i> (1): 48–72. https://doi.org/10.3406/linly.1881.11441. 

:::

Ballas and Tarde may have been completely unaware of each other’s work, but there is an important conceptual link between them. It’s as if the artist was commissioned to illustrate the scientist’s insight.

In Tarde's analogy, the data collected by the statistician to describe social events over time is just like the sense data collected by the human eye when it perceives the flight of a bird. And just as the brain synthesizes these data into a coherent visual image with a distinctive pattern, so does the statistician synthesize the data it receives from survey instruments into a visual image with a distinctive pattern. Tarde wants to say that these are fundamentally the same processes at different levels. The bird and society are both organisms that move in particular ways, and these movements are captured by our instruments of perception.

Remarkably, Balla's painting visualizes Tarde's analogy for us — it is a visualization of the process of visualization, using the same image of the swallow. The painting depicts the brain's process of converting the individual perceptions of a number of birds over time into a single, graspable image. It conveys the idea that human perception works like film, where a series of discrete images combine to produce the illusion of continuous movement.

**Data visualization is like this**.

Data visualization is a form of extended perception — it allows us to perceive phenomena that are real but too large or dispersed for us to see physically, such as the population of a country, the flow of goods in an economy, or all the words in Wikipedia. So we create a concrete visual substitute for us to literally see these phenomena as physical objects before our eyes.

As the examples of Balla and Tarde imply, the process of creating these objects involves decomposing complex phenomena into data and then recomposing these data into a visible artifact that represents the original in some important way.

We can think of this process as *decomposition* and *recomposition*.

![](../../images/decom-recom-penguin.png)

This process mirrors the pipeline of data science.

## Historical notes

The affinity between Tarde and Balla is not accidental. Both were captivated by the work of French scientist Étienne-Jules Marey (1830-1904), inventor of chronophotography, a method by which animal locomotion and physical processes that are normally too fast to be captured by the human eye are decomposed into a series of snapshots and then displayed as a montage. Marey was interested in understanding animal motion and he invented this form of scientific visualization to advance his research. Pictured below is montage of photos that show the movements of a pelican as it lands.

<figure>

<img src="https://i0.wp.com/www.themarginalian.org/wp-content/uploads/2011/05/marey1.jpg?w=680&amp;ssl=1" style="width:100%;"/>

<figcaption>

</figcaption>

</figure>

It was by using a precursor of Marey's technique that the galloping of a horse was finally understood. In 1878 an English photographer named Eadweard Muybridge, at the request of Leland Stanford in Palo Alto, captured the motion of a moving horse by taking twelve photographs in succession, using separate cameras placed along a track and then combining them into a single animated sequence. The resulting video is show below.

<figure>

<iframe width="560" height="315" src="https://www.youtube.com/embed/heRuLp7CyTM?si=GQVnglQCPjALd9mi" frameborder="0" allowfullscreen>

</iframe>

<figcaption>

<p>"The horse in motion," 1878, by Eadweard Muybridge. This video is considered the first motion picture ever made.</p>

</figcaption>

</figure>

The composite photos from which the animation was created were later depicted in Marey's book.

<figure>

<img src="../../images/marey-horse-grid.png"/>

<figcaption>Marey 1980, p. 130.</figcaption>

</figure>

Using his own device, Marey created montages of horses' movements like the one below.

:::{figure} ../../images/marey-galloping-horse.jpg

Marey, 1887, Arab Horse Gallup, <a href="https://commons.wikimedia.org/wiki/File:%C3%89tienne-Jules_Marey_-_Arab_Horse_Gallup_-_Google_Art_Project.jpg">Wikimedia Commons</a>.

:::

Note the process of decomposition and recomposition in the images above. The experience of watching a galloping horse is decomposed into a set of discrete images which are then recomposed into a montage. The montage presents a static composition of a dynamic process, allowing us to see (visualize) that which we could not see before.

Both Balla and Tarde were fascinated by Marey's photographic studies of birds, which were eventually published in <i>Le Vol des oiseaux \[The Flight of Birds\]</i> (1890, <a href="https://archive.org/details/gri_33125008636926/mode/2up">Internet Archive</a>). In this book, you can see where Tarde got the idea to draw an analogy between the movements of society and the flight of a bird — both can be represented by the same type of plot, the line graph.

<figure class="align-center">

<img src="../../images/marey-bird-and-graph-detail.png"/>

<figcaption>

<p>Marey 1890, p. 365.</p>

</figcaption>

</figure>

## Modernism

Aside from this connection, both Tarde and Balla were modernists in the their fields.

Tarde’s sociology proposed a radical decomposition of the social into what today we would call agent-based models. Social systems are just patterns that emerge from basic rules of interaction — what he called laws of imitation. The view was much ahead of its time, and the significance of Tarde’s work has only recently been recognized (see Bruno Latour’s <i>The Science of Passionate Interests</i>, 2009).

Balla was a member of the Futurist movement, which sought to represent and celebrate the culture of speed and change that characterized the rapid mechanization of society going on at the time. His art sought to capture this movement with contemporary tropes of the new media, for example motion pictures, which demonstrated the emergence of continuity from discontinuity.

In both cases, experienced realities are imagined as dynamic constructions of more primary elements, elements whose behaviors and contours are captured by data.

```{=html}
<!--
The fact that both Tarde and Balla use, in effect, the same phrase — "flight of swallows" and "the flight of a swallow" — suggests a shared linguistic meme in circulation in Europe at the time. A quick Google ngram search indeed shows the widespread usage of the phrase throughout the nineteenth century in variety of contexts, from the scientific to the poetic. Apparently, swallows are notable for their smooth, vigorous, and undulating movements, as well as their predictable nature, owing to their migration pattern, presaging a change of seasons. As one author, a contemporary of Ballas and Tarde, puts it, “the flight of the swallow is the poetry of motion”:

<div class="bourdieu">

<p>The swift circlings, sweeping curves, daring plunges, and lofty soarings of these silent birds appeal so strongly to our imagination and musical instinct, that we are almost tempted to class the swallows with the birds of song. It would be interesting to follow the flight of the swallow through the pages of poetic literature.</p>

<p>&mdash;  H.H. Ballard, 1894, “A Basket Nest,” <i>The Outdoor World</i>, 
<a href="https://www.google.com/books/edition/The_Observer/z-0yAQAAMAAJ?hl=en&gbpv=1&dq=H.H.+Ballard,+1894,+%E2%80%9CA+Basket+Nest,%E2%80%9D+The+Outdoor+World&pg=PA289&printsec=frontcover">Google Books</a>.</p>

</div>

As for the phrase itself, its source appears to be a variant of that found in the Hebrew Bible, specifically Proverbs 26:2: “As the bird by wandering, as the swallow by flying, so the curse causeless shall not come” (KJV). Here the flight of the swallow signifies the certainty of doom, an apt etymology for an image used to signify, for Tarde, the unconscious laws that govern of social life. 
-->
```


