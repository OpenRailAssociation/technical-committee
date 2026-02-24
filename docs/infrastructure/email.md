# Emails and Mailing Lists

OpenRail Association runs a number of email addresses via which people can reach us and individual teams. We don't run a mail server ourselves but use three intertwined services: mail accounts on an account with [Uberspace](https://uberspace.de), mailing lists by [Mailman3.com](https://mailman3.com), a provider of mailing lists using the Open Source software [Mailman 3](https://docs.mailman3.org/), and the [MailEasy product by our domain registrar INWX](https://www.inwx.de/en/hosting).

## Email accounts (Uberspace)

We use Uberspace to create email accounts and redirections. All configurations are done via the Uberspace web interface. The credentials for email accounts are stored in our password manager and only shared with the respective users.

### Redirections and forwards

We can configure certain addresses such as `techadmin@openrailassociation.org` to forward received emails to another address. In most instances, this is one or multiple persons individually (e.g. the Technical Infrastructure Manager). In some cases, these are forward to mailing lists (e.g. `technical-committee@openrailassociation.org` to `technical-committee@lists.openrailassociation.org`).

It can also be configured whether behind this address, there is a mailbox or not (see below). If there is no mailbox, emails are only forwarded and not stored on the server. We prefer having a mailbox for each address, even if it is only used for forwarding, to have a backup in case of issues with the forwarding and to be able to access the emails via IMAP if needed.

### Mailboxes

We can create proper mailboxes (email accounts) on Uberspace that can be access via IMAP and the [webmail interface](https://webmail.uberspace.de/). This is primarily used if someone needs/wants to have a dedicated, official email address for receiving and sending emails. Regarding naming, we prefer the format `firstname.lastname@openrailassociation.org` for individual accounts.

Regarding IMAP/SMTP access, we refer to the [Uberspace documentation](https://manual.uberspace.de/mail-access/). In short:

Server (IMAP and SMTP): `leo.uberspace.de`\
Username: `firstname.lastname@openrailassociation.org`\
Password: (as stored in our password manager and communicated to the respective user)\
IMAP Port: `993` (SSL)\
SMTP Port: `587` (STARTTLS) / `465` (SSL)

## Mailing lists (Mailman3)

If the recipient group is sufficiently large, we prefer proper mailing lists over forwards. This allows for more fine-grained configuration of who can contact this group, and has advantages when dealing with anti-spam techniques such as SPF, DKIM and DMARC which often trigger when just using forwards.

There are a number of mailing lists we've set up on our mailing lists instance [lists.openrailassociation.org](https://lists.openrailassociation.org). As some of them shall be reachable by outside people, we've set up some forwards from the openrailassociation.org domain to certain lists.openrailassociation.org lists. One example is `technical-committee@openrailassociation.org` which forwards to `technical-committee@lists.openrailassociation.org`.

When setting up new lists, make sure to have a look at the list configuration of lists which have the same or a similar use-case. The default settings are often not sufficient to make all emails reach all people, especially regarding the top-level domain aliases and anti-spam measures.

The configuration of lists and owners is done manually inside the web interface.

## MailEasy (INWX)

There are very few use-cases for which we use the MailEasy product as part of INWX's hosting services. This doesn't provide mail boxes but only forwards for certain email addresses and certain domains. We only use this for redirections that cannot be handled by our Uberspace account because of user name overlaps or similar reasons.
