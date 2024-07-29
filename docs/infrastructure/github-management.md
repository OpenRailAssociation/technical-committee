# Manage Your Project in the OpenRail GitHub Organisation

All OpenRail projects shall be hosted within the [GitHub organisation of OpenRail](https://github.com/OpenRailAssociation/). As your project shares this space with numerous other repositories and members, some rules have to be followed in order to avoid confusion.

## Naming things

Naming is hard. Within OpenRail, all elements such as repositories must be prepended with a unique identifier for your project. For instance, if your project goes by the name "Fantasy Open Source Railway Improver", all repositories and team names could start with `FOSRI-` or `fosri-`. You may get inspiration by the [OSRD project](https://github.com/OpenRailAssociation/osrd) and its multiple repo and teams.

## Repositories

Only owners of the OpenRail organization can create new repositories. This is to prevent clutter and unclear permissions.

The first repository will be set up as part of the onboarding as soon as the project has been accepted by the OpenRail Association in the [incubation process](https://github.com/OpenRailAssociation/technical-committee/blob/main/incubation-process.md).

On the [project list](https://github.com/OpenRailAssociation/technical-committee/blob/main/projects.md) we list all repositories which belong to each OpenRail project. If you need an additional repository, create a pull request there with the name of the new repository and add any details in the text of the pull request. An owner of the organization will then work with you to set it up according to your needs. Once the setup is complete the pull request will be merged, so that the repo also shows up in the official project list.

Note that all repositories in OpenRail must be public and only contain material licensed under an Open Source license. If you need a space for private/sensible information, e.g., for deployment, you must do that elsewhere. However, all information in order to run/deploy your project must in some way be transparent to the public.

## Members, teams, and permissions

For the OpenRail organisation, all members, teams, and repository permissions are managed in the [openrail-org-config](https://github.com/OpenRailAssociation/openrail-org-config) repository. The settings managed there will be synchronised using [github-org-manager](https://github.com/OpenRailAssociation/github-org-manager). That means, if you want to yourself or another maintainer to become a member of the OpenRail organisation on GitHub and configure permissions, you must do that via a pull request to [openrail-org-config](https://github.com/OpenRailAssociation/openrail-org-config).

OpenRail projects can manage their teams on their own. This is handled via the respective [CODEOWNERS](https://github.com/OpenRailAssociation/openrail-org-config/blob/main/.github/CODEOWNERS) file which allows teams to approve and merge pull requests concerning their team settings. Obviously, this file must only contain the project's teams, and these teams' permissions must not involve repositories from other projects.

All organisation members must be part of a team so that it's clear for every person which project(s) they belong to.

Do not add individual permissions of users to repositories. Instead, only teams and their members shall be provided certain permissions. This as well can be done using the process above.

Please do not make any such changes, e.g. inviting members, creating and managing teams, and changing permissions of teams for repositories, in the GitHub web interface! These changes will be reverted.
