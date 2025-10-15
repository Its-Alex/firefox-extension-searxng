# Searxng firefox extension

This repository is an extension to define [search.rhscz.eu](https://search.rhscz.eu/)
as default search engine.

This is a search engine based on [searxng](https://github.com/searxng/searxng),
we can find list of public instances at [searx.space](https://searx.space/).

## Requirements

- `zip`
- `bash`
- `mise`

Then launch the following commands:

```sh
mise trust && mise install && mise reshim && npm install --global web-ext@8.8.0
```

You should be ready and have access to `web-ext` command:

```sh
$ web-ext --version
8.8.0
```

## Getting started

Extension configuration is very simple and can be found in
[src](./src/).

### Try extension using web-ext

We can test this extension using firefox, in this case we will try with a
flatpak version of firefox. To run this extension inside it please run:

```sh
web-ext run -s src --firefox=flatpak:org.mozilla.firefox
```

Please note that `--firefox=flatpak:org.mozilla.firefox` is specific to flatpak
installation (you can find more information on
[web-ext run documentation](https://extensionworkshop.com/documentation/develop/web-ext-command-reference/#web-ext-run))

## How to sign extension

If you have access please decrypt environment and use it:

```sh
./scripts/decrypt-env.sh
```

When it's done you should have some variables available in your shell:

```sh
$ env | grep WEB_
WEB_EXT_API_KEY=...
WEB_EXT_API_SECRET=...
```

Now you just need to update the version in the [manifest.json](./manifest.json)
then execute:

```sh
$ ./scripts/sign-extension.sh
```

## License

[MIT](./LICENSE)
