---
title: Security
weight: 300
---

# Establish security best practices

OpenRail projects are supposed to follow security best practices. Especially projects from Incubation Stage 2 onwards must follow these to ensure that users can trust them.

Some best practices are technical, others rather relate to communication and documentation. We are aware that there can be different perspectives on the selection and priority of certain criteria, but this document defines a baseline which the OpenRail projects agree on.

## Vulnerability management of dependencies

Open Source projects typically depend on dozens to thousands of other Open Source projects. These dependencies are updated by their respective maintainers and may contain known vulnerabilities.

To properly manage dependencies and potential risks, OpenRail projects should:

1. use pinned dependencies to ensure a clear picture of the software supply chain,
1. setup a system that automatically detects all dependencies and checks them against vulnerability databases,
1. setup a system that automatically warns maintainers about detected vulnerabilities and ideally prepares pull requests to update these dependencies if a fix is available,
1. and regularly update all dependencies to their latest (stable) versions to ensure that unknown security issues are also fixed.

There are numerous technical solutions that assist maintainers with these steps, e.g. [GitHub's Dependabot](https://docs.github.com/en/code-security/getting-started/dependabot-quickstart-guide) or [Renovate](https://github.com/renovatebot/renovate). OpenRail doesn't mandate a specific solution but recommends to choose a popular, well-supported one.

### When automated dependency updates are expected

Automated dependency updates make sense if any of the following apply, with descending priority:

- the project publishes release artifacts and is still maintained
- the project is actively developed and has runtime, build, or CI dependencies
- the project processes untrusted input (for example external pull requests) and therefore benefits from faster security patch adoption

Dependency update automation can be relaxed for one-off or archived projects that are no longer maintained, as long as this status is clearly documented in `README.md`.

To avoid noisy update traffic for projects with less attack surface, it might make sense to adapt the updater cadence to the project lifecycle (for example monthly schedules).

### Renovate at OpenRail

For many OpenRail projects, we use Renovate for dependency management. OpenRail maintains a [shared Renovate configuration](https://github.com/OpenRailAssociation/renovate-config) that projects can extend.

In order to activate Renovate for a project, you first need to add the required Renovate configuration file in your repository. If you would like to use the OpenRail presets, please have a look at the [Usage section of the OpenRail Renovate repository](https://github.com/OpenRailAssociation/renovate-config/#usage).

Afterwards, an owner of the GitHub organization needs to configure the app and add the new repository to the section "Repository access", as the app is only available for selected repositories. A few minutes later, the Renovate App will start with opening a Dependency Dashboard and - if applicable - the first PRs for outdated dependencies.

## Vulnerability monitoring of releases

Vulnerability databases are continuously updated, so a dependency that was safe at release time may later be found to be vulnerable. For projects that publish releases, it is important to also monitor the released artifacts for newly discovered vulnerabilities — not just the current development state.

An automated periodic check (e.g. weekly) against vulnerability databases such as [OSV](https://osv.dev/) helps ensure that users of a published version are alerted in time. Tools like [latest-release-vulnerability-status](https://github.com/mxmehl/latest-release-vulnerability-status) can perform this check in a CI workflow.

You may see the workflow configuration in the [purl-tools repository](https://github.com/OpenRailAssociation/purl-tools/blob/main/.github/workflows/release-vulnerabilities.yaml) as an example.

## CI workflow security

GitHub Actions workflows can themselves introduce security risks through unsafe handling of inputs, overly permissive tokens, unpinned action references, or other patterns that could be exploited in supply chain attacks.

[zizmor](https://github.com/zizmorcore/zizmor) is a static analysis tool that detects these issues in GitHub Actions workflow files. After fixing all found issues, it should be run in CI, ideally on every pull request.

You may see the workflow configuration in the [purl-tools repository](https://github.com/OpenRailAssociation/purl-tools/blob/main/.github/workflows/ci-security.yaml) as an example.

## OpenSSF Scorecard

The [OpenSSF Scorecard](https://scorecard.dev/) is a method and tool to quickly assess Open Source projects for risky practices. Apart from just vulnerabilities it also reports about best and bad practices such as CI tests, code reviews or excessive token permissions. As with most scorecards, opinions on the items and their scoring may differ, but it provides a good overview.

OpenSSF Scorecard can be run locally or as a GitHub action in CI steps. The checks can be quite resource-expensive, so should not be triggered on every commit.

Depending on the Incubation stage, OpenRail requires a minimum score. If a check is required by the incubation stage, its score must be communicated in the project's `README.md` with a date of the last check, and updated when things change or at least once a year. However, an automatic check is not necessary.

## Security Policy

OpenRail projects are requested to provide a security policy that gives people instruction to report security issues. This security policy must be inside a file called `SECURITY.md`, [as documented by GitHub](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).

OpenRail projects are free to decide whether they provide an email address to send confidential security reports to, or use GitHub features such as the "private vulnerability reporting".
