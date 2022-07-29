---
---

This project sought be able to predict which metabolites are likely to be
found given microbe relative frequencies. This really was more of a
refactor/port from TensorFlow 1.x to Pytorch 2.0. There was an original
[paper]() written based on the first implementation. However, between the
writing of the paper and its publication, TensorFlow moved from 1.x to 2.0,
which would have required a major refactor anyways, and Jamie Morton decided
that he would rather use Pytorch to re-implement it rather than upgrading the
TF version. He approached the Caporaso Lab about participating/spearheading
the project.

When I was assigned it, I had _no_ experience building anything using machine
learning. I began by spending a couple of weeks engaged in a deep dive into.

## How MMVec works

### The data
### The models
### Batching

Batching turned out to be some what trickier than first thought, as pytorch
generally wants to work with a single sample(database row) at a time. We want
to calculate the sum loss over all samples, batching by a set of microbe
indexes, running enough batches to so that each sample had the same number of
indexes drawn from it as existed as observations of microbes in all of the
data.

Turns out that we do not want to batch in the same way that many other models
would batch, in that we would 
