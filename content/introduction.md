## Introduction
{:#introduction}

In recent decades, numerous instances of personal data exploitation occurred on the Web
as a consequence of the large amount of centralization of data on the Web.
Due to this, there has been increasing interest in the decentralization of such personal data,
which has spawned various decentralization innitiatives such as
[Solid](cite:cites solid), [Bluesky](cite:cites bluesky), and [Mastodon](cite:cites mastodon).
Common among these decentralized environments is that they distribute personal and permissioned data across a large number of authoritative Web sources.
For example, Solid calls these sources *personal data pods* that can contain RDF-based Linked Data documents.

Within such decentralized environments, the problem of finding data is of critical importance when we want to build effective decentralized applications.
While [centralized query processing](cite:cites sparqlqueryoptimization) over RDF data using
the [SPARQL query language](cite:cites spec:sparqllang) is a well-understood and extensively investigated problem,
query processing across decentralized environments is not.

The area of [SPARQL query federation](cite:cites fedx, hibiscus, splendid) that allows queries to be executed across multiple SPARQL endpoints
may offer us a solution to part of the problem.
However, existing federation techniques are [optimized for handling a *small* number (~10) of *large* sources](cite:cites fedshop),
whereas decentralized environments such as Solid are characterized
by a *large* number (>1000) of *small* sources.
Furthermore, federation techniques assume sources to be known prior to query execution,
which is not feasible in decentralized environments due to the lack of a central index.
<span class="placeholder printonly">
<span style="display: block; height: 11em;"></span>
<!-- This is a dummy placeholder for the ACM first page footnote -->
</span>
Alternatively, [Link Traversal Query Processing (LTQP)](cite cites linktraversal) is a technique
that discovers sources on-the-fly and can handle a very large number of them.
With LTQP, the follow-your-nose principle of Linked Data is used to enable the query engine
to follow links between documents to discover additional information.
[Initial experiments have shown](cite:cites solidquery) that LTQP is promising for decentralized environments such as Solid.