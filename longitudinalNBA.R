library(data.table)

######################
## data load and merge
######################

d11_12 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s11-12", header=T, sep=",", quote = "")
d11_12['Player'] <- unlist(lapply(strsplit(as.character(d11_12[,'Player']), "\\\\"), function(x) x[1]))
d11_12['Season'] <- "11-12"

d12_13 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s12-13", header=T, sep=",", quote = "")
d12_13['Player'] <- unlist(lapply(strsplit(as.character(d12_13[,'Player']), "\\\\"), function(x) x[1]))
d12_13['Season'] <- "12-13"

d13_14 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s13-14", header=T, sep=",", quote = "")
d13_14['Player'] <- unlist(lapply(strsplit(as.character(d13_14[,'Player']), "\\\\"), function(x) x[1]))
d13_14['Season'] <- "13-14"

d14_15 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s14-15", header=T, sep=",", quote = "")
d14_15['Player'] <- unlist(lapply(strsplit(as.character(d14_15[,'Player']), "\\\\"), function(x) x[1]))
d14_15['Season'] <- "14-15"

d15_16 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s15-16", header=T, sep=",", quote = "")
d15_16['Player'] <- unlist(lapply(strsplit(as.character(d15_16[,'Player']), "\\\\"), function(x) x[1]))
d15_16['Season'] <- "15-16"

d16_17 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s16-17", header=T, sep=",", quote = "")
d16_17['Player'] <- unlist(lapply(strsplit(as.character(d16_17[,'Player']), "\\\\"), function(x) x[1]))
d16_17['Season'] <- "16-17"

d17_18 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s17-18", header=T, sep=",", quote = "")
d17_18['Player'] <- unlist(lapply(strsplit(as.character(d17_18[,'Player']), "\\\\"), function(x) x[1]))
d17_18['Season'] <- "17-18"

d18_19 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s18-19", header=T, sep=",", quote = "")
d18_19['Player'] <- unlist(lapply(strsplit(as.character(d18_19[,'Player']), "\\\\"), function(x) x[1]))
d18_19['Season'] <- "18-19"

d19_20 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s19-20", header=T, sep=",", quote = "")
d19_20['Player'] <- unlist(lapply(strsplit(as.character(d19_20[,'Player']), "\\\\"), function(x) x[1]))
d19_20['Season'] <- "19-20"

d20_21 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s20-21", header=T, sep=",", quote = "")
d20_21['Player'] <- unlist(lapply(strsplit(as.character(d20_21[,'Player']), "\\\\"), function(x) x[1]))
d20_21['Season'] <- "20-21"


# get Isolation info
lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol15-16")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol15-16")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol15-16",append=TRUE)
  }
}

isol15_16 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol15-16", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol16-17")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol16-17")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol16-17",append=TRUE)
  }
}

isol16_17 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol16-17", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol17-18")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol17-18")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol17-18",append=TRUE)
  }
}

isol17_18 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol17-18", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol18-19")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol18-19")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol18-19",append=TRUE)
  }
}

isol18_19 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol18-19", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol19-20")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol19-20")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol19-20",append=TRUE)
  }
}

isol19_20 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol19-20", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol20-21")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol20-21")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol20-21",append=TRUE)
  }
}

isol20_21 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol20-21", header=T, sep="\t", quote = "")

# get Post Up info
lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post15-16")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post15-16")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post15-16",append=TRUE)
  }
}

post15_16 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post15-16", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post16-17")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post16-17")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post16-17",append=TRUE)
  }
}

post16_17 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post16-17", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post17-18")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post17-18")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post17-18",append=TRUE)
  }
}

post17_18 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post17-18", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post18-19")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post18-19")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post18-19",append=TRUE)
  }
}

post18_19 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post18-19", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post19-20")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post19-20")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post19-20",append=TRUE)
  }
}

post19_20 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post19-20", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post20-21")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post20-21")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post20-21",append=TRUE)
  }
}

post20_21 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post20-21", header=T, sep="\t", quote = "")


# get Hand off info
lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/hand15-16")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand15-16")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand15-16",append=TRUE)
  }
}

hand15_16 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand15-16", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/hand16-17")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand16-17")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand16-17",append=TRUE)
  }
}

hand16_17 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand16-17", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/hand17-18")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand17-18")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand17-18",append=TRUE)
  }
}

hand17_18 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand17-18", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/hand18-19")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand18-19")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand18-19",append=TRUE)
  }
}

hand18_19 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand18-19", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/hand19-20")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand19-20")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand19-20",append=TRUE)
  }
}

hand19_20 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand19-20", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/hand20-21")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand20-21")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand20-21",append=TRUE)
  }
}

hand20_21 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand20-21", header=T, sep="\t", quote = "")


# get Pick and Roll Handler info
lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh15-16")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh15-16")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh15-16",append=TRUE)
  }
}

pnrh15_16 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh15-16", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh16-17")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh16-17")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh16-17",append=TRUE)
  }
}

pnrh16_17 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh16-17", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh17-18")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh17-18")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh17-18",append=TRUE)
  }
}

pnrh17_18 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh17-18", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh18-19")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh18-19")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh18-19",append=TRUE)
  }
}

pnrh18_19 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh18-19", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh19-20")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh19-20")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh19-20",append=TRUE)
  }
}

pnrh19_20 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh19-20", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh20-21")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh20-21")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh20-21",append=TRUE)
  }
}

pnrh20_21 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh20-21", header=T, sep="\t", quote = "")


# get Pick and Roll Roll Man info
lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr15-16")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr15-16")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr15-16",append=TRUE)
  }
}

pnrr15_16 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr15-16", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr16-17")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr16-17")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr16-17",append=TRUE)
  }
}

pnrr16_17 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr16-17", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr17-18")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr17-18")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr17-18",append=TRUE)
  }
}

pnrr17_18 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr17-18", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr18-19")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr18-19")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr18-19",append=TRUE)
  }
}

pnrr18_19 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr18-19", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr19-20")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr19-20")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr19-20",append=TRUE)
  }
}

pnrr19_20 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr19-20", header=T, sep="\t", quote = "")

lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr20-21")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr20-21")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr20-21",append=TRUE)
  }
}

pnrr20_21 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr20-21", header=T, sep="\t", quote = "")

# structure data
isol15_16$Season <- "15-16"
isol16_17$Season <- "16-17"
isol17_18$Season <- "17-18"
isol18_19$Season <- "18-19"
isol19_20$Season <- "19-20"
isol20_21$Season <- "20-21"

isol <- rbind(isol15_16, isol16_17, isol17_18, isol18_19, isol19_20, isol20_21)
isol <- as.data.frame(data.table(isol, key=c('PLAYER', 'Season')))
colnames(isol)[1] <- "Player"
colnames(isol)[5] <- "Isolfreq"

isol$Isolfreq <- unlist(lapply(strsplit(as.character(isol[,'Isolfreq']), "%"), 
                               function(x) as.numeric(x[1])))

tmp <- aggregate(isol$Isolfreq, list(isol$Player, isol$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "Isolfreq")

isol <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))



post15_16$Season <- "15-16"
post16_17$Season <- "16-17"
post17_18$Season <- "17-18"
post18_19$Season <- "18-19"
post19_20$Season <- "19-20"
post20_21$Season <- "20-21"

postup <- rbind(post15_16, post16_17, post17_18, post18_19, post19_20, post20_21)
postup <- as.data.frame(data.table(postup, key=c('PLAYER', 'Season')))
colnames(postup)[1] <- "Player"
colnames(postup)[5] <- "Postfreq"

postup$Postfreq <- unlist(lapply(strsplit(as.character(postup[,'Postfreq']), "%"), 
                                 function(x) as.numeric(x[1])))

tmp <- aggregate(postup$Postfreq, list(postup$Player, postup$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "Postfreq")

postup <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))



hand15_16$Season <- "15-16"
hand16_17$Season <- "16-17"
hand17_18$Season <- "17-18"
hand18_19$Season <- "18-19"
hand19_20$Season <- "19-20"
hand20_21$Season <- "20-21"

hand <- rbind(hand15_16, hand16_17, hand17_18, hand18_19, hand19_20, hand20_21)
hand <- as.data.frame(data.table(hand, key=c('PLAYER', 'Season')))
colnames(hand)[1] <- "Player"
colnames(hand)[5] <- "Handofffreq"

hand$Handofffreq <- unlist(lapply(strsplit(as.character(hand[,'Handofffreq']), "%"), 
                                  function(x) as.numeric(x[1])))

tmp <- aggregate(hand$Handofffreq, list(hand$Player, hand$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "Handofffreq")

handoff <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))



pnrh15_16$Season <- "15-16"
pnrh16_17$Season <- "16-17"
pnrh17_18$Season <- "17-18"
pnrh18_19$Season <- "18-19"
pnrh19_20$Season <- "19-20"
pnrh20_21$Season <- "20-21"

pnrh <- rbind(pnrh15_16, pnrh16_17, pnrh17_18, pnrh18_19, pnrh19_20, pnrh20_21)
pnrh <- as.data.frame(data.table(pnrh, key=c('PLAYER', 'Season')))
colnames(pnrh)[1] <- "Player"
colnames(pnrh)[5] <- "PNRhandlerfreq"

pnrh$PNRhandlerfreq <- unlist(lapply(strsplit(as.character(pnrh[,'PNRhandlerfreq']), "%"), 
                                     function(x) as.numeric(x[1])))

tmp <- aggregate(pnrh$PNRhandlerfreq, list(pnrh$Player, pnrh$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "PNRhandlerfreq")

pnrh <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))


pnrr15_16$Season <- "15-16"
pnrr16_17$Season <- "16-17"
pnrr17_18$Season <- "17-18"
pnrr18_19$Season <- "18-19"
pnrr19_20$Season <- "19-20"
pnrr20_21$Season <- "20-21"

pnrr <- rbind(pnrr15_16, pnrr16_17, pnrr17_18, pnrr18_19, pnrr19_20, pnrr20_21)
pnrr <- as.data.frame(data.table(pnrr, key=c('PLAYER', 'Season')))
colnames(pnrr)[1] <- "Player"
colnames(pnrr)[5] <- "PNRrollmanfreq"

pnrr$PNRrollmanfreq <- unlist(lapply(strsplit(as.character(pnrr[,'PNRrollmanfreq']), "%"), 
                                     function(x) as.numeric(x[1])))

tmp <- aggregate(pnrr$PNRrollmanfreq, list(pnrr$Player, pnrr$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "PNRrollmanfreq")

pnrr <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))



################
## preprocessing
################

target_plr <- d15_16['Player'][d15_16['Age']>=25] # assume average debut age 20, and rookie season 5 years
master <- rbind(d15_16[d15_16[,'Player'] %in% target_plr,],
                d16_17[d16_17[,'Player'] %in% target_plr,], d17_18[d17_18[,'Player'] %in% target_plr,],
                d18_19[d18_19[,'Player'] %in% target_plr,], d19_20[d19_20[,'Player'] %in% target_plr,],
                d20_21[d20_21[,'Player'] %in% target_plr,])

master <- as.data.frame(data.table(master, key=c('Player', 'Season')))

master <- master[master[,'Player'] %in% target_plr,]
masterbyMP <- aggregate(master$MP, list(master$Player), FUN=mean)

# filtering by minutes played
remove.plr <- masterbyMP[,1][masterbyMP[,2]<12] # 48*5*0.2/4 (10 roster, 6men(80%)/4men(20%))

master <- master[!master[,'Player'] %in% remove.plr,]

# filtering by game played
masterbyG<- aggregate(master$G, list(master$Player), FUN=mean)
remove.plr <- masterbyG[,1][masterbyG[,2]<41] 

master <- master[!master[,'Player'] %in% remove.plr,]

master <- master[, -1]

# WinScore to evaluate player performance
master['WinScore'] <- master$PTS + master$TRB + master$STL + 0.5*master$AST +
  0.5*master$BLK - master$TOV - master$FGA - 0.5*master$PF - 0.5*master$FTA 


master <- master[master$G >= 41,] # leave seasons when play more than 40 games for each player

master$Pos <- unlist(lapply(as.character(master$Pos), function(x) strsplit(x,'-')[[1]][1]))

rownames(master) <- NULL


byown <- full_join(isol, postup, by=c("Player", "Season"))
byown <- full_join(byown, handoff, by=c("Player", "Season"))
byown <- full_join(byown, pnrh, by=c("Player", "Season"))
byown <- full_join(byown, pnrr, by=c("Player", "Season"))
byown[is.na(byown)]<-0


# create master dataframe
master_df <- inner_join(master, byown, by=c("Player", "Season"))

tmp <- master_df %>% group_by(Player) %>% summarise(n=n())

master_df <- master_df[master_df$Player %in% tmp[tmp$n>=5,]$Player,]
master_df$PersonalOffense <- master_df$Isolfreq + master_df$Postfreq # individual skills-based offense freq.
master_df$TeamOffense <- master_df$Handofffreq + master_df$PNRhandlerfreq + master_df$PNRrollmanfreq # team play-based offense freq.
master_df$SeasonOrder <- as.numeric(as.factor(master_df$Season))


write.csv(master, "/home/kyu9510/courseworks/repeated/finalproj/master.csv", row.names = FALSE)
write.csv(master_df, "/home/kyu9510/courseworks/repeated/finalproj/master_df.csv", row.names = FALSE)

# data load
master <- read.csv("/home/kyu9510/courseworks/repeated/finalproj/master.csv", header=T)  
master_df <- read.csv("/home/kyu9510/courseworks/repeated/finalproj/master_df.csv", header=T)  

######
## EDA
######
library(ggplot2)
library(dplyr)
library(ggrepel)
library(gridExtra)

players <- unique(master_df$Player)

# All players' win score graph according to the season labelled by name
grid.arrange(ggplot(master_df[master_df$Player %in% players[1:10],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[1:10]),
                                                                     data = master_df[master_df$Player %in% players[1:10],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[11:20],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[11:20]),
                                                                     data = master_df[master_df$Player %in% players[11:20],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[21:30],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[21:30]),
                                                                     data = master_df[master_df$Player %in% players[21:30],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[31:40],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[31:40]),
                                                                     data = master_df[master_df$Player %in% players[31:40],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"), nrow=2, ncol=2)

grid.arrange(ggplot(master_df[master_df$Player %in% players[41:49],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[41:49]),
                                                                     data = master_df[master_df$Player %in% players[41:49],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[50:58],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[50:58]),
                                                                     data = master_df[master_df$Player %in% players[50:58],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[59:67],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[59:67]),
                                                                     data = master_df[master_df$Player %in% players[59:67],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[68:74],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[68:74]),
                                                                     data = master_df[master_df$Player %in% players[68:74],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"), nrow=2, ncol=2)



# position-wise win score mean graph according to the season
tmp <- aggregate(master_df$WinScore, list(master_df$Pos, master_df$Season), FUN=mean)

ggplot(tmp, aes(x = Group.2, y = x, color = factor(Group.1), group = Group.1)) + 
  geom_point(size = 3) + geom_line() + labs(title = "WinScore vs. Season", color = "Pos") + 
  scale_x_discrete(name ="Season", limits=c("15-16","16-17","17-18","18-19","19-20","20-21")) +
  ylab("WinScore")


ggplot(master_df, aes(x = as.numeric(as.factor(Season)), y = WinScore)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  scale_x_discrete(name ="Season", limits=c("15-16","16-17","17-18","18-19","19-20","20-21")) +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27))

ggplot(master_df, aes(x = as.numeric(as.factor(Season)), y = WinScore, col = Player, group = Player)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  scale_x_discrete(name ="Season", limits=c("15-16","16-17","17-18","18-19","19-20","20-21")) +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27),
        legend.position="none")

ggplot(master_df, aes(x = PersonalOffense, y = WinScore)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  xlab("Personal Offense") +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27))

ggplot(master_df, aes(x = PersonalOffense, y = WinScore, col = Player, group = Player)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  xlab("Personal Offense") +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27),
        legend.position="none")

ggplot(master_df, aes(x = TeamOffense, y = WinScore)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  xlab("Team Offense") +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27))

ggplot(master_df, aes(x = TeamOffense, y = WinScore, col = Player, group = Player)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  xlab("Team Offense") +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27),
        legend.position="none")


ggplot(master_df, aes(x = as.numeric(as.factor(Season)), y = WinScore, col = Pos, group = Pos)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + labs(title = "WinScore vs. Season") + 
  scale_x_discrete(name ="Season", limits=c("15-16","16-17","17-18","18-19","19-20","20-21")) 



table((master_df %>% group_by(Player) %>% summarise(pos =names(which.max(table(Pos)))))$pos)
summary(master_df$PersonalOffense)
summary(master_df$TeamOffense)

aggregate(master_df$WinScore, list(master_df$Pos), FUN=mean)

######################
## Method and Analysis
######################
library(lme4)
library(lmerTest)
library(optimx)
library(sjPlot)
library(sjmisc)
library(performance)
library(geepack)
library(spind)

# LM
mean_model <- lm(WinScore ~ SeasonOrder + PersonalOffense + TeamOffense, data = master_df)
summary(mean_model)
AIC(mean_model)
BIC(mean_model)

# LMM
# random intercept model
summary(lmer(WinScore ~  SeasonOrder  + PersonalOffense + TeamOffense + (1 | Player), master_df, REML = FALSE))

# random slope, random intercept model
summary(lmer(WinScore ~  SeasonOrder  + PersonalOffense + TeamOffense + 
               (1 + SeasonOrder  + PersonalOffense + TeamOffense | Player), master_df, REML = FALSE,
             control = lmerControl(optimizer ='optimx', optCtrl=list(method='nlminb')))) # for model comparison (AIC, BIC)


lmm <- lmer(WinScore ~  SeasonOrder  + PersonalOffense + TeamOffense + 
              (1 + SeasonOrder  + PersonalOffense + TeamOffense | Player), master_df, REML = TRUE, 
            control = lmerControl(optimizer ='optimx', optCtrl=list(method='L-BFGS-B')))

summary(lmm)

master_df$fitted <- fitted(lmm)

ggplot(master_df, aes(x = as.numeric(as.factor(Season)), y = fitted, col = Player, group = Player)) +
  geom_smooth(method = "lm", se = FALSE, level = 0.95) + geom_point() + 
  scale_x_discrete(name ="Season", limits=c("15-16","16-17","17-18","18-19","19-20","20-21")) +
  theme(axis.title.x = element_text(size = 30),
        axis.text.x = element_text(size = 27),
        axis.title.y = element_text(size = 30),
        axis.text.y = element_text(size = 27),
        legend.position="none")

coef(lmm) # sum of the random and fixed effects for each level
fixef(lmm) # fixed effect part
ranef(lmm) # random effect part

# residual normality check
resid <- as.numeric(residuals(lmm))

par(mfrow=c(1,2))
hist(resid, xlab = "Residual")
qqnorm(resid)
qqline(resid, col="red")

# random effect coefficient
check_model(lmm)
plmm <- plot_model(lmm, type = "re")
plmm$data$facet[plmm$data$facet=="Player (Intercept)"] = "(Intercept)"
plmm$data$facet[plmm$data$facet=="SeasonOrder"] = "Season"
plmm$labels$title = ""
plmm$labels$x = "Player"
plmm$data$facet <- factor(plmm$data$facet, levels = c("(Intercept)", "Season", "PersonalOffense", "TeamOffense"))

plmm + theme(strip.text.x = element_text(size = 25),
             axis.text.x = element_text(size = 16),
             axis.text.y = element_text(size = 15),
             axis.title.y = element_text(size = 25))



coeffmat <- coef(lmm)$Player
coeffmat$Pos <- (master_df %>% group_by(Player) %>% filter(Age == min(Age)))$Pos
coeffmat$Age <- (master_df %>% group_by(Player) %>% filter(Age == min(Age)))$Age

arrange(coeffmat, desc(`(Intercept)`))
arrange(coeffmat, desc(SeasonOrder))
arrange(coeffmat, desc(PersonalOffense))
arrange(coeffmat, desc(TeamOffense))


grid.arrange(ggplot(predict_df[master_df$Player %in% players[1:10],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[1:10]),
                                                                     data = master_df[master_df$Player %in% players[1:10],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[11:20],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[11:20]),
                                                                     data = master_df[master_df$Player %in% players[11:20],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[21:30],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[21:30]),
                                                                     data = master_df[master_df$Player %in% players[21:30],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[31:40],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[31:40]),
                                                                     data = master_df[master_df$Player %in% players[31:40],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"), nrow=2, ncol=2)

grid.arrange(ggplot(master_df[master_df$Player %in% players[41:49],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[41:49]),
                                                                     data = master_df[master_df$Player %in% players[41:49],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[50:58],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[50:58]),
                                                                     data = master_df[master_df$Player %in% players[50:58],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[59:67],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[59:67]),
                                                                     data = master_df[master_df$Player %in% players[59:67],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"),
             ggplot(master_df[master_df$Player %in% players[68:74],], aes(x = Season, y = WinScore, color = factor(Player), group = Player)) + 
               geom_point(size = 3) + geom_line() + geom_label_repel(aes(label=players[68:74]),
                                                                     data = master_df[master_df$Player %in% players[68:74],] %>% group_by(Player) %>% filter(Age == max(Age)),
                                                                     nudge_y = 0.4, size = 3) + labs(color = "Player") + theme(legend.position="none"), nrow=2, ncol=2)



# GEE
gee.indep <- geeglm(WinScore ~  SeasonOrder  + PersonalOffense + TeamOffense, id = Player, data = master_df, family = gaussian, corstr="independence")
gee.intraclass <- geeglm(WinScore ~  SeasonOrder  + PersonalOffense + TeamOffense, id = Player, data = master_df, family = gaussian, corstr="exchangeable")
gee.ar1 <- geeglm(WinScore ~  SeasonOrder  + PersonalOffense + TeamOffense, id = Player, data = master_df, family = gaussian, corstr="ar1")

# select a correlation structure using QIC
QIC(gee.indep)
QIC(gee.intraclass)
QIC(gee.ar1)



#############
## prediction
#############
d21_22 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/s21-22", header=T, sep=",", quote = "")
d21_22['Player'] <- unlist(lapply(strsplit(as.character(d21_22[,'Player']), "\\\\"), function(x) x[1]))
d21_22['Season'] <- "21-22"
pred <- as.data.frame(data.table(d21_22, key=c('Player', 'Season')))

predbyMP <- aggregate(pred$MP, list(pred$Player), FUN=mean)
remove.plr <- predbyMP[,1][predbyMP[,2]<12] # 48*5*0.2/4 (10 roster, 6men(80%)/4men(20%))

pred <- pred[!pred[,'Player'] %in% remove.plr,]

predbyG<- aggregate(pred$G, list(pred$Player), FUN=mean)
remove.plr <- predbyG[,1][predbyG[,2]<41] 

pred <- pred[!pred[,'Player'] %in% remove.plr,]


pred <- pred[, -1]

pred['WinScore'] <- pred$PTS + pred$TRB + pred$STL + 0.5*pred$AST +
  0.5*pred$BLK - pred$TOV - pred$FGA - 0.5*pred$PF - 0.5*pred$FTA 



lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/isol21-22")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol21-22")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Isol21-22",append=TRUE)
  }
}

isol21_22 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Isol21-22", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/post21-22")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Post21-22")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Post21-22",append=TRUE)
  }
}

post21_22 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Post21-22", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/hand21-22")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand21-22")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Hand21-22",append=TRUE)
  }
}

hand21_22 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Hand21-22", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrh21-22")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh21-22")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh21-22",append=TRUE)
  }
}

pnrh21_22 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrh21-22", header=T, sep="\t", quote = "")


lines <- readLines("/home/kyu9510/courseworks/repeated/finalproj/data/pnrr21-22")

for(i in 1:length(lines)){
  if(i==1){
    write(lines[i], file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr21-22")
  }
  else if(i%%2 == 0){
    write(paste(lines[i], lines[i+1], sep='\t'), file="/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr21-22",append=TRUE)
  }
}

pnrr21_22 <- read.table("/home/kyu9510/courseworks/repeated/finalproj/data/Pnrr21-22", header=T, sep="\t", quote = "")



isol21_22$Season <- "21-22"

isol21_22 <- as.data.frame(data.table(isol21_22, key=c('PLAYER', 'Season')))
colnames(isol21_22)[1] <- "Player"
colnames(isol21_22)[5] <- "Isolfreq"

isol21_22$Isolfreq <- unlist(lapply(strsplit(as.character(isol21_22[,'Isolfreq']), "%"), 
                                    function(x) as.numeric(x[1])))

tmp <- aggregate(isol21_22$Isolfreq, list(isol21_22$Player, isol21_22$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "Isolfreq")

isol21_22 <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))


post21_22$Season <- "21-22"

post21_22 <- as.data.frame(data.table(post21_22, key=c('PLAYER', 'Season')))
colnames(post21_22)[1] <- "Player"
colnames(post21_22)[5] <- "Postfreq"

post21_22$Postfreq <- unlist(lapply(strsplit(as.character(post21_22[,'Postfreq']), "%"), 
                                    function(x) as.numeric(x[1])))

tmp <- aggregate(post21_22$Postfreq, list(post21_22$Player, post21_22$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "Postfreq")

post21_22 <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))


hand21_22$Season <- "21-22"

hand21_22 <- as.data.frame(data.table(hand21_22, key=c('PLAYER', 'Season')))
colnames(hand21_22)[1] <- "Player"
colnames(hand21_22)[5] <- "Handfreq"

hand21_22$Handfreq <- unlist(lapply(strsplit(as.character(hand21_22[,'Handfreq']), "%"), 
                                    function(x) as.numeric(x[1])))

tmp <- aggregate(hand21_22$Handfreq, list(hand21_22$Player, hand21_22$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "Handfreq")

hand21_22 <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))


pnrh21_22$Season <- "21-22"

pnrh21_22 <- as.data.frame(data.table(pnrh21_22, key=c('PLAYER', 'Season')))
colnames(pnrh21_22)[1] <- "Player"
colnames(pnrh21_22)[5] <- "PNRhandlerfreq"

pnrh21_22$PNRhandlerfreq <- unlist(lapply(strsplit(as.character(pnrh21_22[,'PNRhandlerfreq']), "%"), 
                                          function(x) as.numeric(x[1])))

tmp <- aggregate(pnrh21_22$PNRhandlerfreq, list(pnrh21_22$Player, pnrh21_22$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "PNRhandlerfreq")

pnrh21_22 <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))


pnrr21_22$Season <- "21-22"

pnrr21_22 <- as.data.frame(data.table(pnrr21_22, key=c('PLAYER', 'Season')))
colnames(pnrr21_22)[1] <- "Player"
colnames(pnrr21_22)[5] <- "PNRrollmanfreq"

pnrr21_22$PNRrollmanfreq <- unlist(lapply(strsplit(as.character(pnrr21_22[,'PNRrollmanfreq']), "%"), 
                                          function(x) as.numeric(x[1])))

tmp <- aggregate(pnrr21_22$PNRrollmanfreq, list(pnrr21_22$Player, pnrr21_22$Season), FUN=mean)
colnames(tmp) <- c("Player", "Season", "PNRrollmanfreq")

pnrr21_22 <- as.data.frame(data.table(tmp, key=c('Player', 'Season')))



byown <- full_join(isol21_22, post21_22, by=c("Player", "Season"))
byown <- full_join(byown, hand21_22, by=c("Player", "Season"))
byown <- full_join(byown, pnrh21_22, by=c("Player", "Season"))
byown <- full_join(byown, pnrr21_22, by=c("Player", "Season"))
byown[is.na(byown)]<-0


# construct prediction dataframe
pred_df <- inner_join(pred, byown, by=c("Player", "Season"))
pred_df$PersonalOffense <- pred_df$Isolfreq + pred_df$Postfreq
pred_df$TeamOffense <- pred_df$Handfreq + pred_df$PNRhandlerfreq + pred_df$PNRrollmanfreq
pred_df$SeasonOrder <- 7


pred_df <- pred_df[pred_df$Player %in% unique(master_df$Player),]

totalcoef <- coef(lmm)$Player # total coefficient
totalcoef$Player <- rownames(totalcoef)

totalcoef <- totalcoef[totalcoef$Player %in% pred_df$Player, ]

pred_df$LMM_Prediction <- totalcoef$`(Intercept)` + totalcoef$SeasonOrder*pred_df$SeasonOrder + 
  totalcoef$PersonalOffense*pred_df$PersonalOffense + totalcoef$TeamOffense*totalcoef$TeamOffense

pred_df$GEE_Prediction <- predict(gee.intraclass, newdata = pred_df)


grid.arrange(ggplot(pred_df, aes(x=WinScore, y = LMM_Prediction)) + geom_point() + geom_abline(intercept = 0, slope = 1, col="red") +
               theme(axis.title.x = element_text(size = 26),
                     axis.text.x = element_text(size = 20),
                     axis.title.y = element_text(size = 26),
                     axis.text.y = element_text(size = 20)),
             ggplot(pred_df, aes(x=WinScore, y = GEE_Prediction)) + geom_point() + geom_abline(intercept = 0, slope = 1, col="red") +
               theme(axis.title.x = element_text(size = 26),
                     axis.text.x = element_text(size = 20),
                     axis.title.y = element_text(size = 26),
                     axis.text.y = element_text(size = 20)) , nrow=1, ncol=2)

