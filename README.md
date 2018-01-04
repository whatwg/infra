This repository hosts the [Infra Standard](https://infra.spec.whatwg.org/).

### Code of conduct

We are committed to providing a friendly, safe and welcoming environment for all. Please read and
respect the [WHATWG Code of Conduct](https://whatwg.org/code-of-conduct).

### Contribution opportunities

Folks notice minor and larger issues with the Infra Standard all the time and we'd love
your help fixing those. Pull requests for typographical and grammar errors are also most welcome.

We'd be happy to mentor you through this process. If you're interested and need help getting
started, review the [WHATWG contributing guidelines](https://github.com/whatwg/meta/blob/master/CONTRIBUTING.md),
and leave a comment on the issue or ask around [on IRC](https://wiki.whatwg.org/wiki/IRC).

### Pull requests

In short, change `infra.bs` and submit your patch after reading through
[WHATWG committing best practices](https://github.com/whatwg/meta/blob/master/COMMITTING.md).
Lastly, please review the [WHATWG FAQ](https://wiki.whatwg.org/wiki/FAQ).

Please add your name to the Acknowledgments section in your first pull request, even for trivial
fixes. The names are sorted lexicographically.

If you want to preview the spec locally, you can either use a locally installed copy of
[Bikeshed](https://github.com/tabatkins/bikeshed) by running `make` or use the HTTP API version by
running `make remote`.

If you want to do a complete "local deploy" including commit and/or branch snapshots, run
`make deploy`.

#### Formatting

Use a column width of 100 characters.

Do not use newlines inside "inline" elements, even if that means exceeding the column width
requirement.
```html
 <li><p>Execute
 <a href=https://w3c.github.io/webappsec-csp/#set-response-csp-list>set <var>response</var>'s CSP list</a>
 on <var>response</var>. <span data-anolis-ref>CSP</span>
```
is okay and
  ```html
 <li><p>Execute
 <a href=https://w3c.github.io/webappsec-csp/#set-response-csp-list>set <var>response</var>'s CSP
 list</a> on <var>response</var>. <span data-anolis-ref>CSP</span>
```
is not.

Using newlines between "inline" element tag names and their content is also forbidden. (This
actually alters the content, by adding spaces.) That is
```html
<a>token</a>
```
is fine and
```html
<a>token
</a>
```
is not.

An `<li>` element always has a `<p>` element inside it, unless it's a child of `<ul class=brief>`.

If a "block" element contains a single "block" element, do not put it on a newline.

Do not indent for anything except a new "block" element. For instance
```html
 <li><p>Set <var>response</var>'s <span title=concept-response-url-list>url list</span> to a copy of
 <var>request</var>'s <span title=concept-request-url-list>url list</span>.
```
is not indented, but
```html
 <li>
  <p>Run these substeps <span data-anolis-spec=html>in parallel</span>:

  <ol>
```
is.

End tags must be omitted when possible and attribute values must not be quoted (if necessary, use
double quotes).

### Merge policy

If you can commit to this repository, see the
[WHATWG team](https://github.com/whatwg/meta/blob/master/MAINTAINERS.md) guidelines.
