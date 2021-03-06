#### vegaspec functions ####

#' Coerce to vegaspec
#'
#' See \code{vegawidget::\link[vegawidget]{as_vegaspec}} for details.
#'
#' @inheritParams vegawidget::as_vegaspec
#' @return S3 object of class `vegaspec`
#' @export
#'
as_vegaspec.{{s3_class_name}} <- function(spec, ...) {

  # TODO: if needed, insert code to convert your object to
  # something that can be coerced to a vegaspec.
  #
  # e.g.:
  # spec <- spec$to_json()

  vegawidget::as_vegaspec(spec, ...)
}

#' @name as_vegaspec
#' @rdname as_vegaspec.{{s3_class_name}}
#'
#' @importFrom vegawidget as_vegaspec
#' @export
#'
NULL

#' Coerce vegaspec to JSON
#'
#' See \code{vegawidget::\link[vegawidget]{vw_as_json}} for details.
#'
#' @name vw_as_json
#' @rdname vw_as_json
#' @importFrom vegawidget vw_as_json
#' @export
#'
NULL

#' Rename datasets in a vegaspec
#'
#' See \code{vegawidget::\link[vegawidget]{vw_rename_datasets}} for details.
#'
#' @name vw_rename_datasets
#' @rdname vw_rename_datasets
#' @importFrom vegawidget vw_rename_datasets
#' @export
#'
NULL

#### print functions ####

#' @export
#'
print.{{s3_class_name}} <- function(x, ...) {

  x <- as_vegaspec(x)

  print(x, ...)
}

#' Knit-print method
#'
#' See \code{vegawidget::\link[vegawidget]{knit_print.vegaspec}} for details,
#' particularly on additional packages that may have to be installed.
#'
#' @inheritParams vegawidget::knit_print.vegaspec
#'
#' @export
#'
knit_print.{{s3_class_name}} <- function(spec, ..., options = NULL) {

  spec <- as_vegaspec(spec)

  knitr::knit_print(spec, ..., options = options)
}

#' @name knit_print.vegaspec
#' @rdname knit_print.{{s3_class_name}}
#'
#' @importFrom vegawidget knit_print.vegaspec
#' @export
#'
NULL

#### vegawidget functions ####

#' Create a Vega/Vega-Lite htmlwidget
#'
#' See \code{vegawidget::\link[vegawidget]{vegawidget}} for details.
#'
#' @name vegawidget
#' @rdname vegawidget
#' @importFrom vegawidget vegawidget
#' @export
#'
NULL

#' Vega embed options
#'
#' See \code{vegawidget::\link[vegawidget]{vega_embed}} for details.
#'
#' @name vega_embed
#' @rdname vega_embed
#' @importFrom vegawidget vega_embed
#' @export
#'
NULL

#### shiny functions ####

#' Shiny-output for vegawidget
#'
#' See \code{vegawidget::\link[vegawidget]{vegawidgetOutput}} for details.
#'
#' @name vegawidgetOutput
#' @rdname vegawidgetOutput
#' @importFrom vegawidget vegawidgetOutput
#' @export
#'
NULL

#' Render shiny-output for vegawidget
#'
#' See \code{vegawidget::\link[vegawidget]{renderVegawidget}} for details.
#'
#' @name renderVegawidget
#' @rdname renderVegawidget
#' @importFrom vegawidget renderVegawidget
#' @export
#'
NULL

#' Shiny getters for vegawidget
#'
#' See \code{vegawidget::\link[vegawidget]{shiny-getters}} for details.
#'
#' @name vw-shiny-getters
#' @importFrom vegawidget
#'           vw_shiny_get_event vw_shiny_get_signal
#' @aliases  vw_shiny_get_event vw_shiny_get_signal
#' @export   vw_shiny_get_event vw_shiny_get_signal
#'
NULL

#' Shiny setters for vegawidget
#'
#' See \code{vegawidget::\link[vegawidget]{shiny-setters}} for details.
#'
#' @name vw-shiny-setters
#' @importFrom vegawidget
#'          vw_shiny_set_data vw_shiny_set_signal
#' @aliases vw_shiny_set_data vw_shiny_set_signal
#' @export  vw_shiny_set_data vw_shiny_set_signal
#'
NULL

#### listener functions ####

#' JavaScript listeners for vegawidget
#'
#' See \code{vegawidget::\link[vegawidget]{add-listeners}} for details.
#'
#' @name vw-add-listeners
#' @importFrom vegawidget
#'          vw_add_event_listener vw_add_signal_listener
#' @aliases vw_add_event_listener vw_add_signal_listener
#' @export  vw_add_event_listener vw_add_signal_listener
#'
NULL

#### handler functions ####

#' JavaScript handlers for vegawidget
#'
#' See \code{vegawidget::\link[vegawidget]{vw_handler_signal}},
#'   \code{vegawidget::\link[vegawidget]{vw_handler_add_effect}}, for details.
#'
#' @name vw-handlers
#' @importFrom vegawidget
#'           vw_handler_signal vw_handler_event vw_handler_add_effect
#' @aliases  vw_handler_signal vw_handler_event vw_handler_add_effect
#' @export   vw_handler_signal vw_handler_event vw_handler_add_effect
#'
NULL

#### debug/share functions ####

#' Examine vegaspec
#'
#' See \code{vegawidget::\link[vegawidget]{vw_examine}} for details.
#'
#' @name vw_examine
#' @rdname vw_examine
#' @importFrom vegawidget vw_examine
#' @export
#'
NULL

#### image functions ####

#' Create or write image
#'
#' See \code{vegawidget::\link[vegawidget]{image}} for details.
#'
#' @name image
#' @importFrom vegawidget
#'           vw_to_svg vw_to_bitmap vw_write_png vw_write_svg
#' @aliases  vw_to_svg vw_to_bitmap vw_write_png vw_write_svg
#' @export   vw_to_svg vw_to_bitmap vw_write_png vw_write_svg
#'
NULL

#### utility functions ####

#' Determine Vega JavaScript versions
#'
#' See \code{vegawidget::\link[vegawidget]{vega_version}} for details.
#'
#' @name vega_version
#' @rdname vega_version
#' @importFrom vegawidget vega_version
#' @export
#'
NULL

#' Determine vegaspec version
#'
#' See \code{vegawidget::\link[vegawidget]{vw_spec_version}} for details.
#'
#' @name vw_spec_version
#' @rdname vw_spec_version
#' @importFrom vegawidget vw_spec_version
#' @export
#'
NULL

#' Serialize data-frame time-columns
#'
#' See \code{vegawidget::\link[vegawidget]{vw_serialize_data}} for details.
#'
#' @name vw_serialize_data
#' @rdname vw_serialize_data
#' @importFrom vegawidget vw_serialize_data
#' @export
#'
NULL




