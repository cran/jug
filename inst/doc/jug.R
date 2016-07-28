## ---- eval=FALSE, include=FALSE------------------------------------------
#  # used to generate dev version of vignette for gh-pages branch
#  # rmarkdown::render("vignettes/jug.Rmd", output_format="html_document", output_dir=normalizePath("..", getwd()), output_options = list(theme="journal"))

## ---- eval=FALSE---------------------------------------------------------
#  library(jug)
#  
#  jug() %>%
#    get("/", function(req, res, err){
#      "Hello World!"
#    }) %>%
#    simple_error_handler_json() %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  devtools::install_github("Bart6114/jug")

## ---- eval=FALSE---------------------------------------------------------
#  install.packags("jug")

## ------------------------------------------------------------------------
library(jug)

## ---- warning=FALSE, message=FALSE---------------------------------------
jug()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#    use(path = NULL, function(req, res, err){
#      "test 1,2,3!"
#      }) %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#    use(path = "/", function(req, res, err){
#      "test 1,2,3!"
#      }) %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#    get(path = "/", function(req, res, err){
#      "get test 1,2,3!"
#      }) %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#    get(path = "/", function(req, res, err){
#      "get test 1,2,3 on path /"
#      }) %>%
#    get(path = "/my_path", function(req, res, err){
#      "get test 1,2,3 on path /my_path"
#      }) %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#     ws("/echo_message", function(binary, message, res, err){
#      message
#    }) %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#   collected_mw<-
#      collector() %>%
#      get("/", function(req,res,err){
#        return("test")
#      })
#  
#    res<-jug() %>%
#      include(collected_mw) %>%
#      serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  library(jug)
#  
#  collected_mw<-
#    collector() %>%
#    get("/", function(req,res,err){
#      return("test2")
#    })

## ---- eval=FALSE---------------------------------------------------------
#  res<-jug() %>%
#    include(collected_mw, "my_middlewares.R") %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#    simple_error_handler() %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  say_hello<-function(name){paste("hello",name,"!")}
#  
#  jug() %>%
#    get("/", decorate(say_hello)) %>%
#    serve_it()

## ---- eval=FALSE---------------------------------------------------------
#  jug() %>%
#    serve_static_files() %>%
#    serve_it()

