# Review licensing of future/current OpenRail projects

Doing a license review of a project is a mandatory step for onboarding new projects. However, it also makes sense to make a review continuously or once in a while, e.g. when aiming for the next incubation stage.

Our licensing review focuses on the licensing situation of the own code of the project and the used dependencies.

The following steps are proposed:

1. Find out licenses of and inside own code
1. Find out licenses of dependencies
1. Evaluate all found licenses, find out whether they are compatible, and what's the valid outbound license

To check Open Source license compliance, we make use of several tools that may not be present on your machine. Primarily, we use OpenRail's [compliance-assistant](https://github.com/OpenRailAssociation/compliance-assistant), but [syft](https://github.com/anchore/syft/) and [grype](https://github.com/anchore/grype) also might be useful/required for some optional steps or used as alternatives.

## 1. Find license(s) of and inside own code

To find the license of the own code and potential secondary licenses, you can use and mix different steps:

### a) Look at License files

* Take a look files such as `LICENSE`, `COPYING` or inside a `LICENSES` folder.
* Check out what's written inside of a `README` or `CONTRIBUTING` file.

### b) Search for license statements: manually

Search for licenses using these commands:

* `git grep -i "licen[s|c]"`
* `git grep -iE "copy(right|left)"`
* `git grep -i "public domain"`

Analyse the findings for licensing/copyright by third parties. Note down these licenses and include them into their consideration.

### c) Search for license statements: automatically

You may a tool like the [SBOM Workbench](https://github.com/scanoss/sbom-workbench) by ScanOSS. This may help you finding re-used snippets, e.g. from StackOverflow, which introduce other licenses and copyrights.

### d) Ask the project team

An honest discussion with the project team might also reveal the use of code from third parties, e.g. by external contractors or from company-internal projects. Make sure to understand the history of the project.

## 2. Licensing of dependencies

### a) Create SBOM

One of these two steps are recommended and usually return the same results:

1. Using compliance-assistant: `compliance-assistant sbom generate -d /path/to/code -o sbom.json`
2. Using syft: `syft scan /path/to/code -o cyclonedx-json > sbom.json`

### b) Enrich SBOM

Enrich the SBOM with quite accurate licensing data from [ClearlyDefined](https://clearlydefined.io/), and creates a new file:

`compliance-assistant sbom enrich -f sbom.json -o sbom-enriched.json`

### c) Extract and evaluate licensing data

Next, we extract and unify all contained Open Source licenses:

`compliance-assistant licensing list -f sbom-enriched.json -o plain`

Example output:

```
0BSD
Apache-2.0
Apache-2.0 AND MIT
Apache-2.0 OR MIT
BSD-2-Clause
BSD-3-Clause
BSD-3-Clause OR GPL-2.0-only
BlueOak-1.0.0
CC-BY-3.0
CC-BY-4.0
CC0-1.0
ISC
ISC AND MIT
LGPL-3.0-or-later
MIT
Python-2.0
Unlicense
```

### d) Optional: Conclude a valid outbound license

This is not easy to automatically evaluate, and tools often have a hard time putting a larger number of licenses together. So this is optional.

`compliance-assistant licensing outbound -f sbom-enriched.json`


### e) Optional: Check for security issues

We can use [grype](https://github.com/anchore/grype) to check the dependencies for known security vulnerabilities. May be useful to assess potential security risks:

`grype --add-cpes-if-none sbom:sbom-enriched.json`

## 3. Evaluate found licenses

Whether all found licenses fit together or introduce problems has to be evaluated manually. Currently, we don't have a way to define that automatically.
