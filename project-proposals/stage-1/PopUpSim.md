# Questionnaire for projects intending to join the OpenRail Association

*As a project intending to join the OpenRail Association, please:*
- *create your fork of this repository*
- *create a copy of this questionnaire and rename it to your project name*
- *answer the questions*
- *commit to a new branch in your fork, name it new-project-[project name]*
- *initiate a pull request from your new branch to this repository*
- *inform the technical committee by email: technical-committee@openrailassociation.org*

*Also see the documentation in [incubation process](../../incubation-process.md) for details about criteria and requirements for new projects and how it works to get new projects into the association.*

**Note: This project has been accepted as a subproject of DAC Migration DSS**

##  What is the project's name?
PopUpSim


## Describe the project. What does the project do, why is it valuable, where does it come from?
PopUpSim is a microscopic simulation tool that models the European freight rail industry's transition to Digital Automatic Couplers (DAC), simulating the complex logistics of retrofitting 500,000 freight wagons during a critical 3-week "big bang" migration period. The tool helps railway operators test different scenarios for temporary "pop-up" workshops, optimize locomotive schedules, and identify bottlenecks before real-world implementation to avoid costly mistakes during the actual migration. It was created during the Dreiländerhack 2024, a joint hackathon by major European railway companies (ÖBB, DB, SBB) to solve one of the industry's most complex logistical challenges.

## Who are the maintainers o f the project (these will be the primary contacts for the OpenRail Association)?
* Jan-Hendrik.Wendisch@deutschebahn.com
* Volker.Kuehn@deutschebahn.com

## Which organizations are sponsoring/contributing to the project?
- DB Systel GmbH


## Where is the code hosted?
Curently the code is hosted at github: https://github.com/jhw-db/PopUpSim


## Which exact repositories do you intend to transfer to the GitHub organization of the OpenRail Association?
PopUpSim


## What is the project's main license?
PopUpSim is licensed under Apache License 2.0 (both root and frontend)


## What other licenses does the project use, e.g. for included 3rd party code?
* MIT
* BSD-2 clause
* BSD-3 clause
* ISC
* MPL-2.0
* GPL-2.0

GPL-2.0 and MPL-2.0 licenses are only used in development dependencies. These
tools are not distributed.

## Are any trademarks associated with the project?
Currently, no trademarks are associated.


## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?
Not yet.


## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?
Mailing list, GitHub


## What is the project's leadership team and decision-making process?
PopUpSim is a Skydeck Accelerator innovation project powered by DB Systel.
The project team is devided into two streams:
* the business stream
* the development stream providing the code on GitHub.

## How is it decided if and when a pull request is merged?
Review and approval by 2 reviewers (and merge tests pass).


## How can someone become a committer or a maintainer to/of the project?
To become a maintainer a request needs to be filed and the team will decide.


## How is development of the project planned and organized? Is this transparent to the public?
All code relevant planning is published on GitHub.


## What is the project's roadmap?
* Technical setup of the repository and application until end of September.
* Architectural design until mid of October.
* Implementation of the MVP until end of January. First showcase at 16.12.


## What other organizations in the world should be interested in this project?
Other rail companies and railway lending companies in europe.


## Why would this project be a good candidate for inclusion in the OpenRail Association?
Extension / Part of Dac Migration DSS. Originates from Dreiländer Hack.


## Are there competing products or projects? If there are please explain how the proposed projects differentiates.
A small investigation of the market situation was already conducted.
Many of them are proprietary (like LUKS, Zedas and further) and therefore cannot be adjuested to the simulation needs of the dac migration. Also the investigated open source software like Opentrack are not actively maintained anymore.
Nearly all of the tools do not focus on the simulation of shunting trips, which is essential for PopUpSim.

## What standards does the project implement or rely on? How are they related to other existing standards?
Currently RailML and GeoJson might be supported as input formats for providing railway topology.
No final decisions are made, but it will be tried to adopt standards whenever senseful and possible.


## What is the tech stack of the project? Name the major programming languages and frameworks which are used.
* backend: Python
* frontend: typescript

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?
Maturity related to Dac Migration DSS.


## Concluding statements

By sending this questionnaire you confirm that the project will adhere to the [code of conduct](CODE_OF_CONDUCT.md) of the OpenRail Association.

By sending this questionnaire you confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
