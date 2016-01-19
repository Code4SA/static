# static.code4sa.org

This site serves static content from multiple repos over SSL. We use it to
host embeds on SSL sites since browsers require iframes on SSL sites to also
be over SSL. It's a workaround for the fact that GitHub pages doesn't support
SSL.

## Adding new content

To host a new repo, add the GitHub git URL (HTTPS version, not the ssh version)
to the REPOS file and deploy.

## How it works

Dokku sees the Dockerfile and runs it. This builds a simple container
which runs a lite version of nginx to do static hosting.

When the container launches, all the repos in REPOS are checked out
locally and are available to the world.

# License

MIT License
