# Questionnaire for NGE-Netzgrafik-Editor

##  What is the project's name?
NGE - Netzgrafik-Editor

## Describe the project. What does the project do, why is it valuable, where does it come from?
Netzgrafik-Editor, is now a mature tool for creating and analyzing regular-interval timetables. It's versatile for logistics planning in various domains. Features include interactive editing, graphic timetables, trainrun editing, and logistics analysis.

## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?
- SBB ([Adrian Egli](mailto:adrain.egli@sbb.ch?subject=[github-openrailassociation-nge]) and Martin Sojka)


## Which organizations are sponsoring/contributing to the project?
- SBB AG
- SNCF
- Flatland Association
## Where is the code hosted?
- [GITHUB: Netzgrafik Editor frontend](https://github.com/SchweizerischeBundesbahnen/netzgrafik-editor-frontend)
- [GITHUB: Netzgrafik Editor backend](https://github.com/SchweizerischeBundesbahnen/netzgrafik-editor-backend)

## Which exact repositories do you intend to  transfer to the GitHub organization of the OpenRail Association?
See above. 


## What is the project's main license?
Copyright 2024 Swiss Federal Railways SBB AG

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 

## What other licenses does the project use, e.g., for included 3rd-party code?
To the best of our knowledge, we only include 3rd-party code with open-source licenses. A complete analysis of the dependencies has yet to be carried out.

## Are any trademarks associated with the project?
None

## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?
There is no additional website. The aim is to make information about the project and the software accessible via the repository.
[GITHUB: README](https://github.com/SchweizerischeBundesbahnen/netzgrafik-editor-frontend/blob/main/README.md)

## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?
Contact via mail and Github (issue) is welcome. Intensive dialogue for the clarification of business-related and technical issues usually takes place via online meetings.

## What is the project's leadership team and decision-making process?
Responsibility for the lead lies with the maintainers. Decisions are currently being made in close consultation with the contributors from the SNCF OSRD-team. The process for making decisions and setting up the leadership team still needs to be defined for the future.

## How is it decided if and when a pull request is merged?
Pull requests are reviewed and merged by the maintainers. It is therefore advisable to agree the requirements for the features in advance.

## How can someone become a committer or a maintainer to/of the project?
Contributions are possible via issues and pull requests. Coordination with the maintainer is advisable for a long-term commitment. How new maintainers will be added has not yet been defined.

## How is development of the project planned and organized? Is this transparent to the public?
At the moment, decisions on the priority and contribution of new features are made by the maintainers together with the contributors from the SNCF OSRD-team in close co-operation. The aim is to make the results transparent and to open up the collaboration to other contributors.

## What is the project's roadmap?
[Roadmap](https://github.com/SchweizerischeBundesbahnen/netzgrafik-editor-frontend/blob/main/ROADMAP.md)


## What other organizations in the world should be interested in this project?
The versatility of the editor makes it suitable for various logistics planning scenarios, enabling
efficient timetable creation and analysis. The software's key features can be leveraged in a broader
context, such as:
 
- **Public Transportation Systems:** Other public transport networks can utilize the editor's
  flexibility and features to effectively visualize and plan their transportation systems,
  leading to improved efficiency and better services.
 
- **Educations:** The editor's capabilities can be utilized in educational institutions to demonstrate
  how to create integrated timetables and what properties need to be considered during the planning
  process in order to enable efficient scheduling


## Why would this project be a good candidate for inclusion in the OpenRail Association?
- With its clear focus on the rapid recording of timetable variants on a macroscopic level, Netzgrafik-Editor is suitable as a tool that can be combined with other OSS tools in the area of timetable planning and simulation (e.g., OSRD; MATsim).
- The Open Rail Association can provide support in building up members who are actively involved in the project community and in defining community governance.


## Are there competing products or projects? If there are please explain how the proposed projects differentiates.
- With this scope on the macroscopic not known. Known products need more detailed data to start with the planning process.


## What standards does the project implement or rely on? How are they related to other existing standards?
A JSON file specified by the project [Netzgrafik-Editor data export/import (JSON)](https://github.com/SchweizerischeBundesbahnen/netzgrafik-editor-frontend/blob/main/documentation/DATA_MODEL_JSON.md) is used for data import and export. This functionality can be used as a basis for the extension to open standards for data exchange.

## What is the tech stack of the project? Name the major programming languages and frameworks which are used.
Frontend:
- Programming language: Typescript
- Web Framework: Angular using [angular.sbb.ch](https://angular.app.sbb.ch/)

Communication frontend-backend:
- The backend API is specified using [OpenAPI](https://swagger.io/specification/) (
see `api-docs.json`). Angular Services for the communication with the backend API are generated based on this specification using [openapi-generator](https://github.com/openapitools/openapi-generator) 

Backend:
- Programming language: Java enhanced with [Project Lombok](https://projectlombok.org/) additional language features.
- REST API implementation: [Spring Framework](https://spring.io/projects/spring-framework) with [Spring Boot](https://spring.io/projects/spring-boot).
- Database: Data is stored in the [PostgreSQL](https://www.postgresql.org) relational database.
- [jOOQ](https://www.jooq.org/) is used to access the database through a database-independent
  SQL-Like Domain-Specific-Language. For that the jOOQ framework generates classes for every table,
  row, index and sequence in the database. This allows for type-save declarations of SQL queries.
- [Flyway](https://flywaydb.org/) migrations are used to manage the database schema (see
  src/main/resources/db.migration).
- [H2](https://www.h2database.com/html/main.html) is used as an in-memory database for end-to-end
  integration tests.

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?
In addition to developing additional functionality, the project aims to establish a transparent governance structure. This allows the cooperation to be extended to additional contributing partners. The project also aims to broaden the user base in the area of public transport (companies, educational institutions and public administration).

## Concluding statements

By sending this questionnaire you confirm that the project will adhere to the [code of conduct](CODE_OF_CONDUCT.md) of the OpenRail Association.

By sending this questionnaire you confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
