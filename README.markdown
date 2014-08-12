A "planet" aggregator of CKAN-related feeds.

The [index.html](index.html) file is created by  [Rawdog](http://offog.org/code/rawdog/) (`sudo apt-get install rawdog`). 

To update the `index.html` file with the latest posts from the feeds: clone this git repo, `cd` into the `planetckan` directory, and do:

    rawdog --update --write --dir .

The `index.html` file is then served by [GitHub Pages](https://pages.github.com/). To update the site commit updates to the `index.html` file to the `gh-pages` branch of this git repo and push them to GitHub.

A cron job (currently running on [seanh](https://github.com/seanh)'s server) updates, commits and pushes the file every hour.

If you'd like to have your feed added to or removed from the site, add it to or remove it from the [config](config) file and [send us a pull request](https://github.com/ckan/planetckan/pulls).

To add a new RSS feed, from your `planetckan` directory do:

    rawdog --dir . --add 'http://amercader.net/blog/feeds/posts.rss'

Post from the new feed will start appearing the next time the cron job runs.

To remove a feed do:

    rawdog --dir . --remove 'http://amercader.net/blog/feeds/posts.rss'

Posts from the feed should be removed the next time the cron job runs.

To run the site locally and preview any changes before pushing them: install [Jekyll](http://jekyllrb.com/docs/installation/), make your changes, run `rawdog --update --write --dir .`, then run `jekyll --serve --watch`.
