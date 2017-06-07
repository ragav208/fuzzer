datafuzz <- read.csv("allitems.csv")
rejects <- grep("Reject",datafuzz$Description,ignore.case = T)
reserved <- grep("Reserved",datafuzz$Description,ignore.case = T)

datafuzz <- datafuzz[-c(rejects,reserved),]
datafuzz <- datafuzz[unique(datafuzz$Description),]
write.csv(datafuzz,"vulnerabilities.csv")


