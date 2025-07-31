# What is a good project for the OpenRail Association?

*Considerations, criteria and examples for identifying projects which could be developed as open source software in the OpenRail Association*

## Summary

The OpenRail Association facilitates collaboration across organizations in the railway sector using the established model of open source software development. Collaboration can help to share efforts, establish common standards and reference implementations, contribute to open and fair competition, and underpin corporate social responsibility. This document helps to identify projects where this type of collaboration is beneficial to its participants and where the OpenRail Association is the suitable facilitator.

## Scope

This document is meant to serve as a guideline and a set of hints for identifying projects which could potentially be developed as open source software within the OpenRail Association. The focus is on identifying those projects where the open source model provides a business benefit to its participants and where the OpenRail Association with its focus on the railway sector would be a suitable facilitator.

The focus is on projects which include a significant part of software development done by railway companies or their suppliers. Pure consumption of open source software is out of scope. But when new software is developed or existing software is extended there always should be the question: ***"Can this be done as open source?"*** This guide provides means to answer this question.

Out of scope are projects which have no particular connection to the railway sector, but fit into more general scopes, such as cloud infrastructure. It still might make a lot of sense to engage in open source in these areas. There are other suitable foundations which can and do act as host for such projects.

## Principles

Prerequisite for projects to be hosted by the OpenRail Association is following a few principles which guarantee that the project can act as a true open source project. That doesn't mean that potential projects already have to fully implement these principles, but that with the transition to the OpenRail Association a model has to be established which adheres to them.

### Code is published under an open source license

The code has to be released under a license approved by the Open Source Initiative as open source. Projects under the OpenRail Association umbrella are publicly available and can be used and distributed by everybody. This implies that they can't contain trade secrets or proprietary components. Note that it often is a question of architecture to structure a project in a modular way which allows to develop the parts which benefit from the open source model independently of other maybe internal parts. It often is desirable to have such an architecture for other reasons as well such as enabling DevOps models, reducing interdependencies, or increasing agility and quality.

### Development is governed by an open governance model

Development has to be done in an open and transparent way providing equal access for all participants. Influence on the project is achieved by active participation, not by status or by committee decision. This does mean giving up some control but it doesn't mean that there is no control. It might take courage to take this step, but it is crucial in order to unlock the potential of the open source model where diverse participants effectively work together for their mutual benefit.

### Open collaboration across organizations

The OpenRail Association provides a platform for international collaboration between a wide range of actors in the railway sector. This includes railway operators and infrastructure providers as well as suppliers and research institutions. It doesn't mean that every project necessarily will have all of these kinds of collaborators.

## Indicators

Here is a list of indicators which projects could be candidates for being developed as open source software and specifically under the umbrella of the OpenRail Association. These apply to new projects as well as to projects which already have a history outside of the OpenRail Association. This could be open source projects or internal proprietary projects. Projects which already have an existing code base will have to consider some additional aspects how to open source the existing code. This leads to some extra effort, but the indications are the same.

### Implementation of standards

Standards are the same for everybody by definition and they benefit greatly from implementations which are interoperable not only on paper but also in practice. This can be achieved by open reference implementations and shared libraries. These components are usually part of the commodity stack which is not a differentiating factor for the business, so open source implementations provide shared value to the whole sector.

### Benefit from external input

It can be very beneficial to get input from external parties. Open source enables everybody to use and contribute to the software, so unexpected synergies can happen as well as systematic involvement of a broad range of actors. Open source taps into the "wisdom of the crowd". This can happen within a domain from subject matter experts across organizations, but also as cross-pollination between different domains which might still have overlapping requirements. *Example: Flatland.*

### Use of open source components

If a project is already based on some open source software, it should be considered if the code could also be developed as part of this open source project or as an extension of it. This can unlock potential from the ecosystem. Depending on the specific software the OpenRail Association might not be the ideal place to do this, but it could be a starting point. *Example: Kubernetes operators.*

### Large overlap in functionality with existing software

If a project is reimplementing software which can't be used for reasons such as licensing, economic or political dependencies or technical considerations, it is likely that others have the same needs and an open source model can be a viable alternative as it opens the market and bundles efforts. *Example: LibreOffice.*

### Coupling of hardware and software

Sometimes hardware requires specific software coming from the software vendor, not for technical reasons, but as part of the business interests of the vendor. Quality might vary as hardware and software expertise might not be equally strong within a single organization. Decoupling hardware and software by implementing the software part as open source can provide better solutions, especially when combined with implementing open standard formats and interfaces. This can even strengthen the business model of the vendor by strengthening the ecosystem around their products. *Example: RCM-DX.*

### Balancing make or buy decisions

Often, buying software is preferred over making it, because the effort of making software is high. Open source can be a compromise by either taking existing open source software to massively reduce the make effort, or by mutualizing the effort through multiple parties combining their efforts to make software.

### Innovation and research projects

Open source plays a big role in innovation and research because it provides a very low barrier to entry and accelerates development. It also benefits from involvement of a broad set of diverse minds, which naturally is facilitated by the openness of the open source model. Often the choice of software and approaches is also less limited than in mature production systems. Especially if public research funding is involved open source also is a good way to realize corporate social responsibility. *Example: OSRD.*

### Collaboration between railways, industry and research organizations

Open source is a well-understood, mature and very effective way to organize collaboration. It can be significantly easier than setting up special consortia or collaborations based on specifically negotiated contracts. So when collaboration of parties within the railway sector is part of the goals of a project, the OpenRail Association might be a good and efficient solution to facilitate that.

### Custom tooling

Good tools are a prerequisite for effective work ("sharpen the axe"), but they usually are not part of the core business of an organization. Open source can be an effective way to sharpen tools in collaboration with others with similar business interests, while still not interfering with maybe competitive interests. *Example: Capella tooling of DSD.*

### Modular systems, platforms and their ecosystems

Platforms accelerate business. This is facilitated by platform ecosystems which bring together many users and providers. It requires modularity, extension and integration capabilities and wide adoption. A typical strategy is to increase platform adoption by providing it or significant parts as open source and provide integration points through open source SDKs, APIs, etc. *Example: [Cloud Native Landscape](https://landscape.cncf.io/).*

### Demand of users for open source technologies

There is a growing demand from users for open source technologies. Public administrations express a preference for open solutions or even implement legislation requiring it. This ties in with the motto "public money, public code". This aligns with corporate social responsibility and maintaining fair competition in an open market. The OpenRail Association is designed to be a place where this demand is satisfied.

### Community connection

Open source enables building open communities where users and developers are closely connected and everybody can interact on eye-level with very few barriers. This can help to get quicker and more continuous user feedback, it can attract future employees and satisfy existing employees. It generally is a great place to learn and grow and create strong bonds.

## Examples

This section describes some examples of open source projects run by other organizations, as inspiration for what kind of projects could be suitable, and how they could work.

### PowSyBl

[PowSyBl](https://github.com/powsybl) is one project run by [LF Energy](https://www.lfenergy.org/), an open source foundation run by the Linux Foundation for the energy sector. There are many other [projects run by LF Energy](https://www.lfenergy.org/projects/), so PowSyBl should just act as one example standing for others.

PowSyBl is a framework for modeling and simulation of the electric grid. It contains several reusable libraries and modules which can be used as a base for own applications.

The project was founded by RTE, the operator of energy transmission infrastructure of France. After it was open sourced and put under the umbrella of LF Energy other organizations joined in and it was integrated by other projects as well.

The project implements an [open governance model](https://www.powsybl.org/pages/overview/governance).

There also is an interesting study from the context of this project about [best practices to handle open source in public contracts](https://lfenergy.org/wp-content/uploads/sites/18/2023/11/Note_OpenSource_CompetitionLaw_EN-1.1.pdf).
