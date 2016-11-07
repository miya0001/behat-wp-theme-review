# Theme review framework with Behat

[![Build Status](https://travis-ci.org/miya0001/behat-wp-theme-review.svg?branch=master)](https://travis-ci.org/miya0001/behat-wp-theme-review)

## Features

* Takes a screenshot automatically.
* Runs tests with multiple screen sizes 1440x900 and 320x400.
* It can login WordPress admin.
* You can run those tests on the Travis CI. See [example](https://travis-ci.org/miya0001/behat-wp-theme-review).

## Getting Started

Clone this repository.

```
$ git clone git@github.com:miya0001/behat-wp-theme-review.git
$ cd behat-wp-theme-review
```

Install dependencies.

```
$ npm install
$ npm run init
```

Install WordPress into `/tmp/wordpress`.

```
$ export WP_THEME=http://example.com/theme.zip
$ export DB_PASS="" # MySQL root password
$ npm run install-wp
```

Startup WordPress via `wp server`.

```
$ npm run wp
```

Then you can access [http://127.0.0.1:8080/](http://127.0.0.1:8080/).

### Envinronment variables

* WP_THEME - Slug or Zip URL of the Theme. See `wp help theme install`.
* WP_VERSION - WordPress version. See `wp help core download`.
* WP_PATH - Path to the Document Root. Default is `/tmp/wp-behat-tests`.
* WP_PORT - The port number to bind the server to. Default is `8080`.
* DB_PASS - MySQL root password. Default is empty.

## Run Tests

```
$ npm test
```

## Example

https://travis-ci.org/miya0001/behat-wp-theme-review
