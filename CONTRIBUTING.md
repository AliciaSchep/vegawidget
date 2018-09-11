# Contributing

## Package scope

The purpose of this package is to provide you the means:

- to build Vega-Lite chart-specifications.
- to render chart-specifications into HTML.
- to communicate your charts.

## Style

This package aspires to use the [Tidyverse Style Guide](http://style.tidyverse.org), with some minor modifications.

- [Documenting parameters](http://style.tidyverse.org/code-documentation.html#documenting-parameters):

   For @param and @return, the text should be an uncapitalized sentence clause, starting with the expected class (or possible classes) of the argument or return value.

   ```r
   #' @param width `integer`, sets the view width in pixels
   #'
   #' @return `logical` indicating success
   ```

In the documentation, we use *specification* or *spec* to describe the JSON or the list; we use *chart* to describe the rendering, the finished product. These seem to be the terms-of-art that Vega-Lite uses.

## Development strategy

### Versioning

The first digit indicates the maturity of this package's API. For the time being, it will be `0`.

The second digit will be incremented upon each CRAN release and assigned a GitHub release tag.

### Vega versions 

We will aim for CRAN releases to coincide with new releases of [Altair](https://altair-viz.github.io). To update the JavaScript files for Vega, Vega-Lite, and vega-embed, a mainainter will render the R markdown document found at `data-raw/infrastructure.Rmd`. The key parameter to adjust is `vega_lite_version`, in the YAML header:

```yaml
---
title: Package infrastrucure
output: github_document
params:
  vega_lite_version: "2.6.0"
---
```

At present, we choose the version of Vega-Lite according to the version used by the currently-released version of [Altair](https://altair-viz.github.io), and set it accodingly. The code in the Rmd file will determine the versions of Vega and vega-embed that are concurrent with this version of Vega-Lite.

### Pull requests

Pull requests are very welcome. Our goal is to implement a system along the lines of [gitflow](https://datasift.github.io/gitflow/IntroducingGitFlow.html). Accordingly, the branch into which you should make a pull-request will depend on the situation:

Situation                  | Reference branch     | Add item to NEWS.md   | Appreciated
-------------------------- | -------------------- | --------------------- | -----------
bug-fix                    | `master`             | Yes                   | 😃
improving documentation    | `develop`            | No                    | 😀
adding vignette            | `develop`            | Yes                   | 😀
helping with a new feature | `<feature-branch>`   | No                    | 😃
proposing a new feature    | `develop`            | Yes                   | 😃

Please roxygenize as a part of your pull-request, however, please do not commit your changes to pkgdown. Maintainers will do that after merging the PR.



