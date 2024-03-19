## Challenges
{:#challenges}

In this section, we analyze how the requirements above are met by existing systems, and discuss which challenges remain.

To the best of our knowledge, three approaches exist at the time of writing that attempt to query or search through Solid pods in one way or another.
A [first approach (LTQP Solid)](cite:cites solidquery) applies LTQP to Solid, and makes use of the structural properties of Solid pods to optimize link traversal.
It allows full SPARQL queries to be executed across one or multiple Solid pods.
[ESPRESSO](cite:cites espresso) is a second approach that focuses on enabling keyword search over Solid pods.
It makes use of a distributed index for Solid pods which can be accumulated in a single location.
This accumulated index can then be queried using keyword search to find relevant pods to a query,
[POD-QUERY](cite:cites podquery) is another approach that involves placing a SPARQL query engine agent in front of a Solid pod,
which enables full SPARQL queries to be executed over single Solid pods. This approach does not enable query execution across multiple pods.

<figure id="requirements-systems" class="table" class="table-smaller-font" markdown="1">

| Requirement | LTQP Solid | ESPRESSO &nbsp; | POD-QUERY |
| ----------- | ---------- | -------- | --------- |
| Execution of arbitrary structured queries | ✓ | | ✓ |
| Discovery of data within pods | ✓ | ✓ | ✓ |
| Discovery of data across pods | ✓ | ~ | |
| Handling location heterogeneity | ✓ | ✓ | ✓ |
| Handling schema heterogeneity | | | |
| Handling API heterogeneity | | | |
| Authentication | ✓ | ✓ | ✓ |
| User-perceived performance | ~ | ✓ | ✓ |

<figcaption markdown="block">
An illustration of which requirements are met by which approaches.
A checkmark (✓) indicates that the requirement is fully met.
A tilde (~) indicates that the requirement is partially met.
Otherwise, the requirement is not met. 
</figcaption>
</figure>

[](#requirements-systems) indicates how well each approach meets the requirements listed above.
This table shows that none of the approaches meets all of the requirements for querying over decentralized environments.
Most of the requirements are met by at least some of the approaches,
but the requirements for "Handling schema heterogeneity" and "Handling API heterogeneity" are met by none of the approaches.
If SPARQL querying across multiple pods is desired, a traversal-based approach such as LTQP Solid will be needed.
However, this approach only achieves acceptable levels of performance for non-complex queries.

As such, future research is needed in at least the following three areas.
First, the heterogeneity of schemas across pods must be handled.
Schema alignment could either happen server-side by requesting data in specific vocabularies.
Alternatively, it could happen client-side at query-time in case the server is not able to provide these schema alignment capabilities.
Second, the heterogeneity of pods in terms of their APIs must be handled.
For this, query engines need to be able to discover the capabilities of heterogeneous APIs, and use them as efficient as possible during query planning.
Third, more work is needed towards improving the performance of traversal-based queries.
This could be done by focusing on client-side optimization techniques, such as prioritizing techniques for link traversal or better query planning algorithms.
Alternatively, this could be done by exposing additional metadata or by introducing auxiliary summaries in third-party aggregators
which could reduce the amount of work that needs to be done in the client-side query engine if that aggregator has already part of the query answer available.