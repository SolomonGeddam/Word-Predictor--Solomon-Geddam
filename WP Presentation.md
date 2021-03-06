Word Predictor
========================================================
author: Solomon Geddam
date: 
autosize: true

Task to be done
========================================================

The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others.

Overview
========================================================


Click [here](https://solomongeddam.shinyapps.io/Word-Predictor/) for the app and try it!

- Predicts next word as the user types a sentence
- Similar to the way most smart phone keyboards are implemented today using the technology of Swiftkey
The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others.


Underlying Algorithm
========================================================

- N-gram model with "Stupid Backoff" ([Brants et al 2007](http://www.cs.columbia.edu/~smaskey/CS6998-0412/supportmaterial/langmodel_mapreduce.pdf))
- Checks if highest-order (in this case, n=4) n-gram has been seen. If not "degrades" to a lower-order model (n=3, 2); we would use even higher orders, but ShinyApps caps app size at 100mb

<div style="align:top"><img src="./www/algo-flow.png" alt="algorithm flow" /></div>

Further Exploration
========================================================

- The code is available on [GitHub](https://github.com/sriharshams/coursera-data-science-capstone)
- Further work can expand the main weakness of this approach: long-range context
    1. Current algorithm discards contextual information past 4-grams
    2. We can incorporate this into future work through clustering underlying training corpus/data and predicting what cluster the entire sentence would fall into
    3. This allows us to predict using ONLY the data subset that fits the long-range context of the sentence, while still preserving the performance characteristics of an n-gram and Stupid Backoff model
