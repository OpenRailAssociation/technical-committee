# Questionnaire for OSRD

## What is the project's name?
OSRD : Open Source Railway Designer
## Describe the project. What does the project do, why is it valuable, where does it come from?
OSRD is a railway toolbox designed for multiple use cases. These tools have in common a reliance on railway infrastructure simulation and results analysis.
## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?
loic.hamelin@sncf.fr, ext.florian.amsallem@sncf.fr, nicolas.wurtz@sncf.fr, brieuc.loussouarn@sncf.fr
## Which organizations are sponsoring/contributing to the project?
SNCF Réseau, French Transportation Ministry (DGITM), European Union
## Where is the code hosted?
https://github.com/osrd-project
## What is the project's main license?
LGPL V3 https://github.com/osrd-project/osrd?tab=LGPL-3.0-1-ov-file#readme
## What other licenses does the project use, e.g., for included 3rd-party code?
* Core :
  * MIT
  * Apache 2
  * LGPLv2
  * EPL 2.0
  * BSD 3 clause
  * GPLv2 with classpath exception
  * LGPL 2.1
* Front:
  * MIT
  * BSD 3 clause
  * 0BSD
## Are any trademarks associated with the project?
no
## Does the project have a web site? Where is it?
https://osrd.fr/en/
## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?
* Chat on IRC at libera.chat#osrd
* Email at contact@osrd.fr
## What is the project's leadership team and decision-making process?
* Leadership : Product management team :
  * PM loic.hamelin@sncf.fr
  * RTE ext.constance.verchere@sncf.fr
  * PO alex.rolland@sncf.fr
  * PO giuliana.barbarino@sncf.fr
  * PO youssef.eleuch@sncf.fr
  * PO maelys.lerat@sncf.fr
  * System Architect brieuc.loussouarn@sncf.fr
  * Lead Back ext.florian.amsallem@sncf.fr
  * Lead Front nicolas.wurtz@sncf.fr
## How is development of the project planned and organized? Is this transparent to the public?
Project is organized according to framework SAFe.
Backlog is public in github
## What is the project's roadmap?
Roadmap is not public yet
## What other organizations in the world should be interested in this project?
Several Railway Companies have expressed an interest but nothing concrete for now except an experiment with another SBB tool
## Why would this project be a good candidate for inclusion in the OpenRail Association?
OSRD deals with the core business of railway meaning design and organize the operation of railway in a detailed and realistic environment. An extension to real time is planned
## What is the project's plan for growing in maturity if accepted within the OpenRail Association?
Being hosted by OpenRail would makes OSRD a neutral project for the railway sector and not only an SNCF project.
## Which of the repositories in the OSRD GitHub Org would you transfer to OpenRail? All of them or only a subset?
All the public repositories
## How is it decided if and when a pull request is merged?
Actually we have an internal process which is the same for internal and external contribution:
* Developer test on its side on local set up
* Request for a review of other developer(s)

* Check and comment if necessary until the reviewer thinks that the PR is fine
* Reviewer ask for a review by a maintainer before merging
## How can someone become a committer to the project?

For now, only the maintainers can make the final approval and merge the PR.
## How can someone become a maintainer of the project?
It has not been decided yet. I assume that once we have a contributor that provides good work, he or she can be granted maintainer. But we prefer not to have too many maintainers.


# Stage 2: Incubation

## Healthy metrics

Criteria:

* Have a healthy number of committers. A committer is defined as someone with the commit bit; i.e., someone who can accept contributions to some or all of the project. Committers can come from the same organization.
* Demonstrate a substantial ongoing flow of commits and merged contributions.
* Since these metrics can vary significantly depending on the type, scope and size of a project, the TC has final judgement over the level of activity that is adequate to meet these criteria.

Proof of meeting criteria:

* Some stats for the last month (only for the main repository).
  * 36 authors (pushed 239 commits)
  * 246 active PR (190 merged)
  * 246 active issues (99 closed)
  * 887 files touched (+17,018 / -24,855)
  * 3 releases

> [!NOTE]
> All this information is taken from [here](https://github.com/OpenRailAssociation/osrd/pulse)

## Open to external contributors

* Have a clear release process which communicates to users what to expect from releases. This includes a clear versioning scheme and cryptographically signing release artifacts.
  * Describe on our website here: https://osrd.fr/en/docs/guides/release/
  * We don't sign our release artifacts since it does not provide additional safety. Discussed in [this TC meeting](https://github.com/OpenRailAssociation/technical-committee/blob/main/meetings/2024-07-02.md).
* Specifications must have at least one public reference implementation.
  * Describe on our website here: https://osrd.fr/en/docs/reference/
* Project has implemented an open governance process. It's documented how decisions are taken in the project and how people can become committers and maintainers.
  * https://github.com/OpenRailAssociation/osrd/blob/dev/GOVERNANCE.md
* Project explains the business roadmap.
  * Nothing: We should add a page on our website with our 2024 and 2025 roadmap. We should describe our main expected features.

* Project is used in production. It's sufficient if this is only the organization developing the project.
  * Multiple instances of OSRD run on "SNCF réseau" infrastructure.
  * A small group of people at "SNCF Réseau" is currently using OSRD for operational studies.
  * We expect to have beta tester for the short term capacity management by the beginning of october.

* Create clarity about licensing by being [REUSE](https://reuse.software) compliant.
  * [osrd](https://github.com/OpenRailAssociation/osrd/blob/7a61b4ca1bae2f28e097e863c0e6c0643b017cdf/.github/workflows/build.yml#L968-L973)
  * [osrd-ui](https://github.com/OpenRailAssociation/osrd-ui/blob/130f000824031d936fabe31fa9cfc04ed5bb8cd7/.github/workflows/osrd-ui-build.yml#L100-L106)
  * [osrd-website](https://github.com/OpenRailAssociation/osrd-website/blob/bce226306b45b6d9d4fcd3f37463684a6ff29867/.github/workflows/code_quality.yml#L30-L35)
  * [osrd-chart](https://github.com/OpenRailAssociation/osrd-chart/blob/f1b6ac146a5018aab9b19ce1bcbe6391bb48c7f5/.github/workflows/pr-check.yml#L33-L39)
  * osrd-images: WIP (Repository set-up is not done yet)
* Require the [Developer Certificate of Origin (DCO)](https://developercertificate.org/) for all commits.
  * We added documentation about DCO on our website: [here](https://osrd.fr/en/docs/guides/contribute/contribute-code/commit-conventions/#the-developer-certificate-of-origin-dco)
  * osrd: WIP (issue with merge queue)
  * osrd-ui: WIP (issue with merge queue)
  * osrd-website: App installed
  * osrd-chart: App installed
  * osrd-images: WIP (Repository set-up is not done yet)
