# OpenRail Incubation process

*This is a draft*

This document describes the incubation process for projects in the OpenRail Association. This includes how a project can join OpenRail as well as how a project can move to subsequent stages of maturity.

Projects can be in four stages which are reflecting the maturity of the project and the level of adoption in the OpenRail community (Sandbox, Incubation, Graduated, Retired). For each stage the project has to fulfill a set of criteria. Projects can propose to be moved from one stage to the next. The TC will evaluate the proposal and decide if the project can move to the next stage.

![Project lifecycle](images/incubation-stages.svg)

The criteria for entering each stage cover the compliance, business, and technical evaluation of the project. The evaluation has to be done for each version of the project. A community version could be accepted and not the enterprise version.

The criteria for each stage are listed in the subsequent sections along with the process how projects are accepted into the corresponding stage.

## Stage 0: Candidate

Projects which intend to join the OpenRail Association are considered candidates. Candidates are not yet OpenRail projects. They are evaluated by the Technical Committee on request of the project to become part of the OpenRail Association. Candidates need to at least fulfill the criteria for the Sandbox stage to be accepted into the OpenRail Association.

## Stage 1: Sandbox

The Sandbox stage is the initial stage for projects being hosted by the OpenRail Association. Sandbox projects meet the minimal requirements necessary for being considered to be part of the OpenRail Association. The Sandbox stage is meant for projects that are in an early phase and are being prepared for meeting the full criteria of the Incubation stage.

The barrier for entering the Sandbox stage is intended to be low, so that it's easy for projects to become part of the OpenRail Association and the work necessary for moving to the next stage can be done within the Association.

### Criteria

* Describe project
* Name maintainers of the project
* Adopt the OpenRail Association Code of Conduct
* Adhere to OpenRail Association IP Policy

### Process

1. The project applies to join the Sandbox using the [New Project Questionnaire](new-project-questionnaire.md).
2. The Technical Committee evaluates the application and works with the project to address any open issues.
3. On a positive evaluation the Technical Committee prepares the decision to accept the project as an OpenRail Association project.
4. According to the statutes of the OpenRail Association Article 22 the OpenRail board finally decides about the acceptance of the project based on the decision prepared by the Technical Committee.
5. The project is accepted into the OpenRail Association as Sandbox project and their code is moved to the [GitHub organization of the OpenRail Association](https://github.com/OpenRailAssociation).
6. The project is listed on the [OpenRail Association web site](https://openrailassociation.org).
7. Sandbox projects can use the badge "OpenRail project (Sandbox)" (to be created).

## Stage 2: Incubation

The Incubation stage is for projects that have reached a level of maturity that indicates they are ready to be used by end users. Incubation projects meet the main criteria of the OpenRail Association which make sure that the project is governed openly. Open governance means that decisions are taken in a transparent way and there is a path to become committer and maintainer based on the merits of contributions.

The barrier for entering the Incubation stage is intended to be high, so there is a high level of quality for projects which have reached this stage.

### Criteria

*Examples from CNCF incubation process, to be adopted*

* Have a healthy number of committers. A committer is defined as someone with the commit bit; i.e., someone who can accept contributions to some or all of the project.
* Demonstrate a substantial ongoing flow of commits and merged contributions.
* Since these metrics can vary significantly depending on the type, scope and size of a project, the TOC has final judgement over the level of activity that is adequate to meet these criteria
* A clear versioning scheme.
* Specifications must have at least one public reference implementation.
* Project explains the business roadmap.

### Process

1. Apply to move to Incubation using the questionnaire (to be done).
2. The Technical Committee evaluates the application and works with the project to address any open issues.
3. On a positive evaluation the Technical Committee decides to accept the project as an Incubation project.
4. Sandbox projects can use the badge "OpenRail project (Incubation)" (to be created).

## Stage 3: Graduated

The Graduated stage is for projects which have reached a level of hight maturity and adoption. They are the flagship projects of the OpenRail Association.

### Criteria

*Examples from CNCF incubation process, to be adopted*

* Document that it is being used successfully in production by at least three independent adopters which, in the TC’s judgement, are of adequate quality and scope.
* Have committers from at least two organizations.
* Have achieved and maintained a OpenSSF Best Practices Badge.
* Have completed an independent and third party security audit with results published of similar scope and quality as this example which includes all critical vulnerabilities and all critical vulnerabilities need to be addressed before graduation.
* Explicitly define a project governance and committer process. The committer process should cover the full committer lifecycle including onboarding and offboarding or emeritus criteria. This preferably is laid out in a GOVERNANCE.md file and references an OWNERS.md file showing the current and emeritus committers.
* Explicitly define the criteria, process and offboarding or emeritus conditions for project maintainers; or those who may interact with the CNCF on behalf of the project. The list of maintainers should be preferably be stored in a MAINTAINERS.md file and audited at a minimum of an annual cadence.
* Have a public list of project adopters for at least the primary repo (e.g., ADOPTERS.md or logos on the project website). For a specification, have a list of adopters for the implementation(s) of the spec.
* Please include a short one-page narrative based off the Graduation template, no more than 500 words.

### Process

1. Apply to move to Graduation using the questionnaire (to be done).
2. The Technical Committee evaluates the application and works with the project to address any open issues.
3. On a positive evaluation the Technical Committee decides to accept the project as a Graduation project.
4. Graduation projects can use the badge "OpenRail project (Graduation)" (to be created).

## Stage 4: Retired

Project that aren't developed anymore or that have been replaced by another project are moved to the Retired stage.

### Criteria

* Project has no active maintainers
* Development activity has slowed significantly

### Process

1. A project requests the project to be moved to the Retired stage or the Technical Committee finds that an existing project is not active anymore.
2. The project is noticed that it is about to be moved to the Retired stage.
3. The project can object and provide evidence that it still is active.
4. If there is no evidence that the project is still active the Technical Committee decides to move the project to the Retired stage.
5. The project is clearly marked as Retired in its GitHub repository and any other relevant locations.

## References

The stages and the process are inspired by the [CNCF project lifecycle process](https://github.com/cncf/toc/blob/main/process/README.md) and the [LF Energy technical project lifecycle](https://wiki.lfenergy.org/display/HOME/Technical+Project+Lifecycle).
