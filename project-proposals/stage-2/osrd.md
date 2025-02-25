# Stage 2: Incubation

## Health metrics

### How many active contributors does the project have?

https://github.com/OpenRailAssociation/osrd/graphs/contributors

### How many different organizations are contributing to the project?

- Almost all contribution comes from people working for SNCF Réseau.
- Small contributions from single developers.

### How much is the project dependent on individual contributors?

*How high is the risk to a project should the most active people leave? This is called the [Contributor Absence Factor](https://chaoss.community/kb/metric-contributor-absence-factor/), sometimes also referred to as bus factor.*

Computed with [bus-factor-explorer](https://github.com/JetBrains-Research/bus-factor-explorer).

Repositories:
- osrd (c98d3854cd1747a203f1ba6aa939901fbac72b75): **8**
  - core: **2**
  - editoast: **3**
  - front: **4**
  - gateway: **2**
  - osrdyne: **1**
- osrd-ui (3ef06474bae8b1c3d139a6b386c4c922eecfe8ef): **1**
- osrd-chart (bbc948db28c417acb7714e3913a5eef148fed2e1): **1**

## Open governance

### What is the release process of the project?

- https://osrd.fr/en/docs/guides/release/

### How are decisions made in the project?

- https://github.com/OpenRailAssociation/osrd/blob/dev/GOVERNANCE.md
- https://github.com/OpenRailAssociation/osrd/blob/dev/CONTRIBUTING.md

### What is the business roadmap of the project?

- https://osrd.fr/en/about/roadmap/

## Adoption

### Where is the project used in production?

We have only one instance in production at SNCF Réseau (https://osrd.reseau.sncf.fr/):
- Last minute train request: Used by 4 Railway Companies (we expect 40 companies at the end of March)
    - Captrain / DB Cargo / Regiorail / Hexafret
    - They use the same instance of OSRD hosted at SNCF
- Railway study operators (small group of users ~25)

### If the project includes specifications, where are reference implementations for these specifications?

Large documentation / guides / technical reference are available on our website.
- https://osrd.fr/en/docs/

All of it is available in english and most of it is also translated in french.

## Licensing

### Is the project REUSE compliant?

- The project is REUSE compliant (with a CI check)
- Badge: [![REUSE status](https://api.reuse.software/badge/github.com/OpenRailAssociation/osrd)](https://api.reuse.software/info/github.com/OpenRailAssociation/osrd)
- https://github.com/OpenRailAssociation/osrd/blob/68c3e1480c429a2cf8c7f8b7932769076761ac08/.github/workflows/build.yml#L1122-L1128

### Does the project use the Developer Certificate of Origin?

- The bot is enabled
- https://github.com/OpenRailAssociation/osrd/commits/dev/

## Security

### Does the project use pinned dependencies everywhere?

All our services use build systems that handle pinned dependencies.
- Core (gradle): https://github.com/OpenRailAssociation/osrd/blob/dev/core/gradle/libs.versions.toml
- Editoast (cargo): https://github.com/OpenRailAssociation/osrd/blob/dev/editoast/Cargo.lock
- Front (npm): https://github.com/OpenRailAssociation/osrd/blob/dev/front/package-lock.json
- Gateway (cargo): https://github.com/OpenRailAssociation/osrd/blob/dev/gateway/Cargo.lock
- Osrdyne (cargo): https://github.com/OpenRailAssociation/osrd/blob/dev/osrdyne/Cargo.lock


### Does the project have an automatic dependency and vulnerability process?

**Dependabot** is enabled.

- List of vulnerabilities: https://github.com/OpenRailAssociation/osrd/security/dependabot
- PR automatically opened: https://github.com/OpenRailAssociation/osrd/pulls?q=is%3Apr+is%3Aopen+label%3Adependencies

### What's the OpenSSF Scorecard score of the project?

|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|  SCORE  |          NAME          |             REASON             |
                     DOCUMENTATION/REMEDIATION                                               |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 9 / 10  | Binary-Artifacts       | binaries present in source     | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#binary-artifacts       |
|         |                        | code                           |
                                                                                             |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 3 / 10  | Branch-Protection      | branch protection is not       | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#branch-protection      |
|         |                        | maximal on development and all |
                                                                                             |
|         |                        | release branches               |
                                                                                             |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 10 / 10 | CI-Tests               | 20 out of 20 merged PRs        | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#ci-tests               |
|         |                        | checked by a CI test -- score  |
                                                                                             |
|         |                        | normalized to 10               |
                                                                                             |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 0 / 10  | CII-Best-Practices     | no effort to earn an OpenSSF   | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#cii-best-practices     |
|         |                        | best practices badge detected  |
                                                                                             |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 10 / 10 | Code-Review            | all changesets reviewed        | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#code-review            |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 10 / 10 | Contributors           | project has 23 contributing    | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#contributors           |
|         |                        | companies or organizations     |
                                                                                             |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 10 / 10 | Packaging              | packaging workflow detected    | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#packaging              |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 0 / 10  | Pinned-Dependencies    | dependency not pinned by hash  | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#pinned-dependencies    |
|         |                        | detected -- score normalized   |                                                                                                                       |
|         |                        | to 0                           |                                                                                                                       |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 0 / 10  | SAST                   | SAST tool is not run on all    | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#sast                   |
|         |                        | commits -- score normalized to |                                                                                                                       |
|         |                        | 0                              |                                                                                                                       |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 10 / 10 | Security-Policy        | security policy file detected  | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#security-policy        |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| ?       | Signed-Releases        | no releases found              | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#signed-releases        |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 0 / 10  | Token-Permissions      | detected GitHub workflow       | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#token-permissions      |
|         |                        | tokens with excessive          |                                                                                                                       |
|         |                        | permissions                    |                                                                                                                       |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 0 / 10  | Vulnerabilities        | 23 existing vulnerabilities    | https://github.com/ossf/scorecard/blob/c73828219b19826b3ddc4ac78882bc88746aa2ec/docs/checks.md#vulnerabilities        |
|         |                        | detected                       |                                                                                                                       |
|---------|------------------------|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|

**Average: 6.1**

- **Branch protection**: Not sure why we have 3/10. We should validate the tier 3 (8/10).
- **Pinned-dependencies**: Not detected by openSSF


### What is the security policy of the project?

- https://github.com/OpenRailAssociation/osrd/blob/dev/SECURITY.md

## Evaluation by the Technical Committee

*The following sections are filled out by the Technical Committee. Please don't change it or add anything here when filling out the questionnaire as a project.*

### Criteria checklist

* [X] Healthy contributor base
* [x] Clear release process
* [x] Reference implementations for specifications
* [x] Open governance
* [x] Public roadmap
* [x] Production users
* [x] REUSE compliance
* [x] Use of DCO

### Additional comments by the Technical Committee

Reference implementations for specifications: Don't apply since it's not a lib or API...
Open governance:
- The project meets the requirements for stage 2
- Functional decisions are not transparent
- How to become a maintainer is not clear.
- Does the MAINTAINERS.md make sense? We could reference our CODEOWNERS file instead to keep it up to date.
Public roadmap:
- Could be more detailed (at least for the current year)
