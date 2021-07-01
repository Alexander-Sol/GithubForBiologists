# When working within an R Project, it's easy to point to files saved in the same
# directory. This makes sharing code across users easier. For example
exampleData <- readRDS("C:/Users/MHunt/Desktop/R_Files/Experiment201/Foo.rds")

# Becomes
exampleData <- readRDS("Foo.rds")

# The R script and the R data are in the same parent folder, so you don't have to
# specify the full file path.

# In some cases, it is easier/more convenient to save multiple objects at the 
# same time. This can be done with the .Rdata format. This project includes an
# .Rdata file. We'll load that in now
library(Seurat)
load("Day20_Prosense.Rdata") 

# Loading this data adds three new objects to the environment: 
# prosense.seurat, prosense.features, and prosense.palette. Because they are
# loaded in already named, it's simple to reuse code
DoHeatmap(object = prosense.seurat,
          features = prosense.features$gene,
          group.colors = prosense.palette)

# If you want to save multiple objects as an .Rdata file, you can use the save
# command
save(prosense.features, prosense.palette, file = "Day20_Duplicate.Rdata")
