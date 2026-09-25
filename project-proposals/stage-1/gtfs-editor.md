# Questionnaire for projects intending to join the OpenRail Association

##  What is the project's name?

GTFS Editor

> Currently hosted at edit.gtfs.zone, maybe could be called "GTFS Zone
> Editor"... But maybe that's actually more confusing? Can also be called
> "coloring-book", which is the original name of the git repo, but this also
> doesn't provide much information. I'm open to ideas.

## Describe the project. What does the project do, why is it valuable, where does it come from?

It is an editor for GTFS feeds. It is a completely static frontend that is map
focused and is designed to minimally translate the GTFS feed into something
understandable to a small bus/train operator. You can try it at
<https://edit.gtfs.zone>, loading a feed from online or uploaded from your
computer, inspecting on the map, making an edit to a field, and exporting the
feed to your computer. I designed it because I needed a way to reliably edit
GTFS that had no lock-in and that I could let others use as well. It is
inspired by the ease of use and design of <https://geojson.io>.

## Who are the maintainers of the project (these will be the primary contacts for the OpenRail Association)?

- Max Katz-Christy: `maxkatzchristy@gmail.com`

## Which organizations are sponsoring/contributing to the project?

My lack sleep sponsors the project. I've had a few people help test it. West
Bus in Maine was the first reason for it, and Columbia County Transportation
was the second. See more here: <https://max.kcfam.us/blog/writing-gtfs/>

## Where is the code hosted?

- Main origin: <https://git.kcfam.us/gtfs.zone/coloring-book>
- Mirror: <https://github.com/gtfs-zone/coloring-book>

> I honestly have no idea why I have it hosted on my own git server (it's fun
> to run I guess) but the github mirror makes it easier for people to make
> PRs and issues, etc.

## Which exact repositories do you intend to transfer to the GitHub organization of the OpenRail Association?

I'm not sure... I would be open to ideas on what to do here. I have two
primary static frontends, viz.rt.gtfs.zone and edit.gtfs.zone (this project)
that both use the `interlocking` repo as a frontend library. Maybe one? Maybe
all? They are all tools in one family.

## What is the project's main license?

AGPL-3.0

## What other licenses does the project use, e.g. for included 3rd party code?

Everything is AGPL-3.0

## Are any trademarks associated with the project?

No, but maybe I should do this...

## Does the project have a web site? Where is it? Are you ok with moving it to be hosted by the OpenRail Association?

I have it all under the gtfs.zone domain. <https://gtfs.zone> itself is a
landing page for all of my projects under this title, which use various
subdomains. If you wanted to host the build, that would be great. If you could
host a CORS proxy, we could *drastically* improve download speeds (assuming you
are not restricted by the upload speeds of a home network).

## What are the communication channels the project uses (such as mailing lists, Slack, IRC, etc.)?

Sometimes I talk to myself...

## What is the project's leadership team and decision-making process?

I am the leader. I make the decisions. They are not always good decisions,
such as the time that I spent many nights trying to run LOOM directly in the
browser with WASM so I could generate fun transit maps on the client side.
But they are decisions.

## How is it decided if and when a pull request is merged?

I used to do PR's properly, but then I realized it's a bit dumb if it's just
me working on it, so I decided to write directly to main. I hope to get to
the point where I don't commit directly to main, but that would assume other
contributors. It feels a bit silly to submit yourself PRs...

## How can someone become a committer or a maintainer to/of the project?

Submit a PR! They can email me about becoming a maintainer, and if they share
the same vision of making a simple tool that's reliable and easy for small
train and bus operators, then I would welcome them in.

## How is development of the project planned and organized? Is this transparent to the public?

I used to have a better process... I used a Forgejo project:
<https://git.kcfam.us/gtfs.zone/coloring-book/projects/4>. I have since
abandoned this project in favor of a `TODO.md` uncommitted on my local machine.
This is faster for early development.

## What is the project's roadmap?

Similar to the prior question, I have allowed it to grow quickly in it's early
stages. I generally try to do some operation that an operator is likely to do,
and if I find that it is tedious or confusing in some way, I try to remedy it
with a careful and simple fix.

## What other organizations in the world should be interested in this project?

Any transit operators, looking to have an easy and quick way to manage their
GTFS feed. I specifically want to get any unmapped operators to have a good
quality GTFS feed that can easily be submitted to Google, MobilityData, etc,
for use in customer routing. However, this should work well for many small
operators.

## Why would this project be a good candidate for inclusion in the OpenRail Association?

This project can provide lots of value to transit agencies. GTFS feeds are
very hard to understand without good tooling, and this is a simple tool that
gives you a clear view across the entire feed. It has no lock-in, so users
can continue using other tools alongside it. It will integrate well with any
other tools that import/export GTFS.

## Are there competing products or projects? If there are please explain how the proposed projects differentiates.

Yes, there are a few. There are many proprietary options, some that claim
they will at some point open source, others that offer a freemium model.
There's also a few very old ones that are unmaintained. This runs as a static
blob in the browser, so it's not installed and has few requirements.

## What standards does the project implement or rely on? How are they related to other existing standards?

GTFS. It's like NETEX, but worse. However, it's what the international
consumers use, so it's super important. Also, GTFS-RT.

## What is the tech stack of the project? Name the major programming languages and frameworks which are used.

- Language: TypeScript (strict mode), vanilla DOM with no UI framework
- Build/dev: Vite 7, pnpm
- Styling: Tailwind CSS v4 and DaisyUI v5
- Map: MapLibre GL
- Storage: IndexedDB via idb. It runs entirely in the browser with no backend
- Data handling: PapaParse for CSV, JSZip for GTFS zip files, Zod for schema validation
- Search and lists: uFuzzy for fuzzy search, Clusterize.js for virtualized lists
- Git workflow: Husky, lint-staged, commitlint (Conventional Commits), Commitizen

## What is the project's plan for growing in maturity if accepted within the OpenRail Association?

I will be more protective of the main branch. I will host on something a little
more reliable than the ebay-for-parts-laptop-with-no-screen sitting in Boston
on a home network. I will potentially reduce the sarcasm in my writing
slightly. I sincerely hope to see other contributors... Or at least issues
(features and bugs) posted by users.

## Concluding statements

By sending this questionnaire you confirm that the project will adhere to the [code of conduct](CODE_OF_CONDUCT.md) of the OpenRail Association.

By sending this questionnaire you confirm that the project intends to be incubated in the OpenRail Association and plans to meet the maturity criteria set out by the OpenRail Association for incubated projects.
