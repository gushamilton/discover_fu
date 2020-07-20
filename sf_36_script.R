sf36 <- function(X) {
  
  outRangeNA <- function(x, Min = 1L, Max) {
    replace(x, x < Min | x > Max, NA)
  }
  
  if((!(is.data.frame(X) | is.matrix(X))) | (ncol(X) != 36))
    stop("X must be a data.frame (or matrix) with 36 columns")
  
  X <- as.data.frame(lapply(as.data.frame(X), as.integer))
  names(X) <- c("GH01", "HT01", "PF01", "PF02", "PF03", "PF04", 
                "PF05", "PF06", "PF07", "PF08", "PF09", "PF10", 
                "RP01", "RP02", "RP03", "RP04", "RE01", "RE02", "RE03", 
                "SF01", "BP01", "BP02", "VT01", "MH01", "MH02", "MH03", 
                "VT02", "MH04", "VT03","MH05", "VT04", "SF02", "GH02", 
                "GH03", "GH04", "GH05")
  
  
  # SF-36 PHYSICAL FUNCTIONING INDEX.                          
  ## Scale is positively scored.                               
  ## The higher the score the better the physical functioning
  
  pfi <- c("PF01", "PF02", "PF03", "PF04", "PF05", "PF06", "PF07",
           "PF08", "PF09", "PF10")
  
  X[, pfi] <- lapply(X[, pfi], outRangeNA, Max = 3L)
  X$PFNUM <- apply(X[, pfi], 1, function(x) sum(!is.na(x)))
  X$PFMEAN <- apply(X[, pfi], 1, mean, na.rm = TRUE)
  X[, pfi] <- lapply(X[, pfi],
                     function(x, y) 
                       ifelse(!is.na(x), x, y), y = X$PFMEAN)
  X$RAWPF <- ifelse(X$PFNUM >= 5,
                    apply(X[,pfi], 1, sum, na.rm = TRUE), NA)
  X$PF <- with(X, ((RAWPF - 10) / (30 - 10)) * 100)
  
  
  # SF-36 ROLE-PHYSICAL INDEX.                                 
  ## This scale is positively scored.                               
  ## The higher the score the better the role-physical.            
  
  rpa <- paste0("RP0", 1:4)
  X[, rpa] <- lapply(X[, rpa], outRangeNA, Max = 2L)
  X$ROLPNUM <- apply(X[, rpa], 1, function(x) sum(!is.na(x)))
  X$ROLPMEAN <- apply(X[, rpa], 1, mean, na.rm = TRUE)
  X[, rpa] <- lapply(X[, rpa],
                     function(x, y) 
                       ifelse(!is.na(x), x, y), y = X$ROLPMEAN)
  X$RAWRP <- ifelse(X$ROLPNUM >= 2,
                    apply(X[,rpa], 1, sum, na.rm = TRUE),NA)
  X$RP <- with(X, ((RAWRP - 4)/(8-4)) * 100)
  
  
  # SF-36 PAIN ITEMS.                                          
  ## This scale is positively scored.  The higher the               
  ## score the less pain or the more freedom from pain.             
  
  recBP <- function(bp1, bp2) {
    bp1codes <- c(6, 5.4, 4.2, 3.1, 2.2, 1)
    rbp1 <- bp1codes[as.integer(bp1)]
    rbp2 <- as.integer(6L - bp2)
    rbp2 <- ifelse((bp1 %in% 1L) & (rbp2 %in% 5L), 6L, rbp2)
    phase2cases <- (!is.na(bp1)) & (is.na(bp2))
    rbp2[phase2cases] <- rbp1[phase2cases]
    phase3cases <- (is.na(bp1)) & (!is.na(bp2))
    bp2codes <- c(6, 4.75, 3.5, 2.25, 1)
    rbp2[phase3cases] <- bp2codes[as.integer(bp2[phase3cases])]
    rbp1[phase3cases] <- rbp2[phase3cases]
    return(data.frame(RBP1 = rbp1, RBP2 = rbp2))
  } 
  
  X$BP01 <- outRangeNA(X$BP01, Max = 6L)
  X$BP02 <- outRangeNA(X$BP02, Max = 5L)
  X <- cbind(X, recBP(bp1 = X$BP01, bp2 = X$BP02))
  X$BPNUM <- with(X, (!is.na(BP01)) + (!is.na(BP02)))
  X$RAWBP <- with(X, ifelse(BPNUM >= 1, RBP1 + RBP2 , NA))
  X$BP <- with(X, ((RAWBP - 2)/(12-2)) * 100)
  
  
  # SF-36 GENERAL HEALTH PERCEPTIONS INDEX.                    
  ## This scale is positively scored.                               
  ## The higher the score the better the health perceptions.        
  
  ghp <- paste0("GH0", 1:5)
  X[, ghp] <- lapply(X[, ghp], outRangeNA, Max = 5L)
  X$RGH1 <- c(5, 4.4, 3.4, 2, 1)[X$GH01]
  X$RGH3 <- 6 - X$GH03
  X$RGH5 <- 6 - X$GH05
  X$GHNUM <- apply(X[, ghp], 1, function(x) sum(!is.na(x)))
  rgh <- c("RGH1", "GH02", "RGH3", "GH04", "RGH5")
  X$GHMEAN <- apply(X[, rgh], 1, mean, na.rm = TRUE)
  X[, rgh] <- lapply(X[, rgh],
                     function(x, y) 
                       ifelse(!is.na(x), x, y), y = X$GHMEAN)
  X$RAWGH <- ifelse(X$GHNUM >= 3,
                    apply(X[, rgh], 1, sum, na.rm = TRUE), NA)
  X$GH <- with(X, ((RAWGH - 5)/(25-5)) * 100)
  
  
  # SF-36 VITALITY ITEMS.                                      
  ## This scale is positively scored.                               
  ## The higher the score the greater the vitality.                 
  
  vi <- paste0("VT0", 1:4)
  X[, vi] <- lapply(X[, vi], outRangeNA, Max = 6L)
  X$RVT1 <- with(X, 7 - VT01)
  X$RVT2 <- with(X, 7 - VT02)
  X$VITNUM <- apply(X[, vi], 1, function(x) sum(!is.na(x)))
  rvi <- c("RVT1", "RVT2", "VT03", "VT04")
  X$VITMEAN <- apply(X[, rvi], 1, mean, na.rm = TRUE)
  X[, rvi] <- lapply(X[, rvi],
                     function(x, y) 
                       ifelse(!is.na(x), x, y), y = X$VITMEAN)
  X$RAWVT <- ifelse(X$VITNUM >= 2,
                    apply(X[, rvi], 1, sum, na.rm = TRUE), NA)
  X$VT <- with(X, ((RAWVT-4)/(24-4)) * 100)
  
  
  # SF-36 SOCIAL FUNCTIONING INDEX.                           
  ## This scale is positively scored.                              
  ## The higher the score the better the social functioning.       
  
  soc <- paste0("SF0", 1:2)
  X[, soc] <- lapply(X[, soc], outRangeNA, Max = 5L)
  X$RSF1 = with(X, 6 - SF01)
  X$SFNUM <- apply(X[, soc], 1, function(x) sum(!is.na(x)))
  rsf <- c("RSF1","SF02")
  X$SFMEAN <- apply(X[, rsf], 1, mean, na.rm = TRUE)
  X[, rsf] <- lapply(X[, rsf],
                     function(x, y) 
                       ifelse(!is.na(x), x, y), y = X$SFMEAN)
  X$RAWSF <- ifelse(X$SFNUM >= 1,
                    apply(X[, rsf], 1, sum, na.rm = TRUE), NA)
  X$SF <- with(X, ((RAWSF - 2)/(10-2)) * 100)
  
  
  # THE SF-36 ROLE-EMOTIONAL INDEX.                               
  ## This scale is positively scored.                              
  ## The higher the score, the better the role-emotional.          
  
  RM <- paste0("RE0", 1:3)
  X[, RM] <- lapply(X[, RM], outRangeNA, Max = 2L)
  X$ROLMNUM <- apply(X[, RM], 1, function(x) sum(!is.na(x)))
  X$ROLMMEAN <- apply(X[, RM], 1, mean, na.rm = TRUE)
  X[, RM] <- lapply(X[, RM],
                    function(x, y) 
                      ifelse(!is.na(x), x, y), y = X$ROLMMEAN)
  X$RAWRE <- ifelse(X$ROLMNUM >= 2,
                    apply(X[,RM], 1, sum, na.rm = TRUE),NA)
  X$RE <- with(X, ((RAWRE - 3)/(6-3)) * 100)
  
  
  # THE SF-36 MENTAL HEALTH INDEX.                                
  ## This scale is positively scored.                              
  ## The higher the score the better the mental health.            
  
  mhi <- paste0("MH0", 1:5)
  X[, mhi] <- lapply(X[, mhi], outRangeNA, Max = 6L)
  X$RMH3 = with(X, 7 - MH03)
  X$RMH5 = with(X, 7 - MH05)
  X$MHNUM <- apply(X[, mhi], 1, function(x) sum(!is.na(x)))
  rmh <- c("MH01", "MH02", "RMH3", "MH04", "RMH5")
  X$MHMEAN <- apply(X[, rmh], 1, mean, na.rm = TRUE)
  X[, rmh] <- lapply(X[, rmh],
                     function(x, y) 
                       ifelse(!is.na(x), x, y),y = X$MHMEAN)
  X$RAWMH <- ifelse(X$MHNUM >= 3,
                    apply(X[, rmh], 1, sum, na.rm = TRUE), NA)
  X$MH <- with(X, ((RAWMH-5)/(30-5)) * 100)
  
  
  # SF-36 HEALTH TRANSITION ITEM.                             
  ## This item should be analyzed as categorical data.             
  
  X$HT <- outRangeNA(X$HT, Max = 5L)
  
  
  # SF-36 INDEX CONSTRUCTION            
  ## Purpose: create physical and mental health index scores       
  ## standardized but not normalized and standard deviations 
  ## calculated with vardef=wdf   
  
  ## COMPUTE Z SCORES -- OBSERVED VALUES ARE SAMPLE DATA
  ## MEAN AND SD IS U.S GENERAL POPULATION
  ## FACTOR ANALYTIC SAMPLE
  ## N=2393: HAVE ALL EIGHT SCALES                             
  
  X$PF_Z <- with(X, (PF - 84.52404) / 22.89490 )
  X$RP_Z <- with(X, (RP - 81.19907) / 33.79729 )
  X$BP_Z <- with(X, (BP - 75.49196) / 23.55879 )
  X$GH_Z <- with(X, (GH - 72.21316) / 20.16964 )
  X$VT_Z <- with(X, (VT - 61.05453) / 20.86942 )
  X$SF_Z <- with(X, (SF - 83.59753) / 22.37642 )
  X$RE_Z <- with(X, (RE - 81.29467) / 33.02717 )
  X$MH_Z <- with(X, (MH - 74.84212) / 18.01189 )
  
  
  ## COMPUTE SAMPLE RAW FACTOR SCORES                           
  ## Z SCORES ARE FROM ABOVE                                    
  ## SCORING COEFFICIENTS ARE FROM U.S. GENERAL POPULATION      
  ## FACTOR ANALYTIC SAMPLE N=2393: HAVE ALL EIGHT SCALES       
  
  X$praw <- with(X,
                 (PF_Z * .42402)+(RP_Z * .35119)+(BP_Z * .31754) + 
                   (SF_Z * -.00753)+(MH_Z * -.22069)+(RE_Z * -.19206) +
                   (VT_Z * .02877)+(GH_Z * .24954))
  
  X$mraw <- with(X,
                 (PF_Z * -.22999)+(RP_Z * -.12329)+(BP_Z * -.09731)+
                   (SF_Z * .26876)+(MH_Z * .48581)+(RE_Z * .43407)+
                   (VT_Z * .23534)+(GH_Z * -.01571))
  
  X$PCS = (X$praw*10) + 50;
  X$MCS = (X$mraw*10) + 50;
  
  
  ## Return
  vars.returned <- c("PF","RP","BP","GH","VT",
                     "SF","RE","MH","PCS","MCS")
  return(X[, names(X) %in% vars.returned, drop = FALSE])
  
}