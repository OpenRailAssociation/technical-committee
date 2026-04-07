---
title: publiccode.yml
weight: 400
---
# Provide project metadata with publiccode.yml

OpenRail projects are expected to maintain a `publiccode.yml` file in the root of their most central repository. This file serves as the entry of the project in the OpenRail software catalogue. It provides structured metadata about the project which is used on the [OpenRail website](https://openrailassociation.org/#projects) and in the [OpenRail Landscape](https://landscape.openrailassociation.org).

## What is publiccode.yml?

[publiccode.yml](https://yml.publiccode.tools/) is an open metadata standard for describing public software. It was originally created for the Italian public administration and has since been adopted more broadly. A `publiccode.yml` file is a YAML file placed in the root of a repository that contains structured information such as the project name, description, license, development status, and more.

See the [publiccode.yml specification](https://yml.publiccode.tools/schema.core.html) for the full list of fields and their documentation.

## Why we use it

Having a standardized, machine-readable metadata file for each project enables us to:

- Display project information on the [OpenRail website](https://openrailassociation.org/#projects) automatically
- Aggregate projects in the [OpenRail Landscape](https://landscape.openrailassociation.org) with structured data about capabilities, licenses, and status
- Keep project information consistent across different places where it is shown
- Let projects maintain their own metadata as part of their regular development workflow

The information is consumed directly from the repositories, so keeping the file up to date in the repository is all that is needed.

## How to add a publiccode.yml to your project

Place a file called `publiccode.yml` in the root of your most central repository. Here is a minimal example:

```yaml
publiccodeYmlVersion: "0.4"

name: My Project
url: "https://github.com/OpenRailAssociation/my-project"

developmentStatus: stable

softwareType: "standalone/web"

description:
  en:
    shortDescription: >
      A short description of what the project does.

legal:
  license: Apache-2.0

localisation:
  localisationReady: false
  availableLanguages:
    - en
```

Adapt the values to your project. The [publiccode.yml specification](https://yml.publiccode.tools/schema.core.html) documents all available fields. The [publiccode.yml editor](https://publiccode-editor.developers.italia.it/) can help with creating and validating the file.

### Railway-specific extensions

For the OpenRail Landscape we use an additional `businessCapabilities` key that describes which part of the railway business the software targets. See the [landscape documentation on publiccode.yml](https://github.com/OpenRailAssociation/landscape/blob/main/README-publiccode-yml.md) for the full list of allowed capability values.

Example:

```yaml
businessCapabilities:
  profile: railway
  capabilities:
    - capacity/long-term
    - sales/passenger
```

## Current state

The desired policy is that each OpenRail project maintains a `publiccode.yml` in their own repository. As an example see how [OSRD](https://github.com/OpenRailAssociation/osrd) is doing this. The website reads the `publiccode.yml` directly from the OSRD repository.

As a workaround for projects that have not yet added the file, the metadata is maintained in the [OpenRail Landscape repository](https://github.com/OpenRailAssociation/landscape/tree/main/data/openrail) and the website reads it from there. This is a pragmatic interim solution. The goal is for all projects to host the file themselves so that the project teams have full ownership of their metadata.

## Resources

- [publiccode.yml standard](https://yml.publiccode.tools/)
- [publiccode.yml specification](https://yml.publiccode.tools/schema.core.html)
- [publiccode.yml editor](https://publiccode-editor.developers.italia.it/)
- [OpenRail Landscape](https://github.com/OpenRailAssociation/landscape) — where project metadata is aggregated
- [Landscape documentation on publiccode.yml and railway extensions](https://github.com/OpenRailAssociation/landscape/blob/main/README-publiccode-yml.md)
- [OpenRail website](https://github.com/OpenRailAssociation/website) — where project information is displayed
