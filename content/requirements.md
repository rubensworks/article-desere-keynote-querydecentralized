## Requirements
{:#requirements}

In order to build applications across a decentralized environments,
an interaction layer is needed that abstracts away the complexities involving reading from and writing to decentralized environments.
Such an abstraction layer can be achieved in the form of query engines, where queries are the declarative language of exchange.
Below, we highlight the key requirements for query engines across decentralized environments such as Solid.
We limit ourselves to the requirements of read-only queries, and leave write queries for future work.

### Execution of arbitrary structured queries

A query engine should be able to execute queries without any restrictions.
Concretely, any SPARQL queries should be executable, where the full expressiveness of the SPARQL language can be used.

### Discovery of data within pods

Decentralized environments such as Solid group personal data in so-called *pods*.
Such a pod therefore contains all data created or owned by a person or agent.
A pod can contain multiple resources, where each resource contains RDF triples that have specific access control.
As such, pods lead to data being spread over different resources.
Query engines aiming to query over these pods should be able to discover all RDF triples across all resources in the pod.

### Discovery of data across pods

Since data can also be interlinked between resources in different pods,
it can also be useful to materialize these interlinkings using queries.
As such, query engines should be able to discover links between resources and different pods and follow them.

### Handling location heterogeneity

Data pods can be heterogeneous in terms of their data locations.
For example, one pod may store pictures grouped by year, while another pod may store pictures by location.
As such, in order for queries to be generic and usable for different pods, query engines should make no assumptions about data paths.

### Handling schema heterogeneity

Data pods can be heterogeneous in terms of their data model.
As such, query engines should be able to discover and infer schemas used in the pod, even if it differs from the one used in the query.
Furthermore, schema alignment should also take place across multiple pods.

### Handling API heterogeneity

While pods currently are exposed using a document-oriented interface, different kinds of APIs may be added in the future.
Data pods can be heterogeneous in terms of their API, as some pods may fully expose their data using one API, while another pod may use some other API.
A single pod may even expose subsets of the full dataset with different APIs.
Therefore, query engines should be able to understand and exploit these different APIs as best as possible.

### Authentication

While pods may contain fully public data, data is usually private and only accessible to certain people or groups.
Since different data within pods may be exposed at different levels of access control,
query engines need to be able to request this data on behalf on the users through authentication mechanisms.

### User-perceived performance

Decentralized applications should be usable with a sufficient level of user-perceived performance.
As such, when a user performs an action that translates to a query execution,
the user should be served with at least a partial response based on query results in the order of seconds,
so that user attention is kept within the application.
