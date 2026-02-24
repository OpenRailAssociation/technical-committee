# Emails and Mailing Lists

OpenRail Association runs a number of email addresses via which people can reach us and individual teams. We don't run a mail server ourselves but use three intertwined services: mail accounts on an account with [Uberspace](https://uberspace.de), mailing lists by [Mailman3.com](https://mailman3.com), a provider of mailing lists using the Open Source software [Mailman 3](https://docs.mailman3.org/), and the [MailEasy product by our domain registrar INWX](https://www.inwx.de/en/hosting).

## Email accounts (Uberspace)

We use Uberspace to create email accounts and redirections. This way, we can configure certain addresses such as `technical-committee@openrailassociation.org` to forward received emails to another address. In some instances, this is one or multiple persons individually (e.g. the Technical Infrastructure Manager), but more often its a larger group of people.

## Mailing lists (Mailman3)

If the recipient group is sufficiently large, we prefer proper mailing lists over forwards. This allows for more fine-grained configuration of who can contact this group, and has advantages when dealing with anti-spam techniques such as SPF, DKIM and DMARC which often trigger when just using forwards.

There are a number of mailing lists we've set up on our mailing lists instance [lists.openrailassociation.org](https://lists.openrailassociation.org). As some of them shall be reachable by outside people, we've set up some forwards from the openrailassociation.org domain to certain lists.openrailassociation.org lists. One example is `technical-committee@openrailassociation.org` which forwards to `technical-committee@lists.openrailassociation.org`.

When setting up new lists, make sure to have a look at the list configuration of lists which have the same or a similar use-case. The default settings are often not sufficient to make all emails reach all people, especially regarding the top-level domain aliases and anti-spam measures.

The configuration of lists and owners is done manually inside the web interface.

## MailEasy (INWX)

There are very few use-cases for which we use the MailEasy product as part of INWX's hosting services. This doesn't provide mail boxes but only forwards for certain email addresses and certain domains. We only use this for redirections that cannot be handled by our Uberspace account because of user name overlaps or similar reasons.
