# Questionnaire for projects intending to join the OpenRail Association

_As a project intending to join the OpenRail Association, please fill out this questionnaire and send it to the Technical Committee. See the [incubation process](../../incubation-process.md) for details about criteria and requirements for new projects and how it works to get new projects into the association._

_Copy this template and fill in your answers to the questions in the sections below._

## What is the project's name?

TP-lib

## Describe the project. What does the project do, why is it valuable, where does it come from?

TP-Lib is a Rust library for post-processing GNSS positions recorded by measurement trains onto an unambiguous location in a railway network — a problem commonly referred to as map matching. Starting from raw GNSS coordinates and a topological network description, it identifies which track segment each position falls on and calculates the most probable continuous path the train took through the network, using a Hidden Markov Model with Viterbi decoding (following the Newson & Krumm 2009 method). The projected result is a sequence of linear references (netelement + offset) on the railway network.

The library originates from Infrabel, the Belgian railway infrastructure manager, where measurement trains continuously collect GNSS data and the resulting positions must be referenced to specific track segments for infrastructure monitoring purposes. Infrabel open-sourced the library to allow other infrastructure managers facing the same problem to build on a shared, well-tested foundation rather than each implementing their own solution independently.

TP-Lib is valuable because:
- It is specifically designed for railway topology (directed, navigable networks), where general-purpose map-matching libraries fall short.
- It provides a full pipeline: GNSS input → candidate selection → probabilistic HMM path calculation → network projection → CSV/GeoJSON output.
- It ships a browser-based interactive path review and editing tool (`tp-webapp`) so operators can correct the calculated path before final projection.
- It exposes a CLI (`tp-cli`) for operational use, a Python API (`tp-lib` on PyPI) for integration in data science workflows and a .NET API (`TpLib` on NuGet, install via `dotnet add package TpLib`).
- It integrates with the EU register of railway infrastructure (RINF) to download the micro network topology if the user doesn't have this at his disposal
- It is build with common terminology as internationally recognised by models such as RTM, RSM, EULYNX, railML, ERA ontology, ...
- It is thoroughly tested with 460 tests (unit, integration, contract, CLI, and doctests).

## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?

Infrabel:

- mathias@matdata.eu (ad interim)

## Which organizations are sponsoring/contributing to the project?

Infrabel

## Where is the code hosted?

Currently: https://github.com/Matdata-eu/tp-lib
Will be moved into Openrail's Github organisation.

## Which exact repositories do you intend to transfer to the GitHub organization of the OpenRail Association?

`Matdata-eu/tp-lib` — the single repository containing the entire workspace (core library, CLI, Python bindings, .NET bindings and web application).

## What is the project's main license?

Apache License 2.0

## What other licenses does the project use, e.g., for included 3rd-party code?

All third-party dependencies use permissive licenses compatible with Apache 2.0:

- **MIT OR Apache-2.0**: geo-rs, rstar, geojson, petgraph, serde, chrono, thiserror, csv (Rust crates)
- **MIT**: polars, proj4rs, tracing, PyO3 (Rust/Python crates)
- **Apache-2.0**: Apache Arrow (Rust)
- **BSD-2-Clause**: Leaflet.js (JavaScript, bundled in the web application)
- **CDLA-Permissive-2.0**: webpki-root for CA

No copyleft (GPL/LGPL) dependencies are used.

A [GitHub action](https://github.com/Matdata-eu/tp-lib/actions/workflows/sbom.yml) has been configured to generate an SBOM and check the licenses as suggested by Openrail's onboarding manual.

## Are any trademarks associated with the project?

No

## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?

The project has a documentation site hosted on GitHub Pages at https://matdata-eu.github.io/tp-lib/ specifically about the Rust. This will need to be moved when the Github repository is moved. Other documentation is available as README.md file in the repository root and it's individual packages (such as the python, .net, and webapp dependencies)

## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?

Communication happens through GitHub: Issues for bug reports and feature requests, and Pull Requests for code contributions. There are no mailing lists, Slack workspaces, or other channels at this time.

## What is the project's leadership team and decision-making process?

The project is led by its Maintainers, who are responsible for organizing development activities and determining consensus. Decisions are made through a consensus-based process, with appeals handled first by the Maintainers and then, if needed, by the Technical Committee. See the [governance file](https://github.com/Matdata-eu/tp-lib/blob/main/GOVERNANCE.md).

## How is it decided if and when a pull request is merged?

Pull requests are merged based on Maintainer consensus rather than a fixed voting rule. Maintainers consider contributor input, support, and objections in good faith, and are expected to document the evidence for consensus behind their decisions. See the [governance file](https://github.com/Matdata-eu/tp-lib/blob/main/GOVERNANCE.md).

## How can someone become a committer or a maintainer to/of the project?

Anyone can contribute to the project, and contributors are recognized as people who have made contributions. Maintainers are added or removed with the approval of the current Maintainers, and maintainers formally accept the project policies by adding their name to the maintainers file. See the [governance file](https://github.com/Matdata-eu/tp-lib/blob/main/GOVERNANCE.md).

## How is development of the project planned and organized? Is this transparent to the public?

Development is organized openly by the Maintainers under written public procedures. The governance model emphasizes open participation, consideration of contributor feedback and objections, balance across stakeholders, and publicly available process documents. See the [governance file](https://github.com/Matdata-eu/tp-lib/blob/main/GOVERNANCE.md).

## What is the project's roadmap?

After the project refactoring and extensive testing, no further development is planned at this time. Depending on the community, two principle points could be addressed:
- Longitudal distribution of the GNSS projected points based on wheel sensor (odometry) or timestamp/speed
- Input/output to RSM-DX

## What other organizations in the world should be interested in this project?

All organisations that use railway vehicles with GNSS traces that need to be mapped on the network offboard. But the project can also be used as a guideline for organisations that want to post processes location measurements for other domains that include topology and navigability.

## Why would this project be a good candidate for inclusion in the OpenRail Association?

Because all railway infrastructure managers do this and should better do it together.

## Are there competing products or projects? If there are, please explain how the proposed projects differentiates.

Not that we know of.

## What standards does the project implement or rely on? How are they related to other existing standards?

Topology and navigability is also defined by several other railway related standards. But they are very loosely related. Examples include: RailTopoModel, RailSystemModel, railML, ERA ontology.

## What is the tech stack of the project? Name the major programming languages and frameworks which are used.

- **Primary language**: Rust (1.91.1+), used for all performance-critical computation, the CLI, and the web server.
- **Key Rust libraries**: geo-rs and proj4rs (geospatial calculations), rstar (R-tree spatial indexing), petgraph (graph algorithms for Viterbi decoding), axum (embedded web server for path review), Apache Arrow / Polars (data processing), rust-embed (bundling web assets into the binary).
- **Python bindings**: PyO3 + Maturin expose the core library as a native Python extension (`tp-lib` on PyPI), requiring Python 3.12+.
- **.NET bindings**: csbindgen + System.Text.Json, published as the `TpLib` NuGet package (net8.0).
- **Frontend (embedded)**: Leaflet.js (JavaScript) for the browser-based interactive path review map; the web assets are compiled into the binary at build time with no separate Node.js build step.
- **Packaging**: Cargo for Rust, Maturin/pip for Python, Docker for containerised deployment.

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?

Find other openrail members with similar software and if they are willing, combine their logic into this project and collaborate to both advance.

## Concluding statements

By sending this questionnaire you confirm that the project will adhere to the [code of conduct](CODE_OF_CONDUCT.md) of the OpenRail Association.

By sending this questionnaire you confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
