# Adopt REUSE to ensure licensing transparency

OpenRail projects are supposed to enable users to easily and safely comply with licensing requirements. Starting from Incubation Stage 2, projects are required to adopt [REUSE](https://reuse.software/) best practices for licensing and copyright information.

REUSE ensures that for every file in a project there is unambiguous information about their license and copyright. It provides a clear standard, along with tools and services, to help with achieving and maintaining this clarity.

This document helps with the adoption by providing links to relevant material and making recommendations for OpenRail projects.

## Resources for understanding REUSE

Instead of duplicating guides, we refer to helpful material that already exists and is maintained by REUSE:

* [Tutorial](https://reuse.software/tutorial/) on how to become REUSE compliant: make a repository REUSE compliant in simple steps, without delving into details and edge cases.
* [FAQ](https://reuse.software/faq/) on general questions but also how to deal with edgier cases in your project.
* [Tools and scripts](https://reuse.software/dev/) specifically for developers, such as the helper tool, API, pre-commit hooks, and CI checks

## Recommended process for OpenRail projects

For Incubation Stage 2, we require projects to be fully REUSE compliant. This is measured by whether the `reuse lint` command exits successfully, but requires that the projects carefully check the licenses and copyright of all their files.

### Analyse your codebase

When thinking about licensing and copyright of all your files, tricky questions may arise:

* Are all files licensed the same way, or have files been copied from other projects under different licenses and copyrights?
* Who owns the copyright of all the files? Just one organization, or were there contractors or external companies who acted under their own copyright?
* Are there files that are not licensed under the "main" license, e.g., icons, fonts, graphics, pictures?
* Are there trademarks or additional restrictions on parts of the projects, e.g. logos?

### Annotating all files

Once all these questions have been answered, they must be put into practice by documenting copyright and licensing information following the REUSE standard for all your files. Ideally, each file will be annotated directly, so equipped with a comment header containing licensing and copyright information. This gives the maximum clarity. If this isn't possible or not feasible (e.g., for binary or test files), one of the alternatives REUSE offers shall be chosen.

While the required information for REUSE compliance may be put manually into all files, it is strongly advised to make use of e.g. the [REUSE helper tool](https://github.com/fsfe/reuse-tool) that semi-automates many steps. However, manual checks and careful thoughts are mandatory, as described above.

### Ensuring and communicating REUSE adoption

We require two additional steps to ensure that the best practices will be kept:

1. Integrate a REUSE check into your CI, to ensure that new files without proper licensing/copyright annotation issue a warning. Possibilities are explained [here](https://reuse.software/dev/), e.g. via a GitHub action.
2. Register the project with the [REUSE API](https://api.reuse.software/) and put the resulting badge into your `README` file. This will demonstrate the adoption of this standard and therefore the re-usability to potential users and contributors.
