# Theme review framework with Behat

[![Build Status](https://travis-ci.org/miya0001/behat-wp-theme-review.svg?branch=master)](https://travis-ci.org/miya0001/behat-wp-theme-review)

## Getting Started

```
$ npm install
$ npm run init
```

Install WordPress into `/tmp/wordpress`.

```
$ export WP_THEME=http://example.com/theme.zip
$ export WP_VERSION=latest
$ npm run wp-install
```

Startup WordPress via `wp server`.

```
$ npm run wp
```

Then you can access [http://127.0.0.1:8080/](http://127.0.0.1:8080/).

## Run Tests

```
$ npm test
```

## Example

https://travis-ci.org/miya0001/behat-wp-theme-review
