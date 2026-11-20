---
name: Onboarding new project
about: Checklist for onboarding new projects
title: Onboard <project name>
labels: Onboarding
assignees: ''

---

Proposal: <link to proposal PR>, accepted by vote of the board on <YYYY-MM-DD>
Project representative: @<handle>
Onboarding partner: @<handle>

* [ ] Merge the proposal PR
* [ ] Plan meeting with maintainers to discuss onboarding and clear expectations, and plan next steps
* [ ] Add project representative to Technical Committee
  * [ ] Add to [official list of members](https://github.com/OpenRailAssociation/technical-committee/blob/main/docs/technical-committee/members.md)
  * [ ] Add to the Technical Committee team in [openrail-org-config](https://github.com/OpenRailAssociation/openrail-org-config/blob/main/teams/org-technical-committee.yaml)
  * [ ] Add to invitation for weekly meeting
  * [ ] Add to the TC mailing list
  * [ ] Add to the TC Signal group
* [ ] Move repositories to OpenRail Association organization on GitHub
  * [ ] [License review](https://github.com/OpenRailAssociation/technical-committee/blob/main/docs/joining/onboarding/license-review.md)
  * [ ] Move the repos
  * [ ] Set up teams with access to the repos in [openrail-org-config](https://github.com/OpenRailAssociation/openrail-org-config/tree/main/teams) (`teams/project-<repo>.yaml`)
  * [ ] Add the project's teams to the [CODEOWNERS](https://github.com/OpenRailAssociation/openrail-org-config/blob/main/.github/CODEOWNERS) of openrail-org-config
* [ ] Transfer domains and DNS entries, if the project has any
* [ ] Add project with proposal link, board vote date, and repositories to the [project list](https://github.com/OpenRailAssociation/technical-committee/blob/main/docs/joining/projects.md)
* [ ] Review repos and make sure that they have necessary files (CONTRIBUTING.md, CODE_OF_CONDUCT.md, MAINTAINERS.md, GOVERNANCE.md, etc.; see [project templates](https://github.com/OpenRailAssociation/technical-committee/tree/main/project-templates)) and a `publiccode.yml`
* [ ] Add project to the [web site](https://github.com/OpenRailAssociation/website/blob/main/data/projects.yml) (link to the project's `publiccode.yml`)
