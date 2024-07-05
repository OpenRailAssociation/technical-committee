# Questionnaire for projects intending to join the OpenRail Association

##  What is the project's name?

libLRS

It stands for _library for linear referencing systems_.

## Describe the project. What does the project do, why is it valuable, where does it come from?

In the railway industry, most of the objects are located by a linear referencing system, a position along a track (i.e. : track 1, kilometer 3+532 meters).

As railways networks may be more than a century old, there are many exceptions, local specific rules…

The goal of the libray is to have a flexible, high performance and easy to integrate linear referencing systems library that can be used in any system to manipulate LRSs:
* projecting from one linear referencing system to an other
* converting from/to geographical coordinates
* work with spherical, projected and schematic coordinates
* integrate in existing workflows
* high performance
* extract geographical linestrings between two reference points

## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?

loic.hamelin@sncf.fr, ext.tristram.grabener@sncf.fr, ext.louis.greiner@sncf.fr

## Which organizations are sponsoring/contributing to the project?

SNCF Réseau, French Transportation Ministry (DGITM), European Union

## Where is the code hosted?

GitHub

## Which exact repositories do you intend to  transfer to the GitHub organization of the OpenRail Association?

https://github.com/osrd-project/liblrs/

## What is the project's main license?

MIT https://github.com/osrd-project/liblrs/blob/main/LICENSE.md

## What other licenses does the project use, e.g. for included 3rd party code?

Rust library:
* MIT
* Apache-2.0

Python binding:
* MIT

Javascript binding and demo app:
* MIT
* BSD-3-Clause license
* ISC license

## Are any trademarks associated with the project?

No.

## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?

There is a demonstration of the app hosted at https://osrd-project.github.io/liblrs/

We agree to move it to the OpenRail Association.

## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?

Matrix: https://matrix.to/#/#liblrs:osrd.fr


## What is the project's leadership team and decision-making process?

Product manager : loic.hamelin@sncf.fr
Lead developer : ext.tristram.grabener@sncf.fr
Product owner : ext.celine.durupt@sncf.fr

As the team is small, all decisions are made collaboratively. We meet each week to share progress and decide on next steps. We are open to include any interested person into the decision-making team.

## How is it decided if and when a pull request is merged?

The review of a maintainer is required.

## How can someone become a committer or a maintainer to/of the project?

Anybody can suggest a pull request. If it is accepted after the review, one becomes a commiter.

Maintainers are coopted by the other maintainers. Candidates must be an active commiter.

## How is development of the project planned and organized? Is this transparent to the public?

Every issue, pull request and review is public. Technical debates are done in the public matrix channel.

## What is the project's roadmap?

* Publish the library on crates.io, npm and pypi
* Documentation for the various edge case
* Interactive demonstration based on opendata
* Use liblrs for the project OSRD https://github.com/OpenRailAssociation/osrd

## What other organizations in the world should be interested in this project?

Appart for railway infrastructure manager, any company working with linear infrastructure should be interested:
* electrical network
* pipeline operator
* highway operator
* touristical bike route coordinator 

## Why would this project be a good candidate for inclusion in the OpenRail Association?

This library has the ambition to be a cornerstone of any tool concerning rail networks. As such, being included in the OpenRail Association will allow the library to be considered as a neutral solution and give more visibility to become the reference library for LRSs.

## Are there competing products or projects? If there are please explain how the proposed projects differentiates.

GIS software (like ARCGis and QGIS) have plugins to manipulate those data. However they cannot be used with existing software, as OSRD for example.

## What standards does the project implement or rely on? How are they related to other existing standards?

The data representation and the vocabulary is based on the article _A generic Data Model for Linear Referencing Systems_ published in the National Cooperative Highway Research Program, Research Result Digest (number 218, September 1997) and the [ISO 19148](https://www.iso.org/standard/75150.html) norm.

## What is the tech stack of the project? Name the major programming languages and frameworks which are used.

The core is developped in rust.

Bindings are generated for python and javascript. Bindings for other languages will be added if asked.

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?

* Validation of the proposed data model by other infrastructure managers
* Code reviews from other users : optimization and reliability of the code
* New features proposals and/or implementation
* Proof of usefulness in other railway-related projects that could make the project known in other, non railway-related organizations

## Concluding statements

We think that libLRS can be useful for every linear infrastructure manager and hope that the OpenRail platform will help to share and improve the project.
