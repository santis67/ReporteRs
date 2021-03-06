#' @title Insert a page number shape into a document pptx object
#'
#' @description Insert a page number shape into the current slide of a \code{pptx} object.
#' 
#' @param doc \code{\link{pptx}} object
#' @param value character value to add into the page number shape of the current slide. 
#' optionnal. If missing current slide number will be used.
#' @param ... further arguments, not used. 
#' @return a \code{\link{pptx}} document object
#' @examples
#' #START_TAG_TEST
#' # Create a new document 
#' doc = pptx( title = "title" )
#' 
#' # add a slide with layout "Title Slide"
#' doc = addSlide( doc, slide.layout = "Title Slide" )
#' doc = addTitle( doc, "Presentation title" ) #set the main title
#' #set the sub-title
#' doc = addSubtitle( doc , "This document is generated with ReporteRs.")
#' 
#' ## add a page number on the current slide
#' doc = addPageNumber( doc )
#' 
#' doc = addSlide( doc, slide.layout = "Title and Content" )
#' ## add a page number on the current slide but not the default text (slide number)
#' doc = addPageNumber( doc, value = "Page number text")
#' 
#' # Write the object in file "presentation.pptx"
#' writeDoc( doc, "addPageNumber_example.pptx" )
#' #STOP_TAG_TEST
#' @export
#' @seealso \code{\link{addPageNumber}}, \code{\link{addDate.pptx}}
#' @export
addPageNumber.pptx = function(doc, value, ... ) {
	
	
	
	slide = doc$current_slide 
	if( !missing( value ) ){
		if( length( value ) != 1 )
			stop("length of value should be 1.")	
		
		out = .jcall( slide, "I", "addSlideNumber" , as.character(value))
	} else {
		
		out = .jcall( slide, "I", "addSlideNumber" )
		
	}
	
	if( isSlideError( out ) ){
		stop( getSlideErrorString( out , "slide number") )
	}	
	
	doc
}



