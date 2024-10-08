# Stage 2: Incubation

> [!NOTE]
> This is a draft. It should be replaced by the questionnaire once ready.

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
