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

## OpenSSF Scorecard

The [OpenSSF Scorecard](https://scorecard.dev/) is a method and tool to quickly assess Open Source projects for risky practices. Apart from just vulnerabilities it also reports about best and bad practices such as CI tests, code reviews or excessive token permissions. As with most scorecards, opinions on the items and their scoring may differ, but it provides a good overview.

OpenSSF Scorecard can be run locally or as a GitHub action in CI steps. The checks can be quite resource-expensive, so should not be triggered on every commit.

Depending on the Incubation stage, OpenRail requires a minimum score. If a check is required by the incubation stage, its score must be communicated in the project's `README.md` with a date of the last check, and updated when things change or at least once a year. However, an automatic check is not necessary.

## Security Policy

OpenRail projects are requested to provide a security policy that gives people instruction to report security issues. This security policy must be inside a file called `SECURITY.md`, [as documented by GitHub](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).

OpenRail projects are free to decide whether they provide an email address to send confidential security reports to, or use GitHub features such as the "private vulnerability reporting".
