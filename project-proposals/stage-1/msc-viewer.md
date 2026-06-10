# Questionnaire for projects intending to join the OpenRail Association

*As a project intending to join the OpenRail Association, please:*
- *create your fork of this repository*
- *create a copy of this questionnaire and rename it to your project name*
- *answer the questions*
- *commit to a new branch in your fork, name it new-project-[project name]*
- *initiate a pull request from your new branch to this repository*
- *inform the technical committee by email: technical-committee@openrailassociation.org*

*Also see the documentation in [incubation process](../../incubation-process.md) for details about criteria and requirements for new projects and how it works to get new projects into the association.*

##  What is the project's name?

MscViewer for Nokia MSC/MSS


## Describe the project. What does the project do, why is it valuable, where does it come from?

MscViewer is a web-based interface for Nokia MSC/MSS network elements. It replaces manual terminal-based command input with a modern web UI with an integrated AI agent that allows operators to query configurations and generate MSC/MSS commands using natural language.

MSC/MSS configurations are complex and highly interdependent. MscViewer makes these relationships visible through graph and map visualizations, helping operators spot inconsistencies and avoid misconfigurations before they cause network issues.

MscViewer was created by Greenstones GmbH, a company specializing in custom enterprise applications for GSM-R, Location Intelligence, and Geocoding. MscViewer is currently in production use at SBB (Schweizerische Bundesbahnen).


## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?

Artem Grinstein (Greenstones GmbH) — artem.grinstein@greenstones.de


## Which organizations are sponsoring/contributing to the project?

Greenstones GmbH


## Where is the code hosted?

GitHub: https://github.com/greenstones-gmbh/msc-viewer


## Which exact repositories do you intend to transfer to the GitHub organization of the OpenRail Association?

https://github.com/greenstones-gmbh/msc-viewer


## What is the project's main license?

MIT License


## What other licenses does the project use, e.g. for included 3rd party code?

Standard open-source dependencies under their respective licenses, including:
- Spring Boot (Apache 2.0)
- React (MIT)
- Neo4j community edition (GPL-3.0 for the database, Apache 2.0 for the Java driver)


## Are any trademarks associated with the project?

No.


## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?

Yes: https://www.greenstones.de/solutions/msc-viewer — open to discussion about hosting under the OpenRail Association.


## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?

GitHub Issues: https://github.com/greenstones-gmbh/msc-viewer/issues


## What is the project's leadership team and decision-making process?

The project is currently led by Artem Grinstein, Greenstones GmbH. Decisions on direction, features, and releases are made by the maintainer, with input from users.


## How is it decided if and when a pull request is merged?

Pull requests will be reviewed by the maintainer. A PR will be merged when it meets the project's code quality standards, passes automated tests, and aligns with the project's goals. Contributors will be encouraged to open an issue or discussion before submitting large changes.


## How can someone become a committer or a maintainer to/of the project?

To be defined as the project matures within the OpenRail Association.


## How is development of the project planned and organized? Is this transparent to the public?

Development is planned internally by Greenstones GmbH. 


## What is the project's roadmap?

To be published.


## What other organizations in the world should be interested in this project?

- Railway operators using Nokia GSM-R MSC/MSS infrastructure
- Network operations centers managing GSM-R networks
- Telecom system integrators working with Nokia MSC/MSS
- Organizations involved in FRMCS migration planning


## Why would this project be a good candidate for inclusion in the OpenRail Association?

MscViewer directly serves railway communication infrastructure — specifically GSM-R networks built on Nokia MSC/MSS. It is 100% open-source, vendor-neutral in its interface layer, and fills a gap where no open tooling previously existed for managing Nokia MSC/MSS configurations. 

Inclusion in the OpenRail Association would increase visibility among railway operators, attract contributors from the GSM-R community, and help ensure the tool's long-term maintenance beyond a single organization.


## Are there competing products or projects? If there are please explain how the proposed projects differentiates.

Nokia provides proprietary management tools for MSC/MSS, but these are closed, tightly coupled to specific Nokia versions, and not customizable. There are no known open-source alternatives. MscViewer differentiates by being open-source, highly customizable per deployment, and adding capabilities not available in vendor tooling (map visualizations, graph views, external data enrichment, AI agent).


## What standards does the project implement or rely on? How are they related to other existing standards?

MscViewer supports management of GSM-R network elements, specifically Nokia MSC/MSS nodes used in railway communication networks.


## What is the tech stack of the project? Name the major programming languages and frameworks which are used.

- **Backend:** Java, Spring Boot
- **Frontend:** TypeScript, React
- **Database:** Neo4j (graph database for configuration relationships)
- **AI agent:** OpenAI-compatible LLM APIs (OpenAI,Amazon Bedrock, Anthropic)
- **Infrastructure:** Docker
- **Build:** Maven

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?

To be defined in collaboration with the OpenRail Association technical committee.


## Concluding statements

By sending this questionnaire you confirm that the project will adhere to the [code of conduct](CODE_OF_CONDUCT.md) of the OpenRail Association.

By sending this questionnaire you confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
