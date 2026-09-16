---
title: On-/Off-Boarding
---

# On-/Off-Boarding

As OpenRail is operated on a diverse set of tools and services spanning multiple working groups, properly on- and off-boarding people, organizations, and projects is essential. This document aims to document all required and optional steps.

> **⚠️ When a person/organization/project is leaving OpenRail Association, you must revert most/all steps documented below.**

> ℹ️ ­This document is suitable for members of the board, working groups, and employees/contractors. For the change of technical administrators, a lot more systems and permissions are involved.

## Projects {#projects}

As a checklist for onboard new projects, we have an [issue template](https://github.com/OpenRailAssociation/technical-committee/blob/main/.github/ISSUE_TEMPLATE/onboarding-new-project.md) that contains all required steps.

**Offboarding**: For retiring a project, required steps will be documented under [Incubation Stages > Retired]({{< relref "retired" >}})


## Members {#members}

If a new organization becomes member of OpenRail, these are the steps to follow for proper onboarding:

### Website

Add the new member organization to the website. See [this pull request](https://github.com/OpenRailAssociation/website/pull/133) as an example. You typically need:

- Name of the organization
- Logo of the organization (transparent background, HD)
- Website URL of the organization
- Information about their membership level

### Board Member

If the new organization sends a representative to join the board, follow the [steps for People below](#people).

### Administrative

This guide does not contain all the administrative, financial, and legal steps required for onboarding a new member organization as this is documented internally and elsewhere.


## People {#people}

### GitHub

If the person has a GitHub account, you may add them to the required teams within the GitHub organization `OpenRailAssociation` . This is done via the [`openrail-org-config`](https://github.com/OpenRailAssociation/openrail-org-config) repository. Find more on the document about [GitHub management]({{< relref "github-management#permissions" >}}).

In rare cases, the person might also need special permissions in the GitHub organization `OpenRail-Playground`. This can only be done manually.

**Offboarding**: Make a change in the aforementioned repository. Once this is merged, the person's access to the GitHub organization will be revoked.

### Identity Provider (Authentik) {#identity-provider}

In order to provide the person access to OpenRail's Nextcloud and Matrix, they must be added to our Authentik instance. This can be done via the private `openrail-users` repository.

**Offboarding**: Make a change in the aforementioned repository. Once this is merged, the account will be deleted, denying access to the connected systems.

### Website

Depending on the role, the person might need to be added to the website. See [this pull request](https://github.com/OpenRailAssociation/website/pull/189) as an example.

Usually, you need the following information:

- Full name
- Role within member organization
- Role within OpenRail
- Profile picture
- Optional: LinkedIn, GitHub, Matrix, Mastodon

### Technical Committee {#tc-member}

Any TC member is listed on [Technical Committee > Members]({{< relref "members" >}}). Add a new TC member on this page.

**Offboarding**: Remove the person from the Technical Committee page. Unless the associated project is stopped, add the successor.

### Instant Messaging

The person might need access to certain instant messaging platforms, such as Matrix rooms (using the Matrix account coming with an OpenRail account or their own one) or Signal chats (via their phone number), depending on their role within the organization.

**Offboarding**: Search in these chats for the person and remove them.

### E-decision

Especially board and team members use our [e-decision platform]({{< relref "infrastructure#e-decisions" >}}). Make sure to grant them access when they join and revoke it when they leave.

**Offboarding**: Delete the person's account from the e-decision platform.

### Email Accounts

Depending on the position, the person might want to use a dedicated OpenRail email account. See [Mailboxes]({{< relref "email#mailboxes" >}}) for documentation on how to set it up.

**Offboarding**: You probably should not delete the mailbox to catch any important emails that might still be sent to it. Instead, consider setting up a forward to another address or person(s) AND rotate the credentials.

### Email Lists and Forwardings

Depending on the persons role, they may need to become member of one or more mailing lists. See [Mailing lists]({{< relref "email#lists" >}}) for documentation on how to manage this.

In some cases, email distributions happens via forwards set up on the main email accounts. See [Redirections and forwards]({{< relref "email#redirections" >}}) for documentation on how to manage this.

**Offboarding**: Search for the person's email(s) in the mailing lists system and remove them. The same applies to the redirections in the email dashboard.

### Hosting Services

Depending on the role, the person might need access to projects at Hetzner or other providers.

**Offboarding**: Revoke access to all such services. If this involved sharing passwords, rotate them.

### Passwords and Access to Other Services {#passwords}

Depending on the role, the persons might need access to other services. Some examples:

- Social media accounts
- Payment providers

These accesses should ideally be shared on a need-to-know basis via the [hosted password vault]({{< relref "infrastructure#passwords" >}}), so the person needs an own account there.

**Offboarding**: Revoke access to the person's vault account AND rotate the credentials they had access to.
