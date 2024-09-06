# Overview of OpenRail's Technical Infrastructure

The technical infrastructure of the OpenRail Association is comprised of various components to enable the work of the OpenRail projects as well as of different working groups such as the *OpenRail Team*.

For the composition, we follow these principles:

* We prefer Open Source
* We chose software and services based on whether they are feasible and pragmatic
* We prefer using hosted services instead of self-hosting
* We strive for ease of access and use for the respective users and teams
* We appreciate modularity, and accept incremental improvements when perfection is not possible

## Governance

The *Technical Administration Manager*, part of the OpenRail Team, is responsible for the overall infrastructure. They do this in close collaboration with the *Technical Committee* as well as other users inside the organisation. They can define assistants to avoid that all knowledge and accesses reside with only one person.

The current Technical Administration Manager is Max Mehl ([@mxmehl](https://github.com/@mxmehl)). He is assisted by Cornelius Schumacher ([@cornelius](https://github.com/@cornelius)).

## Domains

OpenRail Association registers and manages all of its domains via [INWX](https://www.inwx.com/), a Germany-based domain registrar. This also contains domains by OpenRail projects.

INWX supports sub-accounts which may be used to allow tools and other persons to access only specific parts of the account.

Projects may control their domains on their own. Please see [this document](./domain-names.md) for guidance and details.

## GitHub

OpenRail Association prefers using GitHub.com for hosting of code, projects and documentation. All official repositories - e.g., by OpenRail projects, working groups, for administrative projects - must be part of the [OpenRailAssociation](https://github.com/OpenRailAssociation) GitHub organisation.

For this GitHub organisation, we distribute permissions using Teams and a repository that follows a four-eyes and version-controlled paradigm. Please see [this document](./github-management.md) for guidance and details.

In addition to the official GitHub organisation, there is a playground organisation with lower governance standards: [OpenRail-Playground](https://github.com/OpenRail-Playground). Only non-official projects must be hosted there. Permissions are controlled individually using the GitHub web interface.

## Mails and Mailing Lists

OpenRail Association runs a number of email addresses via which people can reach us and individual teams. We don't run a mail server ourselves but use two intertwined services: the [MailEasy product by our domain registrar INWX](https://www.inwx.de/en/hosting) and mailing lists by [Mailman3.com](https://mailman3.com), a provider of mailing lists using the Open Source software [Mailman 3](https://mailman3.org).

The MailEasy product as part of INWX's hosting services doesn't provide mail boxes but only forwards. This way, we can configure certain addresses such as `technical-committee@openrailassociation.org` to forward received emails to another address. In some instances, this is one or multiple persons individually (e.g. the Technical Administration Manager), but more often its a larger group of people.

In these cases, we address these people using mailing lists. This allows for more fine-grained configuration of who can contact this group, and has advantages when dealing with anti-spam techniques such as SPF, DKIM and DMARC which often trigger when just using forwards.

There are a number of mailing lists we've set up on our mailing lists instance [lists.openrailassociation.org](https://lists.openrailassociation.org). As some of them shall be reachable by outside people, we've set up some forwards from the openrailassociation.org domain to certain lists.openrailassociation.org lists. One example is `technical-committee@openrailassociation.org` which forwards to `technical-committee@lists.openrailassociation.org`.

When setting up new lists, make sure to have a look at the list configuration of lists which have the same or a similar use-case. The default settings are often not sufficient to make all email reach all people, especially regarding the top-level domain aliases and anti-spam measurements.

## Passwords

For the several services we are using, some require dedicated accounts and passwords, while others are ties to existing user accounts, e.g. GitHub.

If we have to share passwords, we are using an hosted password vault. The Technical Administration Manager manages this vault and provides access to other people, like their assistants, on a need-to-know basis. A sub-part of this vault may also be used by other teams if they require such a services. However, we generally prefer using pre-existing, personalised accounts.

## Website

For website hosting, we prefer using [GitHub Pages](https://pages.github.com/) over third-party providers or self-hosting. This is also used for the main [OpenRail Association website](https://github.com/OpenRailAssociation/website), accessible via [openrailassociation.org](https://openrailassociation.org).

Permissions to manage these websites are set via GitHub, as explained above.

## Other Services

For the functioning of the organisation, teams may use other tools that suit their needs. One example is office tools to share documents and collaborate on them. So far, we have been using services provided by single members and didn't see the need to set up dedicated services. While this may change in the future, we currently have other priorities.

If you believe OpenRail Association shall provide more technical services to make a certain team or project more efficient, please contact the Technical Committee and/or the Technical Administration Manager and explain your use-case.
