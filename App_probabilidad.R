# Librerías necesarias ----

library(shiny)
library(MASS)
library(magrittr)
library(shinyhelper)
library(ggplot2)

# Importar Funciones para gráficos ----

#source("Funciones/FunInterVerosimilitud.R")
#-------------------------------------------------------------------------------

# Interfaz de usuario ----
ui <- fixedPage(
  
  tags$style("body {
              -moz-transform: scale(0.8, 0.8); /* Moz-browsers */
              zoom: 0.8; /* Other non-webkit browsers */
              zoom: 80%; /* Webkit browsers */
              }"),
  
  fluidRow(
    
    # Título Principal ----
    titlePanel(h1("Gráficos de probabilidad", align = "center",
                  style = "font-family: Arial Black;
                color: #15297c;
                border: 2px solid LightGray;
                border-radius: 5px;
                padding: 20px"))
  ),
  
  # Panel lateral ----
  column(4, 
         
      
         # Título
         h4("Modifica tus parámetros", align = "center", 
            style = "font-family: Arial Black; color: #15297c; padding: 5px"),
         
         # Panel ----
         wellPanel(
           style = "background-color : White; border: 2px solid LightGray",
           
           # Parámetros modificables ----
           
           # Cargar base de datos
           fileInput("file", "Carga la Base de Datos", 
                     accept = ".csv",
                     buttonLabel = "Buscar...",
                     placeholder = "Ningún archivo seleccionado") %>%
             helper(buttonLabel = "Volver",
                    colour = "#2898EE",
                    type = "markdown",
                    #content = "Intervalos/AyudaPaso1"
                    )),
  ),
  
  column(8,
         
         # Menú ----     
         tabsetPanel(
           type = "pills",
           
           # Secciones del menú ----
          
      
           tabPanel(
            title = "Visualización datos"),
           
           tabPanel(
             title = "Gráficos de probabilidad"),
           
           tabPanel(
             title = "Teoría")
         
         )
         
    )
)
  



# Lógica del servidor ----
server <- function(input, output) {}
    

# Ejecutar aplicación ----
shinyApp(ui = ui, server = server)