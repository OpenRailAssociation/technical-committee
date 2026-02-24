---
title: Technical Infrastructure
weight: 1000
---

# Overview of OpenRail's Technical Infrastructure

The technical infrastructure of the OpenRail Association is comprised of various components to enable the work of the OpenRail projects as well as of different working groups such as the *OpenRail Team*.

For the composition, we follow these principles:

* We prefer using Open Source software and services
* We pragmatically choose software and services based on their ability to address our specific needs.
* We strive for ease of access and use for the respective users and teams
* We prefer using hosted services instead of self-hosting
* We appreciate modularity, and accept incremental improvements when perfection is not possible

In combination, we sometimes cannot find a technical solution to a problem that matches all these principles at the same time. Therefore, we need to weigh all aspects individually. Projects are welcome to articulate their suggestions within the Technical Committee.

## Governance

The *Technical Infrastructure Manager*, part of the OpenRail Team, is responsible for the overall infrastructure. They do this in close collaboration with the *Technical Committee* as well as other users inside the organization. They can define assistants to avoid that all knowledge and accesses reside with only one person.

The current Technical Infrastructure Manager is Max Mehl ([@mxmehl](https://github.com/mxmehl)). He is assisted by Cornelius Schumacher ([@cornelius](https://github.com/cornelius)).

## Domains

OpenRail Association registers and manages all of its domains via [INWX](https://www.inwx.com/), a Germany-based domain registrar. This also contains domains by OpenRail projects.

INWX supports sub-accounts which may be used to allow tools and other persons to access only specific parts of the account.

Projects may control their domains on their own. Please see the document about [Managing Domain Names]({{< relref "domain-names" >}}) for guidance and details.

## Identity Provider

We self-host an identity provider based on [Authentik](https://github.com/goauthentik/authentik/). This allows our users to only have one account for multiple services of OpenRail Association, and configure group memberships and other permissions centrally. Currently, this is used for our Collaboration Suite based on Nextcloud and our Matrix server (see below).

The user directory of our Authentik instance is managed, like domain records and GitHub team memberships, in version-controlled text files and synchronized with a tool.

The service is deployed and semi-automatically managed via [Elest.io](https://elest.io/).

## GitHub

OpenRail Association prefers using GitHub.com for hosting of code, projects and documentation. All official repositories - e.g., by OpenRail projects, working groups, for administrative projects - must be part of the [OpenRailAssociation](https://github.com/OpenRailAssociation) GitHub organization.

For this GitHub organization, we distribute permissions using Teams and a repository that follows a four-eyes and version-controlled paradigm. Please see the detailed document about [Managing GitHub]({{< relref "github-management" >}}) for guidance and details.

In addition to the official GitHub organization, there is an organization for experimental and other projects which need a space for initial or temporary collaboration without being ready for an application as official project. It is the organization [OpenRail-Playground](https://github.com/OpenRail-Playground). Permissions are controlled individually using the GitHub web interface.

## Uberspace

[Uberspace](https://uberspace.de) is a web hosting provider which can serve as a place to put websites, but also offers to set up email accounts. We have one account there and use it for both purposes as described below.

## Mails and Mailing Lists

We have a number of systems to manage our email addresses and mailing lists. Please see the document about [Emails and Mailing Lists]({{< relref "email" >}}) for guidance and details.

## Passwords

For the several services we are using, some require dedicated accounts and passwords, while others are ties to existing user accounts, e.g. GitHub.

If we have to share passwords, we are using an hosted password vault, currently based on Vaultwarden/Bitwarden. The Technical Infrastructure Manager manages this vault and provides access to other people, like their assistants, on a need-to-know basis. A sub-part of this vault may also be used by other teams if they require such a service. However, we generally prefer using pre-existing, personalized accounts.

## Websites

For website hosting, we accept either using [GitHub Pages](https://pages.github.com/) or our Uberspace account mentioned above. For simple use-cases, GitHub Pages works well and can be easily integrated into CI/CD pipelines, but for cases in which we require staging environments or more granular configuration of redirects, we use Uberspace as hosting provider. The latter is the case for the main [OpenRail Association website](https://github.com/OpenRailAssociation/website), accessible via [openrailassociation.org](https://openrailassociation.org), and [projects.openrailassociation.org](https://projects.openrailassociation.org) managed by the Technical Committee.

Permissions to manage these websites are set via GitHub, as explained above, as their deployment is done via GitHub workflows.

## Collaboration Suite

We are using [Nextcloud](https://nextcloud.com/) hosted as a service by [Hetzner](https://www.hetzner.com/storage/storage-share), primarily as a place to share files publicly. User management is done, apart from technical exceptions, via our own identity provider described above.

## Instant Messaging and Chatrooms

We run a [Matrix](https://matrix.org/) service to allow registered users to chat in internal and external channels. We self-host this instance based on [this Ansible playbook](https://github.com/OpenRailAssociation/matrix-docker-ansible-deploy/tree/deployment) on virtual machines and S3-compatible buckets by Hetzner.

The user management is done via our Identity Provider.

The service can be accessed via [element.openrailassociation.org](https://element.openrailassociation.org).

## e-decisions

For asynchronous decision making we use [Loomio](https://loomio.eu). It's an open source tool hosted in Europe which is built for supporting digital discussions and decision making in collaborative organizations. We refer to that as e-decisions. See the [Loomio]({{< relref "loomio" >}}) for the details and convention we have agreed on how we use the tool.

## Other Services

For the functioning of the organization, teams may use other tools that suit their needs. One example is office tools to share documents and collaborate on them. So far, we have been using services provided by single members and didn't see the need to set up dedicated services. While this may change in the future, we currently have other priorities.

If you believe OpenRail Association shall provide more technical services to make a certain team or project more efficient, please contact the Technical Committee and/or the Technical Infrastructure Manager and explain your use-case.
