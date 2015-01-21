  library("plyr")
  library("reshape2")

  testdata <- read.table("UCI HAR Dataset/test/X_test.txt")
  traindata <- read.table("UCI HAR Dataset/train/X_train.txt")
  combdata <- rbind(testdata, traindata)
  
  features <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)[[2]]
  colnames(combdata) <- features
  combdata <- combdata[,grep("mean|std", features)]
  
  tempstr = names(combdata)
  tempstr <- gsub(pattern="-?mean[(][)]-?",replacement="Mean",x=tempstr)
  tempstr <- gsub(pattern="-?std[()][)]-?",replacement="Std",x=tempstr)  
  tempstr <- gsub(pattern="-?meanFreq[()][)]-?",replacement="MeanFreq",x=tempstr)
  names(combdata) <- tempstr
  
  activityLbls <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
  colnames(activityLbls) <- c("ID","activity")
  
  testact <- read.table("UCI HAR Dataset/test/y_test.txt",stringsAsFactors=FALSE)
  trainact <- read.table("UCI HAR Dataset/train/y_train.txt",stringsAsFactors=FALSE)
  combact <- rbind(testact, trainact)
  
  colnames(combact)[1] <- "ID"
  activities <- join(combact, activityLbls, by="ID")
  
  #and add the column to the entire dataset
  combdata <- cbind(activity=activities[,"activity"],combdata)
  
  #extra step: include the subject ids, for processing in the next step
  testsub <- read.table("UCI HAR Dataset/test/subject_test.txt",stringsAsFactors=FALSE)
  trainsub <- read.table("UCI HAR Dataset/train/subject_train.txt",stringsAsFactors=FALSE)
  combsub <- rbind(testsub, trainsub)
  colnames(combsub) <- "subject"
  combdata <- cbind(combsub, combdata)
  
  combdatamelt <- melt(combdata,id.vars= c("subject","activity"))
  combdatadcast <- dcast(combdatamelt, subject+activity ~ variable, mean)
    
  write.csv(combdatadcast, file="tidy.txt")