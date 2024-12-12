# Questionnaire for projects intending to join the OpenRail Association

_As a project intending to join the OpenRail Association, please fill out this questionnaire and send it to the Technical Committee. See the [incubation process](../../incubation-process.md) for details about criteria and requirements for new projects and how it works to get new projects into the association._

_Copy this template and fill in your answers to the questions in the sections below._

## What is the project's name?

Trainpositioning lib

## Describe the project. What does the project do, why is it valuable, where does it come from?

The library is used in production by Infrabel. It allows to post process the GNSS location as measured by a train. At Infrabel we use it to improve the positioning of measurement vehicles and thus of the measured values of the track, catenary, signaling, ...

The library works by taking into account:

- the navigability of the topology, you cannot jump from one track to the other
- a train path as registered by the traffic management or the signaling system

## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?

Infrabel:

- glenn.vancalster@infrabel.be
- kevin.goos@infrabel.be
- ilya.quateau@infrabel.be
- mathias.vandenauweele@infrabel.be

## Which organizations are sponsoring/contributing to the project?

Infrabel

## Where is the code hosted?

At the moment, on a gitlab server at Infrabel. We want to opensource it immediately under the openrail organisation.

## Which exact repositories do you intend to transfer to the GitHub organization of the OpenRail Association?

Originally, the repository contains a JSON API. We will split of the logic from the API and put it in a seperate repository. The API wrapper is not very usefull to opensource, so we will only opensource the library repository.

## What is the project's main license?

We propose MIT License or the Apache License 2.0 but want to have the advise of the technical committee

## What other licenses does the project use, e.g. for included 3rd party code?

We are still in the progress of simplifying the libary, but at the moment, these packages are used with their respective licenses:

- Microsoft.VisualStudio.Azure.Containers.Tools.Targets: [Microsoft specific license](https://www.nuget.org/packages/Microsoft.VisualStudio.Azure.Containers.Tools.Targets/1.21.0/License)
- NetTopologySuite: BSD-3-Clause License
- NodaTime: Apache License 2.0
- Npgsql.NetTopologySuite: PostgreSQL License
- Serilog: Apache License 2.0
- Serilog.Sinks.Console: Apache License 2.0
- DotSpatial.Projections: MIT License

We don't immediately see any major issues.

## Are any trademarks associated with the project?

No

## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?

No, no website. We will foresee documentation and a separate .net project to run tests, both will also be open sourced.


## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?

Git issues

## What is the project's leadership team and decision-making process?

- PM: glenn.vancalster@infrabel.be
- Dev: kevin.goos@infrabel.be
- Dev: ilya.quateau@infrabel.be
- Prev PM / Dev: mathias.vandenauweele@infrabel.be

## How is it decided if and when a pull request is merged?

Depends on the pull request, generally the project leader decides.

## How can someone become a committer or a maintainer to/of the project?

After discussion with the project leader and current development team.

## How is development of the project planned and organized? Is this transparent to the public?

Using git issues & epics/stories.

## What is the project's roadmap?

After the project refactoring and extensive testing, no further development is planned.

## What other organizations in the world should be interested in this project?

All organisations that use measurement trains and process the measurements. But the project can also be used as a guideline for organisations that want to post processes location measurements for other domains that include topology and navigability.

## Why would this project be a good candidate for inclusion in the OpenRail Association?

Because all infra managers do this and should better do it together.

## Are there competing products or projects? If there are please explain how the proposed projects differentiates.

Not that we know of.

## What standards does the project implement or rely on? How are they related to other existing standards?

Topology and navigability is also defined by several other railway related standards. But they are very loosely related.

## What is the tech stack of the project? Name the major programming languages and frameworks which are used.

C#.NET

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?

Find other openrail members with similar software and if they are willing, combine their logic into this project and collaborate to both advance.

## Concluding statements

By sending this questionnaire you confirm that the project will adhere to the [code of conduct](CODE_OF_CONDUCT.md) of the OpenRail Association.

By sending this questionnaire you confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
