---
title: Automated Releases
weight: 350
---

# Automated Release Management

It's a best practice for Open Source projects to automate their release process to reduce manual effort and maintain consistent, traceable changelogs. This relies on two complementary practices: a structured commit convention and a release automation tool.

## Conventional Commits

All commits to the default branch must follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
type(optional-scope): description
```

Common types: `feat`, `fix`, `docs`, `ci`, `chore`, `refactor`, `test`, `build`, `perf`.

A `feat` commit triggers a minor version bump, a `fix` commit triggers a patch bump, and a `BREAKING CHANGE` footer triggers a major bump.

In addition, it's best practice to squash-merge pull requests to keep the commit history clean and ensure that the PR title serves as the commit message, which must also follow the Conventional Commits format.

## release-please

[release-please](https://github.com/googleapis/release-please) automates the release process by analysing the commit history. When commits following the Conventional Commits convention are merged to the default branch, release-please creates or updates a release pull request that bumps the version and updates the changelog. Merging that PR triggers the actual release (e.g. creating a Git tag, creating a GitHub release, and publishing to a package repository, if activated).

See [purl-tools](https://github.com/OpenRailAssociation/purl-tools) for a working example, including its `release-please-config.json`, `.release-please-manifest.json`, and release workflow `.github/workflows/release-please.yaml`.

For OpenRail projects, you may use the shared GitHub App (`openrail-releaser`) for authentication, so that the release PR can itself trigger CI workflows. In order to activate this (and make use of the two necessary secrets), an owner of the GitHub organization needs to configure the app and add the new repository to the section "Repository access", as the app is only available for selected repositories.

### Ensuring Conventional Commits for release-please

For release-please to work properly, commit should follow the Conventional Commits format, and pull requests should be squash-merged while ensuring that the PR title (or at least the squash commit) also follows Conventional Commits format. If these requirements are not met, release-please may not be able to correctly determine the next version number or generate a meaningful changelog.

To avoid errors, you may configure the repository:

- **Squash merging only**: Disable "Allow merge commits" and "Allow rebase merging"
- **Auto-delete branches**: Enable "Automatically delete head branches"

## Publishing to package registries

Many OpenRail projects are Python-based and publish their releases to [PyPI](https://pypi.org/). A good combination with `release-please` is the use of an automatic release workflow that is triggered when a new release is created, which uses OIDC-based authentication to publish the new release and generates signed, digital attestations. This also prevents the need for storing long-lived secrets in GitHub and allows to publish releases without manual intervention.

You may see the workflow configuration in the [purl-tools repository](https://github.com/OpenRailAssociation/purl-tools/blob/main/.github/workflows/publish.yaml) as an example.

In order to make this work, two things are necessary:
1. You need to create a GitHub environment for the repository, in the example called `pypi`.
1. At pypi.org, you need to edit the Publishing settings of the package, and add a new publisher via GitHub. In the input field, you provide information about the repository and the publishing workflow.
