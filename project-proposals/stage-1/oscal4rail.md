# OpenRail Association – Stage 1 Incubation Questionnaire
## Project: OSCAL4Rail

> **Submitted by:** Jens Grote (jens.grote@deutschebahn.com), DB Systel GmbH
> **Date:** 2026-08-06

---

## What is the project's name?

OSCAL4Rail

---

## Describe the project. What does the project do, why is it valuable, where does it come from?

OSCAL4Rail is an open standard and toolset for making railway governance machine-readable, schema-validated, versionable, and diffable.

**The primary use case:** Railway companies translate legal requirements into internal IT governance (e.g. DB Konzernrichtlinien, SBB internal standards, ÖBB Vorgaben). These company-level adaptations are today scattered across PDFs and Word documents — interpreted individually, applied inconsistently, invisible to automated systems. OSCAL4Rail makes them deterministic and AI-agent-ready. Concrete examples: DB Systel Foundations (OSS technology standards, publicly available on GitHub) and DB UX Design System guidelines could be published as OSCAL4Rail catalogs.

**The broader vision:** The same framework also works for the upstream regulations themselves (national laws, EU TSI, industry standards like BS-KI) — creating a complete, machine-readable regulatory cascade from EU level down to company implementation.

OSCAL4Rail solves this by:
- Extending the **NIST OSCAL** standard (public domain, CC0 1.0) with a **railway-specific profile** — additional schema constraints, ID conventions, applicability model
- Defining a **4-layer framework** that extends NIST OSCAL:
  - (1) **Catalog** — railway profile over [NIST OSCAL Control Layer](https://pages.nist.gov/OSCAL/learn/concepts/layer/control/) (Catalog + Profile model), extended with ID conventions, applicability model, multilingual support
  - (2) **Rules** — applicability logic using the **Rulemapping** format: which controls apply in which context? *Generic layer — reusable beyond railway. Not part of NIST OSCAL.*
  - (3) **Change Impact** — structured, machine-readable change notifications when regulations are updated. *Generic layer — reusable beyond railway. Not part of NIST OSCAL.*
  - (4) **Assessment** — railway profile over [NIST OSCAL Assessment Layer](https://pages.nist.gov/OSCAL/learn/concepts/layer/assessment/) (Assessment Plan, Assessment Results, POA&M). Existing governance documents do not yet contain assessment information — this layer adds it.
- **What makes it "4Rail" — the Regulatory Cascade Model** with conformance constraints and impact propagation across 5–6 hierarchy levels:
  ```
  International   ISO, EN standards (e.g. ISO 27001, EN 50126)   ← ISO, CEN/CENELEC
                      │ referenced by
  EU              TSI, EU Directives (e.g. EU 2026/253)          ← ERA, EU Commission
                      │ specializes (must not contradict)
  National        e.g. EBO, AEG (DE) / LEisenbG (CH)            ← EBA / BAV
                      │ concretizes
  Agency          e.g. EBA-Verfügungen, BAV-Rundschreiben        ← Federal agency
                      │ adapts
  Industry        e.g. BS-KI (CH), Ril 420 (DE), DIN norms      ← Industry bodies, DIN
                      │ implements
  Company         e.g. Internal standards, guidelines            ← CIO, EA
                      │ operationalizes
  System/Team     e.g. Architecture decisions, ADRs              ← Dev teams
  ```
  Key properties: (a) conformance flows downward — each level may only specialize, never contradict its parent; (b) changes cascade — when a TSI changes, all downstream levels must adapt; (c) impact propagates — "TSI 4.2.1 changed" → which national rules? → which company standards? → which IT systems?; (d) **cross-border**: trains cross national boundaries — a single vehicle must comply with multiple national implementations of the same EU directive simultaneously; (e) **multimodal and multi-domain**: regulations cover rail, bus, tram, cable cars, ships — as well as technical specifications for vehicles, infrastructure, procurement, maintenance, and passenger information
- Embracing **Law-as-Code** principles: regulations are code — versioned, diffable, testable, deployable
- **Future-ready for Law-as-Code ecosystem**: Railway regulation bodies (ERA, EBA, BAV) currently publish as PDF only. The emerging Law-as-Code stack (SPRIND initiative → Rulemapping Group tooling → OpenCode.de hosting) aims to change this. Once regulations are published as machine-readable Rulemapping artifacts, OSCAL4Rail is designed to consume them as authoritative upstream — replacing today's PDF extraction pipeline
- Requiring **verbatim quotes** from source documents — no paraphrasing, no interpretation
- Giving every rule a **stable identifier** derived from the chapter number (not the page number)
- Providing **one public example catalog** (Swiss BS-KI) as proof of concept — the framework is regulation-agnostic
- Making regulations **queryable by AI agents** and **verifiable against IT systems** (Meaningful Human Control)

The project originated at **Hack4Rail 2026** (joint hackathon by SBB, ÖBB, DB and the OpenRail Association), where team A38 built the first working prototype in 24 hours: a complete OSCAL4Rail **example implementation** for the Swiss "Branchenstandard Kundeninformation" (BS-KI) with 42 controls, validated against the official NIST OSCAL JSON Schema.

---

## Who are the maintainers of the project?

| Name | Organisation | Contact |
|------|-------------|---------|
| Jens Grote (Project Lead) | DB Systel GmbH | jens.grote@deutschebahn.com |
| Arpad Vasarhelyi | Deutsche Bahn | Arpad.Vasarhelyi@deutschebahn.com |
| Simon Freihart (pending) | SBB | Simon.Freihart@sbb.ch |

---

## Which organizations are sponsoring/contributing to the project?

- **Deutsche Bahn / DB Systel GmbH** (project lead, tooling)
- **SBB** (BS-KI example implementation, domain expertise) – participation to be confirmed
- **ÖBB** – participation to be confirmed
- **NIST** (indirect: OSCAL base standard, CC0)

---

## Where is the code hosted?

Currently: https://github.com/OpenRail-Playground/A38/tree/main/OSCAL4Rail

Target: https://github.com/OpenrailAssociation/oscal4rail

---

## Which exact repositories do you intend to transfer to the GitHub organization of the OpenRail Association?

The `OSCAL4Rail/` directory from https://github.com/OpenRail-Playground/A38 will be extracted into a new standalone repository:

**Proposed name:** `OpenRailAssociation/oscal4rail`

Contents:
- Tooling (`tools/`: extract.py, validate.py, diff.py)
- Example implementations (`examples/bs-ki/de/`)
- Documentation (`docs/`: arc42, tutorials, how-tos, examples)
- OSS governance files (LICENSE, CONTRIBUTING, GOVERNANCE, MAINTAINERS, CODE_OF_CONDUCT)

---

## What is the project's main license?

**Apache 2.0**

---

## What other licenses does the project use?

- **NIST OSCAL JSON Schema** (`catalogs/schema/oscal-catalog.json`): CC0 1.0 Universal (Public Domain) — National Institute of Standards and Technology (NIST)
- **Regulation content** (verbatim quotes in catalogs): Copyright of respective standards bodies (KKI/Alliance SwissPass for BS-KI; ERA for TSI). Reproduced for compliance and interoperability purposes.

See [NOTICE.md](https://github.com/OpenRail-Playground/A38/blob/main/OSCAL4Rail/NOTICE.md) for details.

---

## Are any trademarks associated with the project?

No trademarks are registered. "OSCAL4Rail" is a descriptive name. "OSCAL" is a NIST acronym (not trademarked).

---

## Does the project have a web site?

Not yet. We are open to hosting documentation on an OpenRail Association-managed site (e.g. projects.openrailassociation.org/oscal4rail).

---

## What are the communication channels the project uses?

- **GitHub Issues and Discussions** (primary)
- **Email** for maintainer coordination
- OpenRail Association community channels (once onboarded)

---

## What is the project's leadership team and decision-making process?

See [GOVERNANCE.md](https://github.com/OpenRail-Playground/A38/blob/main/OSCAL4Rail/GOVERNANCE.md).

Summary: Day-to-day decisions by maintainers via PR review. Significant changes require two maintainer approvals. Breaking changes require Steering Committee consensus. The OpenRail TC serves as escalation path.

---

## How is it decided if and when a pull request is merged?

- Minor changes (typos, formatting): one maintainer approval
- Catalog updates: Catalog Maintainer approval + CI validation passing
- Structural/format changes: two maintainer approvals
- Breaking changes: TC discussion

---

## How can someone become a committer or a maintainer?

Contributors with sustained, high-quality contributions are invited by existing maintainers. See [GOVERNANCE.md](https://github.com/OpenRail-Playground/A38/blob/main/OSCAL4Rail/GOVERNANCE.md).

---

## How is development planned and organized? Is this transparent to the public?

Planning is done via GitHub Issues and the project roadmap in the README. All discussions and decisions are public on GitHub.

---

## What is the project's roadmap?

**Short-term (Q3 2026):**
- Extract OSCAL4Rail into standalone repository (`OpenRailAssociation/oscal4rail`)
- **Catalog Profile**: Extend OSCAL schema for railway-specific requirements (ID conventions, applicability model, multilingual support)
- **Example Catalog**: One publicly available regulation (BS-KI) as proof of concept
- **Rules Layer**: Define applicability format using the **Rulemapping** format — which controls apply in which context?
- CI/CD pipeline (GitHub Actions: validate schemas and examples on every PR)

**Mid-term (Q4 2026 – Q1 2027):**
- **Assessment Layer**: Railway profile over [NIST OSCAL Assessment Layer](https://pages.nist.gov/OSCAL/learn/concepts/layer/assessment/) (Assessment Plan, Assessment Results, POA&M) — usable by AI agents and human reviewers (Meaningful Human Control)
- **Change Impact Layer**: Structured, machine-readable change notifications when regulations are updated
- Contact **SPRIND Law-as-Code** initiative — present OSCAL4Rail as sectoral implementation for railway; align on format compatibility once SPRIND defines their output standard
- Engage standards bodies (KKI, ERA) — today they publish PDF only; demonstrate value of machine-readable regulations
- Publish tooling as installable Python package
- ~~Pilot Rulemapping methodology on one BS-KI control~~ ✅ Done (2026-06-25, see [ADR-006](https://github.com/OpenRail-Playground/A38/blob/main/OSCAL4Rail/docs/adr/ADR-006-oscal4rail-vs-rulemapping.md))

**Long-term:**
- Railway regulation bodies (ERA, EBA, BAV) publish natively in machine-readable format — PDF generated from structured source, not the other way around
- Cross-regulation compliance checking (regulatory cascade: EU → National → Industry → Company)
- When SPRIND Law-as-Code defines an official publication format: OSCAL4Rail consumes it as upstream, replacing PDF extraction
- Integration with AI compliance agents (automated assessment with Meaningful Human Control)

---

## What other organizations should be interested in this project?

- All European railway companies (DB, SBB, ÖBB, SNCF, Network Rail, Infrabel, ...)
- Standards bodies: ERA, KKI, BAV, EBA (Eisenbahn-Bundesamt)
- IT system vendors for passenger information systems
- Regulatory compliance teams
- AI/LLM teams building regulation-aware agents

---

## Why would this project be a good candidate for inclusion in the OpenRail Association?

1. **Cross-company value**: Every European railway faces the same problem. One shared open standard benefits all.
2. **Standards alignment**: Built on NIST OSCAL (public domain) — no license conflicts.
3. **Proven at Hack4Rail 2026**: Working prototype in 24h, 42 rules extracted and validated.
4. **OpenRail DNA**: Open, collaborative, railway-specific, public interest.
5. **Multiplier effect**: Once catalogs exist for BST-KI and TSI, dozens of IT systems can use them.
6. **AI-ready**: Machine-readable regulations enable the next generation of AI compliance agents in the railway sector.
7. **Law-as-Code ecosystem**: OSCAL4Rail is clearly positioned within the emerging Law-as-Code ecosystem: **SPRIND** funds the initiative, **Rulemapping Group** (€12M, 2025) defines the rules format, **OpenCode.de** hosts the artifacts. OSCAL4Rail **adopts Rulemapping as its rules format** (Layer 2) and complements the stack as the sectoral governance layer for railway: Rulemapping defines *how individual rules are expressed*, OSCAL4Rail *manages, versions, and verifies* thousands of rules at scale. See [ADR-006](https://github.com/OpenRail-Playground/A38/blob/main/OSCAL4Rail/docs/adr/ADR-006-oscal4rail-vs-rulemapping.md).

---

## Are there competing products or projects?

No direct competitors for an open, railway-specific, OSCAL-based standard. Adjacent and complementary projects:

| Project | Relationship |
|---------|-------------|
| NIST OSCAL | Base standard (public domain) — OSCAL4Rail is a domain profile |
| OSRD (OpenRail) | Infrastructure simulation — complementary, not competing |
| ERA RINF / TEL TSI | EU data standards for infrastructure/telematics — data is machine-readable (RDF/XML), but regulation text remains PDF. Potentially linkable |
| SPRIND "Law as Code" + OpenCode.de | SPRIND funds the initiative for machine-readable legislation, OpenCode.de hosts the artifacts. OSCAL4Rail is a **sectoral implementation** for railway. Once regulation bodies publish machine-readable, OSCAL4Rail consumes them as upstream instead of extracting from PDF |
| Rulemapping (Rulemapping Group) | **Used by OSCAL4Rail** as the rules format for Layer 2 (Rules): Rulemapping decision trees define applicability logic (which controls apply in which context). Not competing — adopted as the rules format within the framework. See [ADR-006](https://github.com/OpenRail-Playground/A38/blob/main/OSCAL4Rail/docs/adr/ADR-006-oscal4rail-vs-rulemapping.md) |
| Commercial compliance tools | Proprietary, vendor lock-in, not railway-specific |

---

## What standards does the project implement or rely on?

| Standard | Role |
|----------|------|
| NIST OSCAL 1.2.1 | Base schema — Layer 1 (Catalog/Profile/Mapping) and Layer 4 (Assessment Plan/Results/POA&M) are railway profiles over existing NIST models |
| Rulemapping (RUML) | Adopted rules format for Layer 2 (applicability logic) — **not part of NIST OSCAL** |
| JSON Schema (Draft 7) | Validation (NIST schema + OSCAL4Rail constraints) |
| Semantic Versioning | Catalog releases |
| Conventional Commits | Contribution workflow |
| BS-KI v1.0 | Public example catalog (proof of concept) |

**What OSCAL4Rail adds on top of NIST OSCAL:**
- Layer 2 (Rules): Applicability logic — NIST OSCAL has no concept of "which controls apply to my specific context"
- Layer 3 (Change Impact): Structured diff — NIST OSCAL has no built-in versioning/change notification at control level
- Layer 4 (Assessment): Existing internal governance (Konzernrichtlinien etc.) does not yet contain assessment information — OSCAL4Rail adds the structure to make them assessable

**Primary use case (first step):** Railway companies use OSCAL4Rail to publish their **internal IT governance** — company-level adaptations of legal requirements (e.g. DB Konzernrichtlinien, SBB internal standards) — in a machine-readable, deterministic, and AI-agent-ready format. This is an internal-facing standard for compliance automation, not an external publication format for legislators.

---

## What is the tech stack?

- **Python 3.10+** — extraction pipeline, validation, diff tooling
- **YAML** — catalog format
- **JSON Schema** — OSCAL validation
- **markitdown** — PDF text extraction
- **openpyxl** — Excel matrix parsing
- **PyYAML, jsonschema** — core libraries

No framework dependencies. Minimal, portable, inspectable.

---

## What is the project's plan for growing in maturity if accepted?

1. **Stage 1 → Stage 2:**
   - Railway-specific OSCAL profile schema complete and validated
   - Rules Layer defined (Rulemapping format adopted)
   - Assessment Layer (railway profile over NIST OSCAL Assessment Plan/Results/POA&M) usable by AI agents and human reviewers
   - Change Impact format specified
   - CI/CD pipeline validates all artifacts on every PR
   - At least 2 active maintainers from different organisations
   - One public example catalog (BS-KI) demonstrating all 4 layers
   - Additional example catalogs from publicly available IT governance (e.g. DB Systel Foundations OSS standards, DB UX Design System guidelines) published as OSCAL4Rail to demonstrate internal governance use case
   
2. **Stage 2 → Stage 3:**
   - At least two railway companies using OSCAL4Rail for internal IT governance (e.g. publishing Konzernrichtlinien in OSCAL4Rail format)
   - Proven integration with AI compliance agents in production
   - Alignment with SPRIND Law-as-Code output format (once defined)
   - Engagement with ERA or national rail authority for upstream adoption

---

## Concluding statements

By sending this questionnaire we confirm that the project will adhere to the code of conduct of the OpenRail Association.

By sending this questionnaire we confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
