# **docker-impala-kudu**
___

### Description
___

This image runs [*Apache Kudu*](https://kudu.apache.org/).

The *latest* tag of this image is build with the Cloudera Kudu distributions.

You can pull it with:

    docker pull parrotstream/kudu


You can also find other images based on different Apache Kudu releases, using a different tag in the following form:

    docker pull parrotstream/kudu:[kudu-release]-[cdh-release]


Stop with Docker Compose:

    docker-compose -p parrot

Setting the project name to *parrot* with the **-p** option is useful to share the network created with the containers coming from other Parrot docker-compose.yml configurations.


Once started you'll be able to access to the following UIs:

| **Impala Web UIs**           |**URL**                    |
|:----------------------------|:--------------------------|
| *Kudu Master*               | http://localhost:8051     |
| *Kudu Tablet Server*        | http://localhost:8050     |

### Available tags:

- Kudu 1.3.0 ([1.3.0-cdh5.11.1](https://github.com/parrot-stream/docker-kudu/blob/1.3.0-cdh5.11.1/Dockerfile), [latest](https://github.com/parrot-stream/docker-kudu/blob/latest/Dockerfile))
