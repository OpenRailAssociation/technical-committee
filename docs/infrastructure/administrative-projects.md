---
title: Administrative Projects
weight: 500
---

# Administrative Projects and their requirements

This document describes the baseline setup for [Administrative projects of the OpenRail Association]({{< relref "projects/#administrative-projects" >}}). Administrative projects are internal tools and configurations that support the OpenRail Association's operations. They are not incubated projects but still follow high standards.

[purl-tools](https://github.com/OpenRailAssociation/purl-tools) is a good reference implementation that applies all practices described below.

## Repository Settings {#repository-settings}

Configure the repository with these settings:

- **Require pull request reviews**: At least 1 approval before merging (for repos with multiple maintainers)

### GitHub Actions Permissions {#actions-permissions}

Under Settings → Actions → General:

- Set "Fork pull request workflows from outside collaborators" to **Require approval for all outside collaborators**
- Set "Workflow permissions" to **Read repository contents and packages permissions** (least privilege)

## Badge and Listing {#badge-and-listing}

All administrative projects must display the OpenRail Administrative badge in their `README.md`:

```markdown
[![OpenRail Administrative Project](https://openrailassociation.org/badges/openrail-project-admin.svg)](https://link.openrailassociation.org/admin-projects)
```

They must also be listed in the [OpenRail Projects overview]({{< relref "projects/#administrative-projects" >}}) under the "Administrative Projects" section.

## Python Projects {#python}

For Python-based projects, we strongly recommend [uv](https://docs.astral.sh/uv/) as the package manager and build tool, [ruff](https://docs.astral.sh/ruff/) for linting and formatting, and [ty](https://docs.astral.sh/ty/) for type checking. See [purl-tools](https://github.com/OpenRailAssociation/purl-tools) for a working example of `pyproject.toml` and the CI test workflow.

The CI test workflow must run at minimum:

- Linting and format checking (`ruff`)
- Type checking (`ty`)
- Functional tests on all supported Python versions (if applicable)
- [REUSE]({{< relref "reuse" >}}) compliance check

## Security Practices {#security}

Administrative projects follow the [security best practices]({{< relref "security" >}}), which includes the following mandatory items:

- **Dependency management**: Use [Renovate](https://github.com/OpenRailAssociation/renovate-config) extending the shared OpenRail configuration for automated dependency updates and pinned action digests
- **CI workflow security**: Run [zizmor]({{< relref "security#ci-workflow-security" >}}) to detect security issues in GitHub Actions workflows
- **Vulnerability monitoring**: Run a weekly check of the latest release against vulnerability databases (for projects that publish releases)
- **Security policy**: Provide a `SECURITY.md` as described in the [security practices]({{< relref "security#security-policy" >}})

Depending on the type of the project, certain practices may be relaxed. Check the linked security practices document for indicators.

## Releases {#releases}

Administrative projects automate their releases using [release-please](https://github.com/googleapis/release-please) and [Conventional Commits](https://www.conventionalcommits.org/). Since squash merging is enforced, the PR title serves as the commit message and must follow the Conventional Commits format. See [release practices]({{< relref "releases" >}}) for details and [purl-tools](https://github.com/OpenRailAssociation/purl-tools) for a working example.

Depending on the project, this requirement can be relaxed. Check the linked release practices document for indicators.

## Licensing {#licensing}

All administrative projects must be [REUSE]({{< relref "reuse" >}}) compliant.

## Summary Checklist

When creating a new administrative project:

- [ ] [Repository settings](#repository-settings): squash-only merging, auto-delete branches, Actions security permissions
- [ ] [Badge and listing](#badge-and-listing) in `README.md` and projects overview
- [ ] [Python project setup](#python): `pyproject.toml` with uv, ruff, ty; CI test workflow
- [ ] [Security practices](#security): Renovate, zizmor, vulnerability monitoring, `SECURITY.md`
- [ ] [Automated releases](#releases) with release-please
- [ ] [REUSE-compliant licensing/copyright information](#licensing)
