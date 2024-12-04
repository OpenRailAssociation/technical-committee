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

-----

Computed with [truck factor](https://github.com/HelgeCPH/truckfactor).

The bus factor of https://github.com/OpenRailAssociation/osrd (68c3e1480c429a2cf8c7f8b7932769076761ac08) is: `4`
with author(s): Eloi "eckter" Charpentier, Florian "flomonster" Amsallem, Victor "multun" Collod, Nicolas "nicolaswurtz" Wurtz

The truck factor of https://github.com/OpenRailAssociation/osrd-ui (1f2fea5d6a0a153a5c02b5a96cd0a66627760b2b) is: 1
with author(s): Chaka "kmer2016" NGAMENI NJINEH

## Open governance

### What is the release process of the project?

- https://osrd.fr/en/docs/guides/release/

### How are decisions made in the project?

- https://github.com/OpenRailAssociation/osrd/blob/dev/GOVERNANCE.md
- https://github.com/OpenRailAssociation/osrd/blob/dev/CONTRIBUTING.md

### What is the business roadmap of the project?

*Please provide a link to the roadmap of the project.*

## Adoption

### Where is the project used in production?

- SNCF Réseau: https://osrd.reseau.sncf.fr/
  - Used by Railway Companies (last minute train requests)
  - Railway study operators (small group of users)

### If the project includes specifications, where are reference implementations for these specifications?

Large documentation / guides / technical reference are available on our website.
- https://osrd.fr/en/docs/

All of it is available in english and most of it is also translated in french.

## Licensing

### Is the project REUSE compliant?

- The project is REUSE compliant (with a CI check)
- We did not add a badge to the readme
- https://github.com/OpenRailAssociation/osrd/blob/68c3e1480c429a2cf8c7f8b7932769076761ac08/.github/workflows/build.yml#L1122-L1128

### Does the project use the Developer Certificate of Origin?

- The bot is enabled
- https://github.com/OpenRailAssociation/osrd/commits/dev/


## Evaluation by the Technical Committee

*The following sections are filled out by the Technical Committee. Please don't change it or add anything here when filling out the questionnaire as a project.*

### Criteria checklist

* [ ] Healthy contributor base
* [ ] Clear release process
* [ ] Reference implementations for specifications
* [ ] Open governance
* [ ] Public roadmap
* [ ] Production users
* [ ] REUSE compliance
* [ ] Use of DCO

### Additional comments by the Technical Committee
