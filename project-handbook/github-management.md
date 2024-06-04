# Manage Your Project in the OpenRail GitHub Organisation

All OpenRail projects shall be hosted within the [GitHub organisation of OpenRail](https://github.com/OpenRailAssociation/). As your project shares this space with numerous other repositories and members, some rules have to be followed in order to avoid confusion.

## Naming things

Naming is hard. Within OpenRail, all elements such as repositories must be prepended with a unique identifier for your project. For instance, if your project goes by the name "Fantasy Open Source Railway Improver", all repositories and team names could start with `FOSRI-` or `fosri-`. You may get inspiration by the [OSRD project](https://github.com/OpenRailAssociation/osrd) and its multiple repo and teams.

## Repositories

Only owners of the OpenRail organisation can create new repositories. This is to prevent clutter and unclear permissions.

Please contact the Chair of the Technical Committee if you need an additional repository, with information about its name and potentially unusual settings.

Note that all repositories in OpenRail must be public. If you need a space for private/sensible information, e.g. for deployment, you must do that elsewhere. However, all information in order to run/deploy your project must in some way be transparent to the public.

## Members, teams, and permissions

For the OpenRail organisation, all members, teams, and repository permissions are managed in the [openrail-org-config](https://github.com/OpenRailAssociation/openrail-org-config) repository. The settings managed there will be synchronised using [github-org-manager](https://github.com/OpenRailAssociation/github-org-manager). That means, if you want to yourself or another maintainer to become a member of the OpenRail organisation on GitHub and configure permissions, you must do that via [openrail-org-config](https://github.com/OpenRailAssociation/openrail-org-config).

All organisation members must be part of a team so that it's clear for every person which project(s) they belong to.

Do not add individual permissions of users to repositories. Instead, only teams and their members shall be provided certain permissions. This as well can be done using the process above.

Please do not make any such changes, e.g. inviting members, creating and managing teams, and changing permissions of teams for repositories, in the GitHub web interface! These changes will be reverted.
