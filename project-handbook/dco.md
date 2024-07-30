# Developer Certificate of Origin

In order to provide clarity about provenance of code being contributed to OpenRail projects, we use the [Developer Certificate of Origin (DCO)](https://developercertificate.org/).

This means that with each commit the authors of the commit includes a statement which means that they are contributing the code under the license of the project, that they have all rights to do so, and that they are fine with this information being stored publicly. This is called "signing off" a commit and it's done by adding a "Signed-Off-By" trailer with the email address of the author of the commit in the commit message. The trailer then looks like this:

    Signed-Off-By: Jane Doe <jane@example.org>

For projects on stage 2 and 3 of the [incubation process](https://github.com/OpenRailAssociation/technical-committee/blob/main/incubation_process.md), the DCO is required. Projects on stage 1 can choose to require it as well. Projects which require the DCO have the [DCO App](https://github.com/apps/dco) enabled, which checks pull requests for the DCO statements and throws an error if they are missing.

## Signing off on the command line

When using git on the command line you can sign off a commit by adding the option `-s` or `--signoff` to the commit command:

    git commit -s

This will add the proper text to the commit message using your git configuration for `user.name` and `user.email`.

When you have forgotten to add the trailer to a commit you can fix the most recent commit by running

    git commit --amend --signoff

This will add the correct trailer and give you the opportunity to edit the commit message.

## Signing off in the web UI

When a repository is [configured to require sign off on web-based commits](https://github.blog/changelog/2022-06-08-admins-can-require-sign-off-on-web-based-commits/), GitHub automatically adds the necessary trailers when doing commits through the web UI. The buttons in the UI than say "Sign off and commit" instead of "Commit" and by pressing the button you explicitly sign off the commit.
