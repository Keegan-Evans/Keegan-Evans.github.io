---
Title: QIIME2 Semantic Validation
category: software
order: 1
layout: portfolio
---

![Semantic-Validation](https://drive.google.com/uc?id=17hpLptK4qvWhNVF-7lpdEDEgk4I46qlp){: width="200px"}

This was my first "real" project working at the Caporaso Lab. The idea of this
project was to allow checking for correct use-case and assigment of category
based on the _content_ of the data. This allows for the separation of how the
data is written to disk and the components of that data while still allowing
validation to be performed on the data. This validation can allow 

We can specify how the data should be written to disk(the "format") and what
the data should consist of depending on what it represents or how it is to be
used(the "type") independently of each other. For example, in bioinformatics,
there are a variety of different sequences that we might encounter: RNA, DNA,
Amino Acid, etc. We might want to represent these sequences and associated
data(sample ID, quality scores) in the same way on disk(fastq files anyone?).
However, while you can convert between a DNA sequence and a sequence of amino
acids, they cannot both be fed into their raw forms to the same tools. Also,
something that would be allowed in an amino acid sequence would not be
meaningful in a DNA sequence, and we would like to be able to test the
validity of the data that we are storing and using automatically.
Additionally, it does not make sense to have to change the way some data is
actually handled by the computer, simply because what that data _actually is_
is different. We were able to achieve this separation by creating a way to
associate code that verifies the content of some data with the Semantic Type
that is associated with it.
