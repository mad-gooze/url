#url
> Run your own URL Shortener via GitHub Pages, Travis and Yandex Metrika

This projects allows you to run your own URL Shortener like bit.ly of tinyurl.com on your GitHub Pages.
URLs are generated from files in `urls/` folder: each file will generate URL redirecting to it's content. 
Generation is done via [Travis CI](https://travis-ci.org/). [Yandex Metrika](https://metrika.yandex.ru/) is used to watch clicks and analytics.

## Usage
1. Fork this repo.
2. Clean `urls/` folder.
3. Register Yandex Metrika counter ID to watch for clicks on your short URLs and add the ID it to [this line in `generate.sh`](https://github.com/mad-gooze/url/blob/master/generate.sh#L4).
4. Set up [Travis CI](https://travis-ci.org/) for your fork and enable "Build only if .travis.yml is present" option.
5. Set up ssh keys for publishing to gh-pages from Travis as described in [gh-pages-travis README](https://github.com/pghalliday/gh-pages-travis).
6. To shorten an URL, commit a file with name `<filename>` in `urls/` and desired URL as content. The resulting URL will look like:
```
https://<your-github-nick>.github.io/url/<filename>
```
You can also use `./add` script as a shortcut for creating the file and pushing it:
```shell
$ ./add                                                                                                                                                                                                 10 ms  master 
Usage: ./add <short url> <long url>
./add test google.com
# https://<your-github-nick>.github.io/url/test redirects to google
```
