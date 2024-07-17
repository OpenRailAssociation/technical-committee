# Manage Your Domain Names Hosted by OpenRail Association

If an OpenRail project is using a web domain, this domain shall be owned and hosted by the OpenRail Association as well. This ensures neutrality and longevity for all project contributors and users.

## Registration

If you haven't had a domain name for your OpenRail project before, you may request the registration of a new domain. Please contact the Technical Committee (technical-committee@openrailassociation.org).

## Transfer

If your project existed before joining OpenRail and you already have a domain name, you are requested to transfer the domain to the OpenRail Association. OpenRail's domain registrar is [INWX](https://www.inwx.com/).

A transfer is usually done in two steps:

1. You need a so-called "Auth Code", a secret key that allows others to transfer a domain to one's own realms.
2. Additionally, many domain registrars have a "transfer lock" for domains which is activated by default. You need to disable this once we start the transfer of the domain.

In order to initiate this process, please contact the Technical Committee (technical-committee@openrailassociation.org). We will discuss the exact migration steps individually with you.

## Changing DNS records

Many projects will be fine with setting some records once and only changing it very rarely. Some others may need to make adaptions more often, e.g. because they run additional infrastructure and services.

If your project belongs to the first group, it's fine if you just send an email to the Technical Committee requesting a certain change.

If your project needs more control over its domain's DNS records, you may manage it via the [openrail-dns](https://github.com/OpenRailAssociation/openrail-dns/) repository. The process is very similar to [managing GitHub team permissions](github-management.md).
