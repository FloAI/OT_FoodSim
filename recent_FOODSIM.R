library(OTrecod)

Merged_Nutrition_Data_Fully_Clean <- read.csv("~/Mythesis/Merged_Nutrition_Data_Fully_Clean.csv")
df<-Merged_Nutrition_Data_Fully_Clean
df$DB <- ifelse(is.na(df$Y), 1,
                ifelse(is.na(df$Z), 2, NA))
# Move DB to the first column
df <- df[, c("DB", setdiff(names(df), "DB"))]
df$DB <- ifelse(is.na(df$Y), 2,
                ifelse(is.na(df$Z), 1, NA))
df <- df[, -ncol(df)]


y_imputed <- outc1$DATA2_OT[, c("OTpred")]
outc1 = OT_outcome(df, nominal = c(1:4), ordinal = 5:7,
                   dist.choice = "E", indiv.method = "sequential",
                   which.DB = "BOTH")
y_imputed <- outc1$DATA2_OT[, c("OTpred")]
z_imputed <- outc1$DATA1_OT[, c("OTpred")]
na_indices <- which(is.na(df$Z))
df$Z[na_indices] <- z_imputed
na_indices <- which(is.na(df$Y))
df$Y[na_indices] <- y_imputed
