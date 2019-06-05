# Packetization Layer Path MTU Discovery

## draft-ietf-tsvwg-datagram-plpmtud
This repository is used to work on the standards track RFC describing a PLTPMTUD method
applicable to SCTP, UDP and QUIC.
The `.xml` source file can be processed by
[xml2rfc](http://xml2rfc.tools.ietf.org).  


## Building and Submitting

This document uses rfcxml v3 with svg and txt artwork. The svg artwork is
generated from the ascii artworking using the
[goat](https://github.com/blampe/goat) tool multiple artwork. 

The document needs to be built with the --v3 flags.

Editing and working on the document can be done using the Makefile. This
Makefile will ensure that the svg diagrams are regenerated when the original
ascii artwork is changed.

For submission the document and the artwork should be built into a single xml
file by:

    xml2rfc --v3 ----preptool draft-ietf-tsvwg-datagram-plpmtud.xml 

Which will create the file draft-ietf-tsvwg-datagram-plpmtud.prepped.xml

The makefile can be used to create the txt version of the document for upload.

## Related Documents
* [RFC 1191: Path MTU Discovery](https://tools.ietf.org/html/rfc1191)
* [RFC 1981: Path MTU Discovery for IP version 6](https://tools.ietf.org/html/rfc1981)
* [draft-ietf-6man-rfc1981bis: Path MTU Discovery for IP version 6](https://tools.ietf.org/html/draft-ietf-6man-rfc1981bis)
* [RFC 4820: Padding Chunk and Parameter for the Stream Control Transmission Protocol (SCTP)](https://tools.ietf.org/html/rfc4820)
* [RFC 4821: Packetization Layer Path MTU Discovery](https://tools.ietf.org/html/rfc4821)

