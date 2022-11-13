###R Version 4.1.2 (64bit)

library(dplyr)
library(janeaustenr)
library(tidytext)
library(ggplot2)
library(tm)
library(rlist)

library(wordcloud)
library(RColorBrewer)
library(wordcloud2)


setwd('C:/Users/mdjaw/OneDrive/Documents/Markian Training/Research_USQ/WHO_ICD_Codes')

WHO_CH_00 <- as.list(readLines("WHO_CH_00_List.txt", encoding = "UTF-8"))
WHO_CH_01 <- as.list(readLines("WHO_CH_01.txt", encoding = "UTF-8"))
WHO_CH_02 <- as.list(readLines("WHO_CH_02.txt", encoding = "UTF-8"))
WHO_CH_03 <- as.list(readLines("WHO_CH_03.txt", encoding = "UTF-8"))
WHO_CH_04 <- as.list(readLines("WHO_CH_04.txt", encoding = "UTF-8"))
WHO_CH_05 <- as.list(readLines("WHO_CH_05.txt", encoding = "UTF-8"))
WHO_CH_06 <- as.list(readLines("WHO_CH_06.txt", encoding = "UTF-8"))
WHO_CH_07 <- as.list(readLines("WHO_CH_07.txt", encoding = "UTF-8"))
WHO_CH_08 <- as.list(readLines("WHO_CH_08.txt", encoding = "UTF-8"))
WHO_CH_09 <- as.list(readLines("WHO_CH_09.txt", encoding = "UTF-8"))
WHO_CH_10 <- as.list(readLines("WHO_CH_10.txt", encoding = "UTF-8"))
WHO_CH_11 <- as.list(readLines("WHO_CH_11.txt", encoding = "UTF-8"))
WHO_CH_12 <- as.list(readLines("WHO_CH_12.txt", encoding = "UTF-8"))
WHO_CH_13 <- as.list(readLines("WHO_CH_13.txt", encoding = "UTF-8"))
WHO_CH_14 <- as.list(readLines("WHO_CH_14.txt", encoding = "UTF-8"))
WHO_CH_15 <- as.list(readLines("WHO_CH_15.txt", encoding = "UTF-8"))
WHO_CH_16 <- as.list(readLines("WHO_CH_16.txt", encoding = "UTF-8"))
WHO_CH_17 <- as.list(readLines("WHO_CH_17.txt", encoding = "UTF-8"))
WHO_CH_18 <- as.list(readLines("WHO_CH_18.txt", encoding = "UTF-8"))
WHO_CH_19 <- as.list(readLines("WHO_CH_19.txt", encoding = "UTF-8"))
WHO_CH_20 <- as.list(readLines("WHO_CH_20.txt", encoding = "UTF-8"))
WHO_CH_21 <- as.list(readLines("WHO_CH_21.txt", encoding = "UTF-8"))
WHO_CH_22 <- as.list(readLines("WHO_CH_22.txt", encoding = "UTF-8"))
WHO_CH_23 <- as.list(readLines("WHO_CH_23.txt", encoding = "UTF-8"))
WHO_CH_24 <- as.list(readLines("WHO_CH_24.txt", encoding = "UTF-8"))
WHO_CH_25 <- as.list(readLines("WHO_CH_25.txt", encoding = "UTF-8"))
WHO_CH_26 <- as.list(readLines("WHO_CH_26.txt", encoding = "UTF-8"))
#WHO_SUPP <- as.list(readLines("WHO_SUPP.txt", encoding = "UTF-8"))
#WHO_EXT <- as.list(readLines("WHO_EXT.txt", encoding = "UTF-8"))
#WHO_ICD <- as.list(readLines("WHO_ICD.txt", encoding = "UTF-8"))

doc_CH_00 <- Corpus(VectorSource(WHO_CH_00))
doc_CH_00 = tm_map(doc_CH_00, content_transformer(tolower))
doc_CH_00 = tm_map(doc_CH_00, removePunctuation)
doc_CH_00 = tm_map(doc_CH_00, removeWords, stopwords("english"))
WHO_CH_00 <- doc_CH_00$content
WHO_CH_00 <- as.list(doc_CH_00$content)

doc_CH_01 <- Corpus(VectorSource(WHO_CH_01))
doc_CH_01 = tm_map(doc_CH_01, content_transformer(tolower))
doc_CH_01 = tm_map(doc_CH_01, removePunctuation)
doc_CH_01 = tm_map(doc_CH_01, removeWords, stopwords("english"))
WHO_CH_01 <- doc_CH_01$content
WHO_CH_01 <- as.list(doc_CH_01$content)

doc_CH_02 <- Corpus(VectorSource(WHO_CH_02))
doc_CH_02 = tm_map(doc_CH_02, content_transformer(tolower))
doc_CH_02 = tm_map(doc_CH_02, removePunctuation)
doc_CH_02 = tm_map(doc_CH_02, removeWords, stopwords("english"))
WHO_CH_02 <- doc_CH_02$content
WHO_CH_02 <- as.list(doc_CH_02$content)

doc_CH_03 <- Corpus(VectorSource(WHO_CH_03))
doc_CH_03 = tm_map(doc_CH_03, content_transformer(tolower))
doc_CH_03 = tm_map(doc_CH_03, removePunctuation)
doc_CH_03 = tm_map(doc_CH_03, removeWords, stopwords("english"))
WHO_CH_03 <- doc_CH_03$content
WHO_CH_03 <- as.list(doc_CH_03$content)

doc_CH_04 <- Corpus(VectorSource(WHO_CH_04))
doc_CH_04 = tm_map(doc_CH_04, content_transformer(tolower))
doc_CH_04 = tm_map(doc_CH_04, removePunctuation)
doc_CH_04 = tm_map(doc_CH_04, removeWords, stopwords("english"))
WHO_CH_04 <- doc_CH_04$content
WHO_CH_04 <- as.list(doc_CH_04$content)

doc_CH_05 <- Corpus(VectorSource(WHO_CH_05))
doc_CH_05 = tm_map(doc_CH_05, content_transformer(tolower))
doc_CH_05 = tm_map(doc_CH_05, removePunctuation)
doc_CH_05 = tm_map(doc_CH_05, removeWords, stopwords("english"))
WHO_CH_05 <- doc_CH_05$content
WHO_CH_05 <- as.list(doc_CH_05$content)

doc_CH_06 <- Corpus(VectorSource(WHO_CH_06))
doc_CH_06 = tm_map(doc_CH_06, content_transformer(tolower))
doc_CH_06 = tm_map(doc_CH_06, removePunctuation)
doc_CH_06 = tm_map(doc_CH_06, removeWords, stopwords("english"))
WHO_CH_06 <- doc_CH_06$content
WHO_CH_06 <- as.list(doc_CH_06$content)

doc_CH_07 <- Corpus(VectorSource(WHO_CH_07))
doc_CH_07 = tm_map(doc_CH_07, content_transformer(tolower))
doc_CH_07 = tm_map(doc_CH_07, removePunctuation)
doc_CH_07 = tm_map(doc_CH_07, removeWords, stopwords("english"))
WHO_CH_07 <- doc_CH_07$content
WHO_CH_07 <- as.list(doc_CH_07$content)

doc_CH_08 <- Corpus(VectorSource(WHO_CH_08))
doc_CH_08 = tm_map(doc_CH_08, content_transformer(tolower))
doc_CH_08 = tm_map(doc_CH_08, removePunctuation)
doc_CH_08 = tm_map(doc_CH_08, removeWords, stopwords("english"))
WHO_CH_08 <- doc_CH_08$content
WHO_CH_08 <- as.list(doc_CH_08$content)

doc_CH_09 <- Corpus(VectorSource(WHO_CH_09))
doc_CH_09 = tm_map(doc_CH_09, content_transformer(tolower))
doc_CH_09 = tm_map(doc_CH_09, removePunctuation)
doc_CH_09 = tm_map(doc_CH_09, removeWords, stopwords("english"))
WHO_CH_09 <- doc_CH_09$content
WHO_CH_09 <- as.list(doc_CH_09$content)

doc_CH_10 <- Corpus(VectorSource(WHO_CH_10))
doc_CH_10 = tm_map(doc_CH_10, content_transformer(tolower))
doc_CH_10 = tm_map(doc_CH_10, removePunctuation)
doc_CH_10 = tm_map(doc_CH_10, removeWords, stopwords("english"))
WHO_CH_10 <- doc_CH_10$content
WHO_CH_10 <- as.list(doc_CH_10$content)

doc_CH_11 <- Corpus(VectorSource(WHO_CH_11))
doc_CH_11 = tm_map(doc_CH_11, content_transformer(tolower))
doc_CH_11 = tm_map(doc_CH_11, removePunctuation)
doc_CH_11 = tm_map(doc_CH_11, removeWords, stopwords("english"))
WHO_CH_11 <- doc_CH_11$content
WHO_CH_11 <- as.list(doc_CH_11$content)

doc_CH_12 <- Corpus(VectorSource(WHO_CH_12))
doc_CH_12 = tm_map(doc_CH_12, content_transformer(tolower))
doc_CH_12 = tm_map(doc_CH_12, removePunctuation)
doc_CH_12 = tm_map(doc_CH_12, removeWords, stopwords("english"))
WHO_CH_12 <- doc_CH_12$content
WHO_CH_12 <- as.list(doc_CH_12$content)

doc_CH_13 <- Corpus(VectorSource(WHO_CH_13))
doc_CH_13 = tm_map(doc_CH_13, content_transformer(tolower))
doc_CH_13 = tm_map(doc_CH_13, removePunctuation)
doc_CH_13 = tm_map(doc_CH_13, removeWords, stopwords("english"))
WHO_CH_13 <- doc_CH_13$content
WHO_CH_13 <- as.list(doc_CH_13$content)

doc_CH_14 <- Corpus(VectorSource(WHO_CH_14))
doc_CH_14 = tm_map(doc_CH_14, content_transformer(tolower))
doc_CH_14 = tm_map(doc_CH_14, removePunctuation)
doc_CH_14 = tm_map(doc_CH_14, removeWords, stopwords("english"))
WHO_CH_14 <- doc_CH_14$content
WHO_CH_14 <- as.list(doc_CH_14$content)

doc_CH_15 <- Corpus(VectorSource(WHO_CH_15))
doc_CH_15 = tm_map(doc_CH_15, content_transformer(tolower))
doc_CH_15 = tm_map(doc_CH_15, removePunctuation)
doc_CH_15 = tm_map(doc_CH_15, removeWords, stopwords("english"))
WHO_CH_15 <- doc_CH_15$content
WHO_CH_15 <- as.list(doc_CH_15$content)

doc_CH_16 <- Corpus(VectorSource(WHO_CH_16))
doc_CH_16 = tm_map(doc_CH_16, content_transformer(tolower))
doc_CH_16 = tm_map(doc_CH_16, removePunctuation)
doc_CH_16 = tm_map(doc_CH_16, removeWords, stopwords("english"))
WHO_CH_16 <- doc_CH_16$content
WHO_CH_16 <- as.list(doc_CH_16$content)

doc_CH_17 <- Corpus(VectorSource(WHO_CH_17))
doc_CH_17 = tm_map(doc_CH_17, content_transformer(tolower))
doc_CH_17 = tm_map(doc_CH_17, removePunctuation)
doc_CH_17 = tm_map(doc_CH_17, removeWords, stopwords("english"))
WHO_CH_17 <- doc_CH_17$content
WHO_CH_17 <- as.list(doc_CH_17$content)

doc_CH_18 <- Corpus(VectorSource(WHO_CH_18))
doc_CH_18 = tm_map(doc_CH_18, content_transformer(tolower))
doc_CH_18 = tm_map(doc_CH_18, removePunctuation)
doc_CH_18 = tm_map(doc_CH_18, removeWords, stopwords("english"))
WHO_CH_18 <- doc_CH_18$content
WHO_CH_18 <- as.list(doc_CH_18$content)

doc_CH_19 <- Corpus(VectorSource(WHO_CH_19))
doc_CH_19 = tm_map(doc_CH_19, content_transformer(tolower))
doc_CH_19 = tm_map(doc_CH_19, removePunctuation)
doc_CH_19 = tm_map(doc_CH_19, removeWords, stopwords("english"))
WHO_CH_19 <- doc_CH_19$content
WHO_CH_19 <- as.list(doc_CH_19$content)

doc_CH_20 <- Corpus(VectorSource(WHO_CH_20))
doc_CH_20 = tm_map(doc_CH_20, content_transformer(tolower))
doc_CH_20 = tm_map(doc_CH_20, removePunctuation)
doc_CH_20 = tm_map(doc_CH_20, removeWords, stopwords("english"))
WHO_CH_20 <- doc_CH_20$content
WHO_CH_20 <- as.list(doc_CH_20$content)

doc_CH_21 <- Corpus(VectorSource(WHO_CH_21))
doc_CH_21 = tm_map(doc_CH_21, content_transformer(tolower))
doc_CH_21 = tm_map(doc_CH_21, removePunctuation)
doc_CH_21 = tm_map(doc_CH_21, removeWords, stopwords("english"))
WHO_CH_21 <- doc_CH_21$content
WHO_CH_21 <- as.list(doc_CH_21$content)

doc_CH_22 <- Corpus(VectorSource(WHO_CH_22))
doc_CH_22 = tm_map(doc_CH_22, content_transformer(tolower))
doc_CH_22 = tm_map(doc_CH_22, removePunctuation)
doc_CH_22 = tm_map(doc_CH_22, removeWords, stopwords("english"))
WHO_CH_22 <- doc_CH_22$content
WHO_CH_22 <- as.list(doc_CH_22$content)

doc_CH_23 <- Corpus(VectorSource(WHO_CH_23))
doc_CH_23 = tm_map(doc_CH_23, content_transformer(tolower))
doc_CH_23 = tm_map(doc_CH_23, removePunctuation)
doc_CH_23 = tm_map(doc_CH_23, removeWords, stopwords("english"))
WHO_CH_23 <- doc_CH_23$content
WHO_CH_23 <- as.list(doc_CH_23$content)

doc_CH_24 <- Corpus(VectorSource(WHO_CH_24))
doc_CH_24 = tm_map(doc_CH_24, content_transformer(tolower))
doc_CH_24 = tm_map(doc_CH_24, removePunctuation)
doc_CH_24 = tm_map(doc_CH_24, removeWords, stopwords("english"))
WHO_CH_24 <- doc_CH_24$content
WHO_CH_24 <- as.list(doc_CH_24$content)

doc_CH_25 <- Corpus(VectorSource(WHO_CH_25))
doc_CH_25 = tm_map(doc_CH_25, content_transformer(tolower))
doc_CH_25 = tm_map(doc_CH_25, removePunctuation)
doc_CH_25 = tm_map(doc_CH_25, removeWords, stopwords("english"))
WHO_CH_25 <- doc_CH_25$content
WHO_CH_25 <- as.list(doc_CH_25$content)

doc_CH_26 <- Corpus(VectorSource(WHO_CH_26))
doc_CH_26 = tm_map(doc_CH_26, content_transformer(tolower))
doc_CH_26 = tm_map(doc_CH_26, removePunctuation)
doc_CH_26 = tm_map(doc_CH_26, removeWords, stopwords("english"))
WHO_CH_26 <- doc_CH_26$content
WHO_CH_26 <- as.list(doc_CH_26$content)

#doc_SUPP <- Corpus(VectorSource(WHO_SUPP))
#doc_SUPP = tm_map(doc_SUPP, content_transformer(tolower))
#doc_SUPP = tm_map(doc_SUPP, removePunctuation)
#doc_SUPP = tm_map(doc_SUPP, removeWords, stopwords("english"))
#WHO_SUPP <- doc_SUPP$content
#WHO_SUPP <- as.list(doc_SUPP$content)
#
#doc_EXT <- Corpus(VectorSource(WHO_EXT))
#doc_EXT = tm_map(doc_EXT, content_transformer(tolower))
#doc_EXT = tm_map(doc_EXT, removePunctuation)
#doc_EXT = tm_map(doc_EXT, removeWords, stopwords("english"))
#WHO_EXT <- doc_EXT$content
#WHO_EXT <- as.list(doc_EXT$content)


df_WHO_00 <- as.data.frame(do.call(rbind, WHO_CH_00))
df_WHO_01 <- as.data.frame(do.call(rbind, WHO_CH_01))
df_WHO_02 <- as.data.frame(do.call(rbind, WHO_CH_02))
df_WHO_03 <- as.data.frame(do.call(rbind, WHO_CH_03))
df_WHO_04 <- as.data.frame(do.call(rbind, WHO_CH_04))
df_WHO_05 <- as.data.frame(do.call(rbind, WHO_CH_05))
df_WHO_06 <- as.data.frame(do.call(rbind, WHO_CH_06))
df_WHO_07 <- as.data.frame(do.call(rbind, WHO_CH_07))
df_WHO_08 <- as.data.frame(do.call(rbind, WHO_CH_08))
df_WHO_09 <- as.data.frame(do.call(rbind, WHO_CH_09))
df_WHO_10 <- as.data.frame(do.call(rbind, WHO_CH_10))
df_WHO_11 <- as.data.frame(do.call(rbind, WHO_CH_11))
df_WHO_12 <- as.data.frame(do.call(rbind, WHO_CH_12))
df_WHO_13 <- as.data.frame(do.call(rbind, WHO_CH_13))
df_WHO_14 <- as.data.frame(do.call(rbind, WHO_CH_14))
df_WHO_15 <- as.data.frame(do.call(rbind, WHO_CH_15))
df_WHO_16 <- as.data.frame(do.call(rbind, WHO_CH_16))
df_WHO_17 <- as.data.frame(do.call(rbind, WHO_CH_17))
df_WHO_18 <- as.data.frame(do.call(rbind, WHO_CH_18))
df_WHO_19 <- as.data.frame(do.call(rbind, WHO_CH_19))
df_WHO_20 <- as.data.frame(do.call(rbind, WHO_CH_20))
df_WHO_21 <- as.data.frame(do.call(rbind, WHO_CH_21))
df_WHO_22 <- as.data.frame(do.call(rbind, WHO_CH_22))
df_WHO_23 <- as.data.frame(do.call(rbind, WHO_CH_23))
df_WHO_24 <- as.data.frame(do.call(rbind, WHO_CH_24))
df_WHO_25 <- as.data.frame(do.call(rbind, WHO_CH_25))
df_WHO_26 <- as.data.frame(do.call(rbind, WHO_CH_26))
#df_WHO_SUPP <- as.data.frame(do.call(rbind, WHO_SUPP))
#df_WHO_EXT <- as.data.frame(do.call(rbind, WHO_EXT))
#df_WHO_ICD <- as.data.frame(do.call(rbind, WHO_ICD))

df_WHO_00$Chapter = c("CH_00: List of top level categories")
df_WHO_01$Chapter = c("CH_01: Certain infectious or parasitic diseases")
df_WHO_02$Chapter = c("CH_02: Neoplasms")
df_WHO_03$Chapter = c("CH_03: Diseases of the blood or blood-forming organs")
df_WHO_04$Chapter = c("CH_04: Diseases of the immune system")
df_WHO_05$Chapter = c("CH_05: Endocrine, nutritional or metabolic diseases")
df_WHO_06$Chapter = c("CH_06: Mental, behavioural or neurodevelopmental disorders")
df_WHO_07$Chapter = c("CH_07: Sleep-wake disorders")
df_WHO_08$Chapter = c("CH_08: Diseases of the nervous system")
df_WHO_09$Chapter = c("CH_09: Diseases of the visual system")
df_WHO_10$Chapter = c("CH_10: Diseases of the ear or mastoid process")
df_WHO_11$Chapter = c("CH_11: Diseases of the circulatory system")
df_WHO_12$Chapter = c("CH_12: Diseases of the respiratory system")
df_WHO_13$Chapter = c("CH_13: Diseases of the digestive system")
df_WHO_14$Chapter = c("CH_14: Diseases of the skin")
df_WHO_15$Chapter = c("CH_15: Diseases of the musculoskeletal system or connective tissue")
df_WHO_16$Chapter = c("CH_16: Diseases of the genitourinary system")
df_WHO_17$Chapter = c("CH_17: Conditions related to sexual health")
df_WHO_18$Chapter = c("CH_18: Pregnancy, childbirth or the puerperium")
df_WHO_19$Chapter = c("CH_19: Certain conditions originating in the perinatal period")
df_WHO_20$Chapter = c("CH_20: Developmental anomalies")
df_WHO_21$Chapter = c("CH_21: Symptoms, signs or clinical findings, not elsewhere classified")
df_WHO_22$Chapter = c("CH_22: Injury, poisoning or certain other consequences of external causes")
df_WHO_23$Chapter = c("CH_23: External causes of morbidity or mortality")
df_WHO_24$Chapter = c("CH_24: Factors influencing health status or contact with health services")
df_WHO_25$Chapter = c("CH_25: Codes for special purposes")
df_WHO_26$Chapter = c("CH_26: Supplementary Chapter Traditional Medicine Conditions - Module I")
#df_WHO_SUPP$Chapter = c("CH_SUPP: Supplementary section for functioning assessment")
#df_WHO_EXT$Chapter = c("CH_EXT: Extension Codes")
#df_WHO_ICD$Chapter = c("CH_ICD: Certain infectious or parasitic diseases")

df_WHO <- rbind(df_WHO_00, df_WHO_01)
df_WHO <- rbind(df_WHO, df_WHO_02)
df_WHO <- rbind(df_WHO, df_WHO_03)
df_WHO <- rbind(df_WHO, df_WHO_04)
df_WHO <- rbind(df_WHO, df_WHO_05)
df_WHO <- rbind(df_WHO, df_WHO_06)
df_WHO <- rbind(df_WHO, df_WHO_07)
df_WHO <- rbind(df_WHO, df_WHO_08)
df_WHO <- rbind(df_WHO, df_WHO_09)
df_WHO <- rbind(df_WHO, df_WHO_10)
df_WHO <- rbind(df_WHO, df_WHO_11)
df_WHO <- rbind(df_WHO, df_WHO_12)
df_WHO <- rbind(df_WHO, df_WHO_13)
df_WHO <- rbind(df_WHO, df_WHO_14)
df_WHO <- rbind(df_WHO, df_WHO_15)
df_WHO <- rbind(df_WHO, df_WHO_16)
df_WHO <- rbind(df_WHO, df_WHO_17)
df_WHO <- rbind(df_WHO, df_WHO_18)
df_WHO <- rbind(df_WHO, df_WHO_19)
df_WHO <- rbind(df_WHO, df_WHO_20)
df_WHO <- rbind(df_WHO, df_WHO_21)
df_WHO <- rbind(df_WHO, df_WHO_22)
df_WHO <- rbind(df_WHO, df_WHO_23)
df_WHO <- rbind(df_WHO, df_WHO_24)
df_WHO <- rbind(df_WHO, df_WHO_25)
df_WHO <- rbind(df_WHO, df_WHO_26)
#df_WHO <- rbind(df_WHO, df_WHO_SUPP)
#df_WHO <- rbind(df_WHO, df_WHO_EXT)

colnames(df_WHO) <- c("text","chapter")

WHO_words <- df_WHO %>%
  unnest_tokens(word, text) %>%
  count(chapter, word, sort = TRUE)

total_words <- WHO_words %>% group_by(chapter) %>% summarize(total = sum(n))

WHO_words <- left_join(WHO_words, total_words)
WHO_words
  
WHO_words <- WHO_words %>%
  bind_tf_idf(word, chapter, n)
WHO_words


Q1 <- tolower(c('Is','this','PHONE','NUMBER')) 
Q2 <- tolower(c('Is','this','a','private','residence'))
Q3 <- tolower(c('Do','you','live','in','college','housing'))
Q4 <- tolower(c('Do','you','currently','live','in','state'))
Q5 <- tolower(c('Is','this','a','cell','phone'))
Q6 <- tolower(c('Are','you','18','years','of','age','or','older'))
Q7 <- tolower(c('Are','you','male','or','female'))
Q8 <- tolower(c('I','need','to','randomly','select','one','adult','who','lives','in','your','household','to','be','interviewed','Excluding','adults','living','away','from','home','such','as','students','away','at','college','how','many','members','of','your','household','including','yourself','are','18','years','of','age','or','older'))
Q9 <- tolower(c('Are','you','male','or','female'))
Q10 <- tolower(c('How','many','of','these','adults','are','men'))
Q11 <- tolower(c('So','the','number','of','women','in','the','household','is','X','Is','that','correct'))
Q12 <- tolower(c('The','person','in','your','household','that','I','need','to','speak','with','is','Oldest','Youngest','Middle','Male','Female','Are','you','the','Oldest','Youngest','Middle','Male','Female','in','this',' household'))
Q13 <- tolower(c('Is','this','a','safe','time','to','talk','with','you'))
Q14 <- tolower(c('Is','this','PHONE','NUMBER'))
Q15 <- tolower(c('Is','this','a','cell','phone'))
Q16 <- tolower(c('Are','you','18','years','of','age','or','older'))
Q17 <- tolower(c('Are','you','male','or','female'))
Q18 <- tolower(c('Do','you','live','in','a','private','residence'))
Q19 <- tolower(c('Do','you','live','in','college','housing'))
Q20 <- tolower(c('Do','you','currently','live','in','state'))
Q21 <- tolower(c('In','what','state','do','you','currently','live'))
Q22 <- tolower(c('Do','you','also','have','a','landline','telephone','in','your','home','that','is','used','to','make','and','receive','calls'))
Q23 <- tolower(c('How','many','members','of','your','household','including','yourself','are','18','years','of','age','or','older'))
Q24 <- tolower(c('Would','you','say','that','in','general','your','health','is'))
Q25 <- tolower(c('Now','thinking','about','your','physical','health','which','includes','physical','illness','and','injury','for','how','many','days','during','the','past','30','days','was','your','physical','health','not','good'))
Q26 <- tolower(c('Now','thinking','about','your','mental','health','which','includes','stress','depression','and','problems','with','emotions','for','how','many','days','during','the','past','30','days','was','your','mental',' health','not','good'))
Q27 <- tolower(c('During','the','past','30','days','for','about','how','many','days','did','poor','physical','or','mental','health','keep','you','from','doing','your','usual','activities','such','as','self-care','work','or',' recreation'))
Q28 <- tolower(c('Do','you','have','any','kind','of','health','care','coverage','including','health','insurance','prepaid','plans','such','as','HMOs','or','government','plans','such','as','Medicare','or','Indian','Health',' Service'))
Q29 <- tolower(c('Do','you','have','one','person','you','think','of','as','your','personal','doctor','or','health','care','provider'))
Q30 <- tolower(c('Was','there','a','time','in','the','past','12','months','when','you','needed','to','see','a','doctor','but','could','not','because','of','cost'))
Q31 <- tolower(c('About','how','long','has','it','been','since','you','last','visited','a','doctor','for','a','routine','checkup'))
Q32 <- tolower(c('Have','you','ever','been','told','by','a','doctor','nurse','or','other','health','professional','that','you','have','high','blood','pressure'))
Q33 <- tolower(c('Are','you','currently','taking','prescription','medicine','for','your','high','blood','pressure'))
Q34 <- tolower(c('Blood','cholesterol','is','a','fatty','substance','found','in','the','blood','About','how','long','has','it','been','since','you','last','had','your','blood','cholesterol','checked'))
Q35 <- tolower(c('Have','you','ever','been','told','by','a','doctor','nurse','or','other','health','professional','that','your','blood','cholesterol','is','high'))
Q36 <- tolower(c('Are','you','currently','taking','medicine','prescribed','by','your','doctor','or','other','health','professional','for','your','blood','cholesterol'))
Q37 <- tolower(c('Has','a','doctor','nurse','or','other','health','professional','ever','told','you','that','you','had','any','of','the','following','For','each','tell','me','Yes','No','Or','You re','Not','Sure','Ever','told',' you','that','you','had','a','heart','attack','also','called','a','myocardial','infarction'))
Q38 <- tolower(c('Ever','told','you','had','angina','or','coronary','heart','disease'))
Q39 <- tolower(c('Ever','told','you','had','a','stroke'))
Q40 <- tolower(c('Ever','told','you','had','asthma'))
Q41 <- tolower(c('Do','you','still','have','asthma'))
Q42 <- tolower(c('Ever','told','you','had','skin','cancer'))
Q43 <- tolower(c('Ever','told','you','had','any','other','types','of','cancer'))
Q44 <- tolower(c('Ever','told','you','had','chronic','obstructive','pulmonary','disease','COPD','emphysema','or','chronic','bronchitis?'))
Q45 <- tolower(c('Ever','told','you','had','a','depressive','disorder','including','depression','major','depression','dysthymia','or','minor','depression'))
Q46 <- tolower(c('Not','including','kidney','stones','bladder','infection','or','incontinence','were','you','ever','told','you','have','kidney','disease'))
Q47 <- tolower(c('Ever','told','you','had','diabetes'))
Q48 <- tolower(c('How','old','were','you','when','you','were','told','you','had','diabetes'))
Q49 <- tolower(c('Ever','told','you','had','some','form','of','arthritis,','rheumatoid','arthritis','gout','lupus','or','fibromyalgia'))
Q50 <- tolower(c('Has','a','doctor','or','other','health','professional','ever','suggested','physical','activity','or','exercise','to','help','your','arthritis','or','joint','symptoms'))
Q51 <- tolower(c('Have','you','ever','taken','an','educational','course','or','class','to','teach','you','how','to','manage','problems','related','to','your','arthritis','or','joint','symptoms'))
Q52 <- tolower(c('Are','you','now','limited','in','any','way','in','any','of','your','usual','activities','because','of','arthritis','or','joint','symptoms'))
Q53 <- tolower(c('In','the','next','question','we','are','referring','to','work','for','pay','do','arthritis','or','joint','symptoms','now','affect','whether','you','work','the','type','of','work','you','do','or','the','amount','of','work','you','do'))
Q54 <- tolower(c('Please','think','about','the','past','30','days','keeping','in','mind','all','of','your','joint','pain','or','aching','and','whether','or','not','you','have','taken','medication','During','the','past','30','days','how','bad','was','your','joint','pain','on','average','on','a','scale','of','0','to','10','where','0','is','no','pain','and','10','is','pain','or','aching','as','bad','as','it','can','be'))
Q55 <- tolower(c('What','is','your','age'))
Q56 <- tolower(c('Are','you','Hispanic','Latino','a','or','Spanish','origin'))
Q57 <- tolower(c('Which','one','or','more','of','the','following','would','you','say','is','your','race'))
Q58 <- tolower(c('Which','one','of','these','groups','would','you','say','best','represents','your','race'))
Q59 <- tolower(c('Are','you','Married','Divorced','Widowed','Separated','Never','married','Or','A','member','of','an','unmarried','couple'))
Q60 <- tolower(c('What','is','the','highest','grade','or','year','of','school','you','completed'))
Q61 <- tolower(c('Do','you','own','or','rent','your','home'))
Q62 <- tolower(c('In','what','county','do','you','currently','live'))
Q63 <- tolower(c('What','is','the','ZIP','Code','where','you','currently','live'))
Q64 <- tolower(c('Not','including','cell','phones','or','numbers','used','for','computers','fax','machines','or','security','systems','do','you','have','more','than','one','telephone','number','in','your','household'))
Q65 <- tolower(c('How','many','of','these','telephone','numbers','are','residential','numbers'))
Q66 <- tolower(c('How','many','cell','phones','do','you','have','for','personal','use'))
Q67 <- tolower(c('Have','you','ever','served','on','active','duty','in','the','United','States','Armed','Forces','either','in','the','regular','military','or','in','a','National','Guard','or','military','reserve','unit'))
Q68 <- tolower(c('Are','you','currently','Employed','for','wages','Self','employed','Out','of','work','for','year','or','more','Out','of','work','for','less','than','year','Homemaker','A','Student'))
Q69 <- tolower(c('How','many','children','less','than','18','years','of','age','live','in','your','household'))
Q70 <- tolower(c('Is','your','annual','household','income','from','all','sources'))
Q71 <- tolower(c('About','how','much','do','you','weigh','without','shoes'))
Q72 <- tolower(c('About','how','tall','are','you','without','shoes'))
Q73 <- tolower(c('To','your','knowledge','are','you','now','pregnant'))
Q74 <- tolower(c('Some','people','who','are','deaf','or','have','serious','difficulty','hearing','use','assistive','devices','to','communicate','by','phone','Are','you','deaf','or','do','you','have','serious','difficulty',' hearing'))
Q75 <- tolower(c('Are','you','blind','or','do','you','have','serious','difficulty','seeing','even','when','wearing','glasses'))
Q76 <- tolower(c('Because', 'of', 'a', 'physical', 'mental', 'or', 'emotional', 'condition', 'do', 'you', 'have', 'difficulty', 'doing', 'errands', 'alone', 'such', 'as', 'visiting', 'a', 'doctor', 'office', 'or', 'shopping'))
Q77 <- tolower(c('Do','you','have','serious','difficulty','walking','or','climbing','stairs'))
Q78 <- tolower(c('Do','you','have','difficulty','dressing','or','bathing'))
Q79 <- tolower(c('Because','of','a','physical','mental','or','emotional','condition','do','you','have','difficulty','doing','errands','alone','such','as','visiting','a','doctor','s','office','or','shopping'))
Q80 <- tolower(c('Have','you','smoked','at','least','100','cigarettes','in','your','entire','life'))
Q81 <- tolower(c('Do','you','now','smoke','cigarettes','every','day','some','days','or','not','at','all'))
Q82 <- tolower(c('During','the','past','12','months','have','you','stopped','smoking','for','one','day','or','longer','because','you','were','trying','to','quit','smoking'))
Q83 <- tolower(c('How','long','has','it','been','since','you','last','smoked','a','cigarette','even','one','or','two','puffs'))
Q84 <- tolower(c('Do','you','currently','use','chewing','tobacco','snuff','or','snus','every','day','some','days','or','not','at','all'))
Q85 <- tolower(c('During','the','past','30','days','how','many','days','per','week','or','per','month','did','you','have','at','least','one','drink','of','any','alcoholic','beverage','such','as','beer','wine','a','malt','beverage','or','liquor'))
Q86 <- tolower(c('One','drink','is','equivalent','to','a','12','ounce','beer','a','5','ounce','glass','of','wine','or','a','drink','with','one','shot','of','liquor','During','the','past','30','days','on','the','days','when','you','drank','about','how','many','drinks','did','you','drink','on','the','average'))
Q87 <- tolower(c('Considering','all','types','of','alcoholic','beverages','how','many','times','during','the','past','30','days','did','you','have','X','CATI','X','5','for','men','X','4','for','women','or','more','drinks','on','an','occasion'))
Q88 <- tolower(c('During','the','past','30','days','what','is','the','largest','number','of','drinks','you','had','on','any','occasion'))
Q89 <- tolower(c('During','the','past','month','other','than','your','regular','job','did','you','participate','in','any','physical','activities','or','exercises','such','as','running','calisthenics','golf','gardening','or',' walking','for','exercise'))
Q90 <- tolower(c('What','type','of','physical','activity','or','exercise','did','you','spend','the','most','time','doing','during','the','past','month'))
Q91 <- tolower(c('How','many','times','per','week','or','per','month','did','you','take','part','in','this','activity','during','the','past','month'))
Q92 <- tolower(c('And','when','you','took','part','in','this','activity','for','how','many','minutes','or','hours','did','you','usually','keep','at','it'))
Q93 <- tolower(c('What','other','type','of','physical','activity','gave','you','the','next','most','exercise','during','the','past','month'))
Q94 <- tolower(c('How','many','times','per','week','or','per','month','did','you','take','part','in','this','activity','during','the','past','month'))
Q95 <- tolower(c('And','when','you','took','part','in','this','activity','for','how','many','minutes','or','hours','did','you','usually','keep','at','it'))
Q96 <- tolower(c('During','the','past','month','how','many','times','per','week','or','per','month','did','you','do','physical','activities','or','exercises','to','strengthen','your','muscles'))
Q97 <- tolower(c('Now','think','about','the','foods','you','ate','or','drank','during','the','past','month','that','is','the','past','30','days','including','meals','and','snacks','Not','including','juices','how','often','did',' you','eat','fruit','You','can','tell','me','times','per','day','times','per','week','or','times','per','month'))
Q98 <- tolower(c('Not','including','fruit','flavored','drinks','or','fruit','juices','with','added','sugar','how','often','did','you','drink','100%','fruit','juice','such','as','apple','or','orange','juice'))
Q99 <- tolower(c('How','often','did','you','eat','a','green','leafy','or','lettuce','salad','with','or','without','other','vegetables'))
Q100 <- tolower(c('How','often','did','you','eat','any','kind','of','fried','potatoes','including','French','fries','home','fries','or','hash','browns'))
Q101 <- tolower(c('How','often','did','you','eat any other kind of potatoes, or sweet potatoes, such as baked, boiled, mashed potatoes, or potato salad?')) 
Q102 <- tolower(c('Not','including','lettuce','salads','and','potatoes','how','often','did','you','eat','other','vegetables'))
Q103 <- tolower(c('During','the','past','12','months','have','you','had','either','a','flu','vaccine','that','was','sprayed','in','your','nose','or','a','flu','shot','injected','into','your','arm'))
Q104 <- tolower(c('During','what','month','and','year','did','you','receive','your','most','recent','flu','vaccine','that','was','sprayed','in','your','nose','or','flu','shot','injected','into','your','arm'))
Q105 <- tolower(c('Have','you','received','a','tetanus','shot','in','the','past','10','years'))
Q106 <- tolower(c('Have','you','ever','had','a','pneumonia','shot','also','known','as','a','pneumococcal','vaccine'))
Q107 <- tolower(c('Including','fluid','testing','from','your','mouth','but','not','including','tests','you','may','have','had','for','blood','donation','have','you','ever','been','tested','for','HIV'))
Q108 <- tolower(c('Not','including','blood','donations','in','what','month','and','year','was','your','last','HIV','test'))
Q109 <- tolower(c('You','have','injected','any','drug','other','than','those','prescribed','for','you','in','the','past','year','You','have','been','treated','for','a','sexually','transmitted','disease','or','STD','in','the','past','year','You','have','given','or','received','money','or','drugs','in','exchange','for','sex','in','the','past','year','You','had','anal','sex','without','a','condom','in','the','past','year','You','had','four','or','more','sex','partners','in','the','past','year','Do','any','of','these','situations','apply','to','you','Do','any','of','these','situations','apply','to','you'))
Q110 <- tolower(c('Have','you','had','a','test','for','high','blood','sugar','or','diabetes','within','the','past','three','years'))
Q111 <- tolower(c('Have','you','ever','been','told','by','a','doctor','or','other','health','professional','that','you','have','prediabetes','or','borderline','diabetes'))
Q112 <- tolower(c('Are','you','now','taking','insulin'))
Q113 <- tolower(c('About','how','often','do','you','check','your','blood','for','glucose','or','sugar'))
Q114 <- tolower(c('Including','times','when','checked','by','a','family','member','or','friend','about','how','often','do','you','check','your','feet','for','any','sores','or','irritations'))
Q115 <- tolower(c('About','how','many','times','in','the','past','12','months','have','you','seen','a','doctor','nurse','or','other','health','professional','for','your','diabetes'))
Q116 <- tolower(c('About','how','many','times','in','the','past','12','months','has','a','doctor','nurse','or','other','health','professional','checked','you','for','A','one','C'))
Q117 <- tolower(c('About','how','many','times','in','the','past','12','months','has','a','health','professional','checked','your','feet','for','any','sores','or','irritations'))
Q118 <- tolower(c('When','was','the','last','time','you','had','an','eye','exam','in','which','the','pupils','were','dilated','making','you','temporarily','sensitive','to','bright','light'))
Q119 <- tolower(c('Has','a','doctor','ever','told','you','that','diabetes','has','affected','your','eyes','or','that','you','had','retinopathy'))
Q120 <- tolower(c('Have','you','ever','taken','a','course','or','class','in','how','to','manage','your','diabetes','yourself'))
Q121 <- tolower(c('Have','you','ever','been','told','by','a','doctor','or','other','health','professional','that','you','had','Chronic','Fatigue','Syndrome','CFS','or','Myalgic','Encephalomyelitis','ME'))
Q122 <- tolower(c('Do','you','still','have','Chronic','Fatigue','Syndrome','CFS','or','Myalgic','Encephalomyelitis','ME'))
Q123 <- tolower(c('Thinking','about','your','CFS','or','ME','during','the','past','6','months','how','many','hours','a','week','on','average','have','you','been','able','to','work','at','a','job','or','business','for','pay'))
Q124 <- tolower(c('Have','you','ever','been','told','by','a','doctor','or','other','health','professional','that','you','had','Hepatitis','C'))
Q125 <- tolower(c('Were','you','treated','for','Hepatitis','C','in','2015','or','after'))
Q126 <- tolower(c('Were','you','treated','for','Hepatitis','C','prior','to','2015'))
Q127 <- tolower(c('Do','you','still','have','Hepatitis','C'))
Q128 <- tolower(c('The','next','question','is','about','Hepatitis','B','Has','a','doctor','nurse','or','other','health','professional','ever','told','you','that','you','had','hepatitis','B'))
Q129 <- tolower(c('Are','you','currently','taking','medicine','to','treat','hepatitis','B'))
Q130 <- tolower(c('Have','you','ever','had','the','Human','Papilloma','virus','vaccination','or','HPV','vaccination'))
Q131 <- tolower(c('How','many','HPV','shots','did','you','receive'))
Q132 <- tolower(c('At','what','kind','of','place','did','you','get','your','last','flu','shot','or','vaccine'))
Q133 <- tolower(c('Have','you','ever','had','the','shingles','or','zoster','vaccine'))
Q134 <- tolower(c('You','have','told','us','that','you','have','smoked','in','the','past','or','are','currently','smoking','The','next','questions','are','about','screening','for','lung','cancer','How','old','were','you','when','you','first','started','to','smoke','cigarettes','regularly'))
Q135 <- tolower(c('How','old','were','you','when','you','last','smoked','cigarettes','regularly'))
Q136 <- tolower(c('On','average','when','you','smoke','smoked','regularly','about','how','many','cigarettes','do','did','you','usually','smoke','each','day'))
Q137 <- tolower(c('The','next','question','is','about','CT','or','CAT','scans','During','this','test','you','lie','flat','on','your','back','on','a','table','While','you','hold',' your','breath','the','table','moves','through','a','donut','shaped','x-ray','machine','while','the','scan','is','done','In','the','last','12','months','did','you','have','a','CT','or','CAT','scan'))
Q138 <- tolower(c('Have','you','ever','had','a','mammogram'))
Q139 <- tolower(c('How','long','has','it','been','since','you','had','your','last','mammogram'))
Q140 <- tolower(c('Have','you','ever','had','a','Pap','test'))
Q141 <- tolower(c('How','long','has','it','been','since','you','had','your','last','Pap','test'))
Q142 <- tolower(c('An','HPV','test','is','sometimes','given','with','the','Pap','test','for','cervical','cancer','screening','Have','you','ever','had','an','HPV','test'))
Q143 <- tolower(c('How','long','has','it','been','since','you','had','your','last','HPV','test'))
Q144 <- tolower(c('Have','you','had','a','hysterectomy'))
Q145 <- tolower(c('Has','a','doctor','nurse','or','other','health','professional','ever','talked','with','you','about','the','advantages','of','the','Prostate','Specific','Antigen','or','PSA','test'))
Q146 <- tolower(c('Has','a','doctor','nurse','or','other','health','professional','ever','talked','with','you','about','the','disadvantages','of','the','PSA','test'))
Q147 <- tolower(c('Has','a','doctor','nurse','or','other','health','professional','ever','recommended','that','you','have','a','PSA','test'))
Q148 <- tolower(c('Have','you','ever','had','a','PSA','test'))
Q149 <- tolower(c('How','long','has','it','been','since','you','had','your','last','PSA','test'))
Q150 <- tolower(c('What','was','the','main','reason','you','had','this','PSA','test','was','it'))
Q151 <- tolower(c('Which','one','of','the','following','best','describes','the','decision','to','have','the','PSA','test','done'))
Q152 <- tolower(c('Who made the decision with you?'))
Q153 <- tolower(c('A','blood','stool','test','is','a','test','that','may','use','a','special','kit','at','home','to','determine','whether','the','stool','contains','blood','Have','you','ever','had','this','test','using','a','home','kit'))
Q154 <- tolower(c('How','long','has','it','been','since','you','had','your','last','blood','stool','test','using','a','home','kit'))
Q155 <- tolower(c('Sigmoidoscopy','and','colonoscopy','are','exams','in','which','a','tube','is','inserted','in','the','rectum','to','view','the','colon','for','signs','of','cancer','or','other','health','problems','Have','you','ever','had','either','of','these','exams'))
Q156 <- tolower(c('For','a','sigmoidoscopy','a','flexible','tube','is','inserted','into','the','rectum','to','look','for','problems','A','colonoscopy','is','similar','but','uses','a','longer','tube','and','you','are','usually','given','medication','through','a','needle','in','your','arm','to','make','you','sleepy','and','told','to','have','someone','else','drive','you','home','after','the','test','Was','your','most','recent','exam','a','sigmoidoscopy','or','a','colonoscopy'))
Q157 <- tolower(c('How','long','has','it','been','since','you','had','your','last','sigmoidoscopy','or','colonoscopy'))
Q158 <- tolower(c('You','have','told us that you have had cancer. I would like to ask you a few more questions about your cancer. How many different types of cancer have you had?'))
Q159 <- tolower(c('At','what','age','were','you','told','that','you','had','cancer'))
Q160 <- tolower(c('What','type','of','cancer','was','it'))
Q161 <- tolower(c('Are','you','currently','receiving','treatment','for','cancer'))
Q162 <- tolower(c('What','type','of','doctor','provides','the','majority','of','your','health','care','Is','it','a','Cancer','Surgeon','Family','Practitioner','General','Surgeon','Gynecologic','Oncologist','General','Practitioner','Internist','Plastic','Surgeon','Reconstructive','Surgeon','Medical','Oncologist','Radiation','Oncologist','Urologist','Other'))
Q163 <- tolower(c('Did','any','doctor','nurse','or','other','health','professional','ever','give','you','a','written','summary','of','all','the','cancer','treatments','that','you','received'))
Q164 <- tolower(c('Have','you','ever','received','instructions','from','a','doctor','nurse','or','other','health','professional','about','where','you','should','return','or','who','you','should','see','for','routine','cancer',' check','ups','after','completing','your','treatment','for','cancer'))
Q165 <- tolower(c('Were','these','instructions','written','down','or','printed','on','paper','for','you'))
Q166 <- tolower(c('With','your','most','recent','diagnosis','of','cancer','did','you','have','health','insurance','that','paid','for','all','or','part','of','your','cancer','treatment'))
Q167 <- tolower(c('Were','you','ever','denied','health','insurance','or','life','insurance','coverage','because','of','your','cancer'))
Q168 <- tolower(c('Did','you','participate','in','a','clinical','trial','as','part','of','your','cancer','treatment'))
Q169 <- tolower(c('Do','you','currently','have','physical','pain','caused','by','your','cancer','or','cancer','treatment'))
Q170 <- tolower(c('Would','you','say','your','pain','is','currently','under','control'))
Q171 <- tolower(c('What','is','the','primary','source','of','your','health','care','coverage'))
Q172 <- tolower(c('How','often','do','you','take','an','aspirin','to','prevent','or','control','heart','disease','heart','attacks','or','stroke','Would','you','say','Daily','Some','days','Used','to','take','it','but','had','to','stop','due','to','side','effects','or','Do','not','take','it'))
Q173 <- tolower(c('Has','your','doctor','nurse','or','other','health','professional','recommended','you','check','your','blood','pressure','outside','of','the','office','or','at','home'))
Q174 <- tolower(c('Do','you','regularly','check','your','blood','pressure','outside','of','your','healthcare','professional','office','or','at','home'))
Q175 <- tolower(c('Do','you','take','it','mostly','at','home','or','on','a','machine','at','a','pharmacy','grocery','or','similar','location'))
Q176 <- tolower(c('How','do','you','share','your','blood','pressure','numbers','that','you','collected','with','your','health','professional','Is','it','mostly','by','telephone','other','methods','such','as','emails','internet','portal','or','fax','or','in','person'))
Q177 <- tolower(c('Are','you','currently','watching','or','reducing','your','sodium','or','salt','intake'))
Q178 <- tolower(c('Has','a','doctor','or','other','health','professional','ever','advised','you','to','reduce','sodium','or','salt','intake'))
Q179 <- tolower(c('Not','including','spray','on','tans','during','the','past','12','months','how','many','times','have','you','used','an','indoor','tanning','device','such','as','a','sunlamp','tanning','bed','or','booth'))
Q180 <- tolower(c('During','the','past','12','months','how','many','times','have','you','had','a','sunburn'))
Q181 <- tolower(c('When','you','go','outside','on','a','warm','sunny','day','for','more','than','one','hour','how','often','do','you','protect','yourself','from','the','sun','Is','that','Always','Most','of','the','time',' Sometimes','Rarely','Never'))
Q182 <- tolower(c('On','weekdays','in','the','summer','how','long','are','you','outside','per','day','between','10am','and','4pm'))
Q183 <- tolower(c('During','the','past','12','months','have','you','experienced','confusion','or','memory','loss','that','is','happening','more','often','or','is','getting','worse'))
Q184 <- tolower(c('During','the','past','12','months','as','a','result','of','confusion','or','memory','loss','how','often','have','you','given','up','day','to','day','household','activities','or','chores','you','used','to','do','such','as','cooking','cleaning','taking','medications','driving','or','paying','bills','Would','you','say','it','is','Always','Usually','Sometimes','Rarely','Never'))
Q185 <- tolower(c('As','a','result','of','confusion','or','memory','loss','how','often','do','you','need','assistance','with','these','day','to','day','activities','Would','you','say','it','is','Always','Usually','Sometimes'))
Q186 <- tolower(c('When','you','need','help','with','these','day','to','day','activities','how','often','are','you','able','to','get','the','help','that','you','need','Would','you','say','it','is','Always','Usually','Sometimes','Rarely','Never'))
Q187 <- tolower(c('During','the','past','12','months','how','often','has','confusion','or','memory','loss','interfered','with','your','ability','to','work','volunteer','or','engage','in','social','activities','outside','the','home','Would','you','say','it','is','Always','Usually','Sometimes','Rarely','Never'))
Q188 <- tolower(c('Have','you','or','anyone','else','discussed','your','confusion','or','memory','loss','with','a','health','care','professional'))
Q189 <- tolower(c('During','the','past','30','days','did','you','provide','regular','care','or','assistance','to','a','friend','or','family','member','who','has','a','health','problem','or','disability'))
Q190 <- tolower(c('What','is','his','or','her','relationship','to','you'))
Q191 <- tolower(c('For','how','long','have','you','provided','care','for','that','person'))
Q192 <- tolower(c('In','an','average','week','how','many','hours','do','you','provide','care','or','assistance'))
Q193 <- tolower(c('What','is','the','main','health','problem','long','term','illness','or','disability','that','the','person','you','care','for','has'))
Q194 <- tolower(c('Does','the','person','you','care','for','also','have','Alzheimers','disease','dementia','or','other','cognitive','impairment','disorder'))
Q195 <- tolower(c('In','the','past','30','days','did','you','provide','care','for','this','person','by','managing','personal','care','such','as','giving','medications','feeding','dressing','or','bathing'))
Q196 <- tolower(c('In','the','past','30','days','did','you','provide','care','for','this','person','by','managing','household','tasks','such','as','cleaning','managing','money','or','preparing','meals'))
Q197 <- tolower(c('In','the','next','2','years','do','you','expect','to','provide','care','or','assistance','to','a','friend','or','family','member','who','has','a','health','problem','or','disability?'))
Q198 <- tolower(c('Now','looking','back','before','you','were','18','years','of','age','Did','you','live','with','anyone','who','was','depressed','mentally','ill','or','suicidal'))
Q199 <- tolower(c('Did','you','live','with','anyone','who','was','a','problem','drinker','or','alcoholic'))
Q200 <- tolower(c('Did','you','live','with','anyone','who','used','illegal','street','drugs','or','who','abused','prescription','medications'))
Q201 <- tolower(c('Did','you','live','with','anyone','who','served','time','or','was','sentenced','to','serve','time','in','a','prison','jail','or','other','correctional','facility')) 
Q202 <- tolower(c('Were','your','parents','separated','or','divorced'))
Q203 <- tolower(c('How','often','did','your','parents','or','adults','in','your','home','ever','slap','hit','kick','punch','or','beat','each','other','up','Was','it','Never','Once','More','than','once'))
Q204 <- tolower(c('Not','including','spanking','before','age','18','how','often','did','a','parent','or','adult','in','your','home','ever','hit','beat','kick','or','physically','hurt','you','in','any','way','Was','it','Never','Once','More','than','once'))
Q205 <- tolower(c('How','often','did','a','parent','or','adult','in','your','home','ever','swear','at','you','insult','you','or','put','you','down','Was','it','Never','Once','More','than','once'))
Q206 <- tolower(c('How','often','did','anyone','at','least','5','years','older','than','you','or','an','adult','ever','touch','you','sexually','Was','it','Never','Once','More','than','once'))
Q207 <- tolower(c('How','often','did','anyone','at','least','5','years','older','than','you','or','an','adult','try','to','make','you','touch','them','sexually','Was','it','Never','Once','More','than','once'))
Q208 <- tolower(c('How','often','did','anyone','at','least','5','years','older','than','you','or','an','adult','force','you','to','have','sex','Was','it','Never','Once','More','than','once'))
Q209 <- tolower(c('Would','you','like','for','me','to','provide','a','toll','free','number','for','an','organization','that','can','provide','information','and','referral','for','the','issues','in','the','last','few','questions'))
Q210 <- tolower(c('The','last','time','you','had','sex','with','a','man','did','you','or','your','partner','do','anything','to','keep','you','from','getting','pregnant'))
Q211 <- tolower(c('The','last','time','you','had','sex','with','a','man','what','did','you','or','your','partner','do','to','keep','you','from','getting','pregnant'))
Q212 <- tolower(c('Some','reasons','for','not','doing','anything','to','keep','you','from','getting','pregnant','the','last','time','you','had','sex','might','include','wanting','a','pregnancy','not','being','able','to','pay','for','birth','control','or','not','thinking','that','you','can','get','pregnant','What','was','your','main','reason','for','not','using','a','method','to','prevent','pregnancy','the','last','time','you','had','sex','with','a','man'))
Q213 <- tolower(c('You','told','me','earlier','that','your','last','routine','checkup','was','within','the','past','year','within','the','past','2','years','At','that','checkup','were','you','asked','in','person','or','on','a','form','if','you','drink','alcohol'))
Q214 <- tolower(c('Did','the','health','care','provider','ask','you','in','person','or','on','a','form','how','much','you','drink'))
Q215 <- tolower(c('Did','the','healthcare','provider','specifically','ask','whether','you','drank','5','FOR','MEN','4','FOR','WOMEN','or','more','alcoholic','drinks','on','an','occasion'))
Q216 <- tolower(c('Were','you','offered','advice','about','what','level','of','drinking','is','harmful','or','risky','for','your','health'))
Q217 <- tolower(c('Healthcare','providers','may','also','advise','patients','to','drink','less','for','various','reasons','At','your','last','routine','checkup','were','you','advised','to','reduce','or','quit','your','drinking'))
Q218 <- tolower(c('During','the','past','30','days','on','how','many','days','did','you','use','marijuana','or','cannabis'))
Q219 <- tolower(c('During','the','past','30','days','which','one','of','the','following','ways','did','you','use','marijuana','the','most','often','Did','you','usually','Smoke','it','for','example','in','a','joint','bong','pipe','or','blunt','Eat','it','for','example','in','brownies','cakes','cookies','or','candy','Drink','it','for','example','in','tea','cola','or','alcohol','Vaporize','it','for','example','in','an','ecigarette','like','vaporizer','or','another','vaporizing','device','Dab','it','for','example','using','waxes','or','concentrates','or','Use','it','some','other','way'))
Q220 <- tolower(c('When','you','used','marijuana','or','cannabis','during','the','past','30','days','was','it','usually','For','medical','reasons','like','to','treat','or','decrease','symptoms','of','a','health','condition',' For','non','medical','reasons','like','to','have','fun','or','fit','in','or','For','both','medical','and','non','medical','reasons'))
Q221 <- tolower(c('What','kind','of','work','do','you','do','For','example','registered','nurse','janitor','cashier','auto','mechanic'))
Q222 <- tolower(c('What','kind','of','business','or','industry','do','you','work','in','For','example','hospital','elementary','school','clothing','manufacturing','restaurant'))
Q223 <- tolower(c('In','the','past','12','months','have','you','received','food','stamps','also','called','SNAP','the','Supplemental','Nutrition','Assistance','Program','on','an','EBT','card'))
Q224 <- tolower(c('What','was','your','sex','at','birth','Was','it','male','or','female'))
Q225 <- tolower(c('Which','of','the','following','best','represents','how','you','think','of','yourself','Gay','Straight','that','is','not','gay','Bisexual','Something','else'))
Q226 <- tolower(c('Which','of','the','following','best','represents','how','you','think','of','yourself'))
Q227 <- tolower(c('Do','you','consider','yourself','to','be','transgender'))
Q228 <- tolower(c('Previously','you','indicated','there','was','one','child','age','17','or','younger','in','your','household','I','would','like','to','ask','you','some','questions','about','that','child'))
Q229 <- tolower(c('What','is','the','birth','month','and','year','of','the','Xth','child'))
Q230 <- tolower(c('Is','the','child','a','boy','or','a','girl'))
Q231 <- tolower(c('Is','the','child','Hispanic','Latino','Latina','or','Spanish','origin'))
Q232 <- tolower(c('Which','one','or','more','of','the','following','would','you','say','is','the','race','of','the','child','White','Black','or','African','American','American','Indian','or','Alaska','Native','Asian','Asian','Indian','Chinese','Filipino','Japanese','Korean','Vietnamese','Other','Asian','Pacific','Islander','Native','Hawaiian','Guamanian','or','Chamorro','Samoan','Other','Pacific','Islander'))
Q233 <- tolower(c('Which','one','of','these','groups','would','you','say','best','represents','the','child','race','White','Black','or','African','American','American','Indian','or','Alaska','Native','Asian','Asian','Indian','Chinese','Filipino','Japanese','Korean','Vietnamese','Other','Asian','Pacific','Islander','Native','Hawaiian','Guamanian','or','Chamorro','Samoan','Other','Pacific','Islander'))
Q234 <- tolower(c('How','are','you','related','to','the','child','Are','you','a','Parent','include','biologic','step','or','adoptive','parent','Grandparent','Foster','parent','or','guardian','Sibling','include','biologic','step','and','adoptive','sibling','Other','relative','Not','related','in','any','way'))
Q235 <- tolower(c('Has','a','doctor','nurse','or','other','health','professional','EVER','said','that','the','child','has','asthma'))
Q236 <- tolower(c('Does','the','child','still','have','asthma'))
Q237 <- tolower(c('Would','it','be','okay','if','we','called','you','back','to','ask','additional','asthma','related','questions','at','a','later','time'))
Q238 <- tolower(c('Which','person','in','the','household','was','selected','as','the','focus','of','the','asthma','call','back'))
Q239 <- tolower(c('Can','I','please','have','either','your','your','child','first','name','or','initials','so','we','will','know','who','to','ask','for','when','we','call','back'))


WHO_Q1 <- WHO_words %>% filter(word %in% Q1) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q2 <- WHO_words %>% filter(word %in% Q2) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q3 <- WHO_words %>% filter(word %in% Q3) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q4 <- WHO_words %>% filter(word %in% Q4) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q5 <- WHO_words %>% filter(word %in% Q5) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q6 <- WHO_words %>% filter(word %in% Q6) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q7 <- WHO_words %>% filter(word %in% Q7) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q8 <- WHO_words %>% filter(word %in% Q8) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q9 <- WHO_words %>% filter(word %in% Q9) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q10 <- WHO_words %>% filter(word %in% Q10) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q11 <- WHO_words %>% filter(word %in% Q11) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q12 <- WHO_words %>% filter(word %in% Q12) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q13 <- WHO_words %>% filter(word %in% Q13) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q14 <- WHO_words %>% filter(word %in% Q14) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q15 <- WHO_words %>% filter(word %in% Q15) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q16 <- WHO_words %>% filter(word %in% Q16) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q17 <- WHO_words %>% filter(word %in% Q17) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q18 <- WHO_words %>% filter(word %in% Q18) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q19 <- WHO_words %>% filter(word %in% Q19) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q20 <- WHO_words %>% filter(word %in% Q20) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q21 <- WHO_words %>% filter(word %in% Q21) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q22 <- WHO_words %>% filter(word %in% Q22) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q23 <- WHO_words %>% filter(word %in% Q23) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q24 <- WHO_words %>% filter(word %in% Q24) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q25 <- WHO_words %>% filter(word %in% Q25) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q26 <- WHO_words %>% filter(word %in% Q26) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q27 <- WHO_words %>% filter(word %in% Q27) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q28 <- WHO_words %>% filter(word %in% Q28) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q29 <- WHO_words %>% filter(word %in% Q29) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q30 <- WHO_words %>% filter(word %in% Q30) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q31 <- WHO_words %>% filter(word %in% Q31) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q32 <- WHO_words %>% filter(word %in% Q32) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q33 <- WHO_words %>% filter(word %in% Q33) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q34 <- WHO_words %>% filter(word %in% Q34) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q35 <- WHO_words %>% filter(word %in% Q35) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q36 <- WHO_words %>% filter(word %in% Q36) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q37 <- WHO_words %>% filter(word %in% Q37) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q38 <- WHO_words %>% filter(word %in% Q38) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q39 <- WHO_words %>% filter(word %in% Q39) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q40 <- WHO_words %>% filter(word %in% Q40) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q41 <- WHO_words %>% filter(word %in% Q41) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q42 <- WHO_words %>% filter(word %in% Q42) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q43 <- WHO_words %>% filter(word %in% Q43) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q44 <- WHO_words %>% filter(word %in% Q44) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q45 <- WHO_words %>% filter(word %in% Q45) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q46 <- WHO_words %>% filter(word %in% Q46) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q47 <- WHO_words %>% filter(word %in% Q47) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q48 <- WHO_words %>% filter(word %in% Q48) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q49 <- WHO_words %>% filter(word %in% Q49) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q50 <- WHO_words %>% filter(word %in% Q50) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q51 <- WHO_words %>% filter(word %in% Q51) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q52 <- WHO_words %>% filter(word %in% Q52) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q53 <- WHO_words %>% filter(word %in% Q53) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q54 <- WHO_words %>% filter(word %in% Q54) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q55 <- WHO_words %>% filter(word %in% Q55) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q56 <- WHO_words %>% filter(word %in% Q56) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q57 <- WHO_words %>% filter(word %in% Q57) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q58 <- WHO_words %>% filter(word %in% Q58) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q59 <- WHO_words %>% filter(word %in% Q59) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q60 <- WHO_words %>% filter(word %in% Q60) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q61 <- WHO_words %>% filter(word %in% Q61) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q62 <- WHO_words %>% filter(word %in% Q62) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q63 <- WHO_words %>% filter(word %in% Q63) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q64 <- WHO_words %>% filter(word %in% Q64) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q65 <- WHO_words %>% filter(word %in% Q65) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q66 <- WHO_words %>% filter(word %in% Q66) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q67 <- WHO_words %>% filter(word %in% Q67) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q68 <- WHO_words %>% filter(word %in% Q68) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q69 <- WHO_words %>% filter(word %in% Q69) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q70 <- WHO_words %>% filter(word %in% Q70) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q71 <- WHO_words %>% filter(word %in% Q71) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q72 <- WHO_words %>% filter(word %in% Q72) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q73 <- WHO_words %>% filter(word %in% Q73) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q74 <- WHO_words %>% filter(word %in% Q74) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q75 <- WHO_words %>% filter(word %in% Q75) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q76 <- WHO_words %>% filter(word %in% Q76) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q77 <- WHO_words %>% filter(word %in% Q77) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q78 <- WHO_words %>% filter(word %in% Q78) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q79 <- WHO_words %>% filter(word %in% Q79) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q80 <- WHO_words %>% filter(word %in% Q80) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q81 <- WHO_words %>% filter(word %in% Q81) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q82 <- WHO_words %>% filter(word %in% Q82) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q83 <- WHO_words %>% filter(word %in% Q83) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q84 <- WHO_words %>% filter(word %in% Q84) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q85 <- WHO_words %>% filter(word %in% Q85) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q86 <- WHO_words %>% filter(word %in% Q86) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q87 <- WHO_words %>% filter(word %in% Q87) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q88 <- WHO_words %>% filter(word %in% Q88) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q89 <- WHO_words %>% filter(word %in% Q89) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q90 <- WHO_words %>% filter(word %in% Q90) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q91 <- WHO_words %>% filter(word %in% Q91) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q92 <- WHO_words %>% filter(word %in% Q92) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q93 <- WHO_words %>% filter(word %in% Q93) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q94 <- WHO_words %>% filter(word %in% Q94) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q95 <- WHO_words %>% filter(word %in% Q95) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q96 <- WHO_words %>% filter(word %in% Q96) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q97 <- WHO_words %>% filter(word %in% Q97) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q98 <- WHO_words %>% filter(word %in% Q98) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q99 <- WHO_words %>% filter(word %in% Q99) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q100 <- WHO_words %>% filter(word %in% Q100) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q101 <- WHO_words %>% filter(word %in% Q101) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q102 <- WHO_words %>% filter(word %in% Q102) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q103 <- WHO_words %>% filter(word %in% Q103) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q104 <- WHO_words %>% filter(word %in% Q104) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q105 <- WHO_words %>% filter(word %in% Q105) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q106 <- WHO_words %>% filter(word %in% Q106) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q107 <- WHO_words %>% filter(word %in% Q107) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q108 <- WHO_words %>% filter(word %in% Q108) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q109 <- WHO_words %>% filter(word %in% Q109) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q110 <- WHO_words %>% filter(word %in% Q110) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q111 <- WHO_words %>% filter(word %in% Q111) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q112 <- WHO_words %>% filter(word %in% Q112) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q113 <- WHO_words %>% filter(word %in% Q113) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q114 <- WHO_words %>% filter(word %in% Q114) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q115 <- WHO_words %>% filter(word %in% Q115) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q116 <- WHO_words %>% filter(word %in% Q116) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q117 <- WHO_words %>% filter(word %in% Q117) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q118 <- WHO_words %>% filter(word %in% Q118) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q119 <- WHO_words %>% filter(word %in% Q119) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q120 <- WHO_words %>% filter(word %in% Q120) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q121 <- WHO_words %>% filter(word %in% Q121) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q122 <- WHO_words %>% filter(word %in% Q122) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q123 <- WHO_words %>% filter(word %in% Q123) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q124 <- WHO_words %>% filter(word %in% Q124) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q125 <- WHO_words %>% filter(word %in% Q125) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q126 <- WHO_words %>% filter(word %in% Q126) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q127 <- WHO_words %>% filter(word %in% Q127) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q128 <- WHO_words %>% filter(word %in% Q128) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q129 <- WHO_words %>% filter(word %in% Q129) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q130 <- WHO_words %>% filter(word %in% Q130) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q131 <- WHO_words %>% filter(word %in% Q131) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q132 <- WHO_words %>% filter(word %in% Q132) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q133 <- WHO_words %>% filter(word %in% Q133) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q134 <- WHO_words %>% filter(word %in% Q134) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q135 <- WHO_words %>% filter(word %in% Q135) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q136 <- WHO_words %>% filter(word %in% Q136) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q137 <- WHO_words %>% filter(word %in% Q137) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q138 <- WHO_words %>% filter(word %in% Q138) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q139 <- WHO_words %>% filter(word %in% Q139) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q140 <- WHO_words %>% filter(word %in% Q140) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q141 <- WHO_words %>% filter(word %in% Q141) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q142 <- WHO_words %>% filter(word %in% Q142) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q143 <- WHO_words %>% filter(word %in% Q143) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q144 <- WHO_words %>% filter(word %in% Q144) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q145 <- WHO_words %>% filter(word %in% Q145) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q146 <- WHO_words %>% filter(word %in% Q146) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q147 <- WHO_words %>% filter(word %in% Q147) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q148 <- WHO_words %>% filter(word %in% Q148) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q149 <- WHO_words %>% filter(word %in% Q149) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q150 <- WHO_words %>% filter(word %in% Q150) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q151 <- WHO_words %>% filter(word %in% Q151) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q152 <- WHO_words %>% filter(word %in% Q152) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q153 <- WHO_words %>% filter(word %in% Q153) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q154 <- WHO_words %>% filter(word %in% Q154) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q155 <- WHO_words %>% filter(word %in% Q155) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q156 <- WHO_words %>% filter(word %in% Q156) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q157 <- WHO_words %>% filter(word %in% Q157) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q158 <- WHO_words %>% filter(word %in% Q158) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q159 <- WHO_words %>% filter(word %in% Q159) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q160 <- WHO_words %>% filter(word %in% Q160) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q161 <- WHO_words %>% filter(word %in% Q161) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q162 <- WHO_words %>% filter(word %in% Q162) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q163 <- WHO_words %>% filter(word %in% Q163) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q164 <- WHO_words %>% filter(word %in% Q164) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q165 <- WHO_words %>% filter(word %in% Q165) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q166 <- WHO_words %>% filter(word %in% Q166) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q167 <- WHO_words %>% filter(word %in% Q167) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q168 <- WHO_words %>% filter(word %in% Q168) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q169 <- WHO_words %>% filter(word %in% Q169) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q170 <- WHO_words %>% filter(word %in% Q170) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q171 <- WHO_words %>% filter(word %in% Q171) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q172 <- WHO_words %>% filter(word %in% Q172) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q173 <- WHO_words %>% filter(word %in% Q173) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q174 <- WHO_words %>% filter(word %in% Q174) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q175 <- WHO_words %>% filter(word %in% Q175) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q176 <- WHO_words %>% filter(word %in% Q176) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q177 <- WHO_words %>% filter(word %in% Q177) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q178 <- WHO_words %>% filter(word %in% Q178) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q179 <- WHO_words %>% filter(word %in% Q179) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q180 <- WHO_words %>% filter(word %in% Q180) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q181 <- WHO_words %>% filter(word %in% Q181) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q182 <- WHO_words %>% filter(word %in% Q182) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q183 <- WHO_words %>% filter(word %in% Q183) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q184 <- WHO_words %>% filter(word %in% Q184) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q185 <- WHO_words %>% filter(word %in% Q185) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q186 <- WHO_words %>% filter(word %in% Q186) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q187 <- WHO_words %>% filter(word %in% Q187) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q188 <- WHO_words %>% filter(word %in% Q188) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q189 <- WHO_words %>% filter(word %in% Q189) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q190 <- WHO_words %>% filter(word %in% Q190) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q191 <- WHO_words %>% filter(word %in% Q191) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q192 <- WHO_words %>% filter(word %in% Q192) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q193 <- WHO_words %>% filter(word %in% Q193) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q194 <- WHO_words %>% filter(word %in% Q194) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q195 <- WHO_words %>% filter(word %in% Q195) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q196 <- WHO_words %>% filter(word %in% Q196) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q197 <- WHO_words %>% filter(word %in% Q197) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q198 <- WHO_words %>% filter(word %in% Q198) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q199 <- WHO_words %>% filter(word %in% Q199) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q200 <- WHO_words %>% filter(word %in% Q200) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q201 <- WHO_words %>% filter(word %in% Q201) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q202 <- WHO_words %>% filter(word %in% Q202) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q203 <- WHO_words %>% filter(word %in% Q203) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q204 <- WHO_words %>% filter(word %in% Q204) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q205 <- WHO_words %>% filter(word %in% Q205) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q206 <- WHO_words %>% filter(word %in% Q206) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q207 <- WHO_words %>% filter(word %in% Q207) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q208 <- WHO_words %>% filter(word %in% Q208) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q209 <- WHO_words %>% filter(word %in% Q209) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q210 <- WHO_words %>% filter(word %in% Q210) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q211 <- WHO_words %>% filter(word %in% Q211) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q212 <- WHO_words %>% filter(word %in% Q212) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q213 <- WHO_words %>% filter(word %in% Q213) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q214 <- WHO_words %>% filter(word %in% Q214) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q215 <- WHO_words %>% filter(word %in% Q215) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q216 <- WHO_words %>% filter(word %in% Q216) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q217 <- WHO_words %>% filter(word %in% Q217) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q218 <- WHO_words %>% filter(word %in% Q218) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q219 <- WHO_words %>% filter(word %in% Q219) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q220 <- WHO_words %>% filter(word %in% Q220) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q221 <- WHO_words %>% filter(word %in% Q221) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q222 <- WHO_words %>% filter(word %in% Q222) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q223 <- WHO_words %>% filter(word %in% Q223) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q224 <- WHO_words %>% filter(word %in% Q224) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q225 <- WHO_words %>% filter(word %in% Q225) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q226 <- WHO_words %>% filter(word %in% Q226) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q227 <- WHO_words %>% filter(word %in% Q227) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q228 <- WHO_words %>% filter(word %in% Q228) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q229 <- WHO_words %>% filter(word %in% Q229) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q230 <- WHO_words %>% filter(word %in% Q230) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q231 <- WHO_words %>% filter(word %in% Q231) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q232 <- WHO_words %>% filter(word %in% Q232) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q233 <- WHO_words %>% filter(word %in% Q233) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q234 <- WHO_words %>% filter(word %in% Q234) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q235 <- WHO_words %>% filter(word %in% Q235) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q236 <- WHO_words %>% filter(word %in% Q236) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q237 <- WHO_words %>% filter(word %in% Q237) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q238 <- WHO_words %>% filter(word %in% Q238) %>% select(-total) %>% arrange(desc(tf_idf)) 
WHO_Q239 <- WHO_words %>% filter(word %in% Q239) %>% select(-total) %>% arrange(desc(tf_idf)) 
 

WHO_Q1_SORT <- WHO_Q1[order(-WHO_Q1$n),]
WHO_Q2_SORT <- WHO_Q2[order(-WHO_Q2$n),]
WHO_Q3_SORT <- WHO_Q3[order(-WHO_Q3$n),]
WHO_Q4_SORT <- WHO_Q4[order(-WHO_Q4$n),]
WHO_Q5_SORT <- WHO_Q5[order(-WHO_Q5$n),]
WHO_Q6_SORT <- WHO_Q6[order(-WHO_Q6$n),]
WHO_Q7_SORT <- WHO_Q7[order(-WHO_Q7$n),]
WHO_Q8_SORT <- WHO_Q8[order(-WHO_Q8$n),]
WHO_Q9_SORT <- WHO_Q9[order(-WHO_Q9$n),]
WHO_Q10_SORT <- WHO_Q10[order(-WHO_Q10$n),]
WHO_Q11_SORT <- WHO_Q11[order(-WHO_Q11$n),]
WHO_Q12_SORT <- WHO_Q12[order(-WHO_Q12$n),]
WHO_Q13_SORT <- WHO_Q13[order(-WHO_Q13$n),]
WHO_Q14_SORT <- WHO_Q14[order(-WHO_Q14$n),]
WHO_Q15_SORT <- WHO_Q15[order(-WHO_Q15$n),]
WHO_Q16_SORT <- WHO_Q16[order(-WHO_Q16$n),]
WHO_Q17_SORT <- WHO_Q17[order(-WHO_Q17$n),]
WHO_Q18_SORT <- WHO_Q18[order(-WHO_Q18$n),]
WHO_Q19_SORT <- WHO_Q19[order(-WHO_Q19$n),]
WHO_Q20_SORT <- WHO_Q20[order(-WHO_Q20$n),]
WHO_Q21_SORT <- WHO_Q21[order(-WHO_Q21$n),]
WHO_Q22_SORT <- WHO_Q22[order(-WHO_Q22$n),]
WHO_Q23_SORT <- WHO_Q23[order(-WHO_Q23$n),]
WHO_Q24_SORT <- WHO_Q24[order(-WHO_Q24$n),]
WHO_Q25_SORT <- WHO_Q25[order(-WHO_Q25$n),]
WHO_Q26_SORT <- WHO_Q26[order(-WHO_Q26$n),]
WHO_Q27_SORT <- WHO_Q27[order(-WHO_Q27$n),]
WHO_Q28_SORT <- WHO_Q28[order(-WHO_Q28$n),]
WHO_Q29_SORT <- WHO_Q29[order(-WHO_Q29$n),]
WHO_Q30_SORT <- WHO_Q30[order(-WHO_Q30$n),]
WHO_Q31_SORT <- WHO_Q31[order(-WHO_Q31$n),]
WHO_Q32_SORT <- WHO_Q32[order(-WHO_Q32$n),]
WHO_Q33_SORT <- WHO_Q33[order(-WHO_Q33$n),]
WHO_Q34_SORT <- WHO_Q34[order(-WHO_Q34$n),]
WHO_Q35_SORT <- WHO_Q35[order(-WHO_Q35$n),]
WHO_Q36_SORT <- WHO_Q36[order(-WHO_Q36$n),]
WHO_Q37_SORT <- WHO_Q37[order(-WHO_Q37$n),]
WHO_Q38_SORT <- WHO_Q38[order(-WHO_Q38$n),]
WHO_Q39_SORT <- WHO_Q39[order(-WHO_Q39$n),]
WHO_Q40_SORT <- WHO_Q40[order(-WHO_Q40$n),]
WHO_Q41_SORT <- WHO_Q41[order(-WHO_Q41$n),]
WHO_Q42_SORT <- WHO_Q42[order(-WHO_Q42$n),]
WHO_Q43_SORT <- WHO_Q43[order(-WHO_Q43$n),]
WHO_Q44_SORT <- WHO_Q44[order(-WHO_Q44$n),]
WHO_Q45_SORT <- WHO_Q45[order(-WHO_Q45$n),]
WHO_Q46_SORT <- WHO_Q46[order(-WHO_Q46$n),]
WHO_Q47_SORT <- WHO_Q47[order(-WHO_Q47$n),]
WHO_Q48_SORT <- WHO_Q48[order(-WHO_Q48$n),]
WHO_Q49_SORT <- WHO_Q49[order(-WHO_Q49$n),]
WHO_Q50_SORT <- WHO_Q50[order(-WHO_Q50$n),]
WHO_Q51_SORT <- WHO_Q51[order(-WHO_Q51$n),]
WHO_Q52_SORT <- WHO_Q52[order(-WHO_Q52$n),]
WHO_Q53_SORT <- WHO_Q53[order(-WHO_Q53$n),]
WHO_Q54_SORT <- WHO_Q54[order(-WHO_Q54$n),]
WHO_Q55_SORT <- WHO_Q55[order(-WHO_Q55$n),]
WHO_Q56_SORT <- WHO_Q56[order(-WHO_Q56$n),]
WHO_Q57_SORT <- WHO_Q57[order(-WHO_Q57$n),]
WHO_Q58_SORT <- WHO_Q58[order(-WHO_Q58$n),]
WHO_Q59_SORT <- WHO_Q59[order(-WHO_Q59$n),]
WHO_Q60_SORT <- WHO_Q60[order(-WHO_Q60$n),]
WHO_Q61_SORT <- WHO_Q61[order(-WHO_Q61$n),]
WHO_Q62_SORT <- WHO_Q62[order(-WHO_Q62$n),]
WHO_Q63_SORT <- WHO_Q63[order(-WHO_Q63$n),]
WHO_Q64_SORT <- WHO_Q64[order(-WHO_Q64$n),]
WHO_Q65_SORT <- WHO_Q65[order(-WHO_Q65$n),]
WHO_Q66_SORT <- WHO_Q66[order(-WHO_Q66$n),]
WHO_Q67_SORT <- WHO_Q67[order(-WHO_Q67$n),]
WHO_Q68_SORT <- WHO_Q68[order(-WHO_Q68$n),]
WHO_Q69_SORT <- WHO_Q69[order(-WHO_Q69$n),]
WHO_Q70_SORT <- WHO_Q70[order(-WHO_Q70$n),]
WHO_Q71_SORT <- WHO_Q71[order(-WHO_Q71$n),]
WHO_Q72_SORT <- WHO_Q72[order(-WHO_Q72$n),]
WHO_Q73_SORT <- WHO_Q73[order(-WHO_Q73$n),]
WHO_Q74_SORT <- WHO_Q74[order(-WHO_Q74$n),]
WHO_Q75_SORT <- WHO_Q75[order(-WHO_Q75$n),]
WHO_Q76_SORT <- WHO_Q76[order(-WHO_Q76$n),]
WHO_Q77_SORT <- WHO_Q77[order(-WHO_Q77$n),]
WHO_Q78_SORT <- WHO_Q78[order(-WHO_Q78$n),]
WHO_Q79_SORT <- WHO_Q79[order(-WHO_Q79$n),]
WHO_Q80_SORT <- WHO_Q80[order(-WHO_Q80$n),]
WHO_Q81_SORT <- WHO_Q81[order(-WHO_Q81$n),]
WHO_Q82_SORT <- WHO_Q82[order(-WHO_Q82$n),]
WHO_Q83_SORT <- WHO_Q83[order(-WHO_Q83$n),]
WHO_Q84_SORT <- WHO_Q84[order(-WHO_Q84$n),]
WHO_Q85_SORT <- WHO_Q85[order(-WHO_Q85$n),]
WHO_Q86_SORT <- WHO_Q86[order(-WHO_Q86$n),]
WHO_Q87_SORT <- WHO_Q87[order(-WHO_Q87$n),]
WHO_Q88_SORT <- WHO_Q88[order(-WHO_Q88$n),]
WHO_Q89_SORT <- WHO_Q89[order(-WHO_Q89$n),]
WHO_Q90_SORT <- WHO_Q90[order(-WHO_Q90$n),]
WHO_Q91_SORT <- WHO_Q91[order(-WHO_Q91$n),]
WHO_Q92_SORT <- WHO_Q92[order(-WHO_Q92$n),]
WHO_Q93_SORT <- WHO_Q93[order(-WHO_Q93$n),]
WHO_Q94_SORT <- WHO_Q94[order(-WHO_Q94$n),]
WHO_Q95_SORT <- WHO_Q95[order(-WHO_Q95$n),]
WHO_Q96_SORT <- WHO_Q96[order(-WHO_Q96$n),]
WHO_Q97_SORT <- WHO_Q97[order(-WHO_Q97$n),]
WHO_Q98_SORT <- WHO_Q98[order(-WHO_Q98$n),]
WHO_Q99_SORT <- WHO_Q99[order(-WHO_Q99$n),]
WHO_Q100_SORT <- WHO_Q100[order(-WHO_Q100$n),]
WHO_Q101_SORT <- WHO_Q101[order(-WHO_Q101$n),]
WHO_Q102_SORT <- WHO_Q102[order(-WHO_Q102$n),]
WHO_Q103_SORT <- WHO_Q103[order(-WHO_Q103$n),]
WHO_Q104_SORT <- WHO_Q104[order(-WHO_Q104$n),]
WHO_Q105_SORT <- WHO_Q105[order(-WHO_Q105$n),]
WHO_Q106_SORT <- WHO_Q106[order(-WHO_Q106$n),]
WHO_Q107_SORT <- WHO_Q107[order(-WHO_Q107$n),]
WHO_Q108_SORT <- WHO_Q108[order(-WHO_Q108$n),]
WHO_Q109_SORT <- WHO_Q109[order(-WHO_Q109$n),]
WHO_Q110_SORT <- WHO_Q110[order(-WHO_Q110$n),]
WHO_Q111_SORT <- WHO_Q111[order(-WHO_Q111$n),]
WHO_Q112_SORT <- WHO_Q112[order(-WHO_Q112$n),]
WHO_Q113_SORT <- WHO_Q113[order(-WHO_Q113$n),]
WHO_Q114_SORT <- WHO_Q114[order(-WHO_Q114$n),]
WHO_Q115_SORT <- WHO_Q115[order(-WHO_Q115$n),]
WHO_Q116_SORT <- WHO_Q116[order(-WHO_Q116$n),]
WHO_Q117_SORT <- WHO_Q117[order(-WHO_Q117$n),]
WHO_Q118_SORT <- WHO_Q118[order(-WHO_Q118$n),]
WHO_Q119_SORT <- WHO_Q119[order(-WHO_Q119$n),]
WHO_Q120_SORT <- WHO_Q120[order(-WHO_Q120$n),]
WHO_Q121_SORT <- WHO_Q121[order(-WHO_Q121$n),]
WHO_Q122_SORT <- WHO_Q122[order(-WHO_Q122$n),]
WHO_Q123_SORT <- WHO_Q123[order(-WHO_Q123$n),]
WHO_Q124_SORT <- WHO_Q124[order(-WHO_Q124$n),]
WHO_Q125_SORT <- WHO_Q125[order(-WHO_Q125$n),]
WHO_Q126_SORT <- WHO_Q126[order(-WHO_Q126$n),]
WHO_Q127_SORT <- WHO_Q127[order(-WHO_Q127$n),]
WHO_Q128_SORT <- WHO_Q128[order(-WHO_Q128$n),]
WHO_Q129_SORT <- WHO_Q129[order(-WHO_Q129$n),]
WHO_Q130_SORT <- WHO_Q130[order(-WHO_Q130$n),]
WHO_Q131_SORT <- WHO_Q131[order(-WHO_Q131$n),]
WHO_Q132_SORT <- WHO_Q132[order(-WHO_Q132$n),]
WHO_Q133_SORT <- WHO_Q133[order(-WHO_Q133$n),]
WHO_Q134_SORT <- WHO_Q134[order(-WHO_Q134$n),]
WHO_Q135_SORT <- WHO_Q135[order(-WHO_Q135$n),]
WHO_Q136_SORT <- WHO_Q136[order(-WHO_Q136$n),]
WHO_Q137_SORT <- WHO_Q137[order(-WHO_Q137$n),]
WHO_Q138_SORT <- WHO_Q138[order(-WHO_Q138$n),]
WHO_Q139_SORT <- WHO_Q139[order(-WHO_Q139$n),]
WHO_Q140_SORT <- WHO_Q140[order(-WHO_Q140$n),]
WHO_Q141_SORT <- WHO_Q141[order(-WHO_Q141$n),]
WHO_Q142_SORT <- WHO_Q142[order(-WHO_Q142$n),]
WHO_Q143_SORT <- WHO_Q143[order(-WHO_Q143$n),]
WHO_Q144_SORT <- WHO_Q144[order(-WHO_Q144$n),]
WHO_Q145_SORT <- WHO_Q145[order(-WHO_Q145$n),]
WHO_Q146_SORT <- WHO_Q146[order(-WHO_Q146$n),]
WHO_Q147_SORT <- WHO_Q147[order(-WHO_Q147$n),]
WHO_Q148_SORT <- WHO_Q148[order(-WHO_Q148$n),]
WHO_Q149_SORT <- WHO_Q149[order(-WHO_Q149$n),]
WHO_Q150_SORT <- WHO_Q150[order(-WHO_Q150$n),]
WHO_Q151_SORT <- WHO_Q151[order(-WHO_Q151$n),]
WHO_Q152_SORT <- WHO_Q152[order(-WHO_Q152$n),]
WHO_Q153_SORT <- WHO_Q153[order(-WHO_Q153$n),]
WHO_Q154_SORT <- WHO_Q154[order(-WHO_Q154$n),]
WHO_Q155_SORT <- WHO_Q155[order(-WHO_Q155$n),]
WHO_Q156_SORT <- WHO_Q156[order(-WHO_Q156$n),]
WHO_Q157_SORT <- WHO_Q157[order(-WHO_Q157$n),]
WHO_Q158_SORT <- WHO_Q158[order(-WHO_Q158$n),]
WHO_Q159_SORT <- WHO_Q159[order(-WHO_Q159$n),]
WHO_Q160_SORT <- WHO_Q160[order(-WHO_Q160$n),]
WHO_Q161_SORT <- WHO_Q161[order(-WHO_Q161$n),]
WHO_Q162_SORT <- WHO_Q162[order(-WHO_Q162$n),]
WHO_Q163_SORT <- WHO_Q163[order(-WHO_Q163$n),]
WHO_Q164_SORT <- WHO_Q164[order(-WHO_Q164$n),]
WHO_Q165_SORT <- WHO_Q165[order(-WHO_Q165$n),]
WHO_Q166_SORT <- WHO_Q166[order(-WHO_Q166$n),]
WHO_Q167_SORT <- WHO_Q167[order(-WHO_Q167$n),]
WHO_Q168_SORT <- WHO_Q168[order(-WHO_Q168$n),]
WHO_Q169_SORT <- WHO_Q169[order(-WHO_Q169$n),]
WHO_Q170_SORT <- WHO_Q170[order(-WHO_Q170$n),]
WHO_Q171_SORT <- WHO_Q171[order(-WHO_Q171$n),]
WHO_Q172_SORT <- WHO_Q172[order(-WHO_Q172$n),]
WHO_Q173_SORT <- WHO_Q173[order(-WHO_Q173$n),]
WHO_Q174_SORT <- WHO_Q174[order(-WHO_Q174$n),]
WHO_Q175_SORT <- WHO_Q175[order(-WHO_Q175$n),]
WHO_Q176_SORT <- WHO_Q176[order(-WHO_Q176$n),]
WHO_Q177_SORT <- WHO_Q177[order(-WHO_Q177$n),]
WHO_Q178_SORT <- WHO_Q178[order(-WHO_Q178$n),]
WHO_Q179_SORT <- WHO_Q179[order(-WHO_Q179$n),]
WHO_Q180_SORT <- WHO_Q180[order(-WHO_Q180$n),]
WHO_Q181_SORT <- WHO_Q181[order(-WHO_Q181$n),]
WHO_Q182_SORT <- WHO_Q182[order(-WHO_Q182$n),]
WHO_Q183_SORT <- WHO_Q183[order(-WHO_Q183$n),]
WHO_Q184_SORT <- WHO_Q184[order(-WHO_Q184$n),]
WHO_Q185_SORT <- WHO_Q185[order(-WHO_Q185$n),]
WHO_Q186_SORT <- WHO_Q186[order(-WHO_Q186$n),]
WHO_Q187_SORT <- WHO_Q187[order(-WHO_Q187$n),]
WHO_Q188_SORT <- WHO_Q188[order(-WHO_Q188$n),]
WHO_Q189_SORT <- WHO_Q189[order(-WHO_Q189$n),]
WHO_Q190_SORT <- WHO_Q190[order(-WHO_Q190$n),]
WHO_Q191_SORT <- WHO_Q191[order(-WHO_Q191$n),]
WHO_Q192_SORT <- WHO_Q192[order(-WHO_Q192$n),]
WHO_Q193_SORT <- WHO_Q193[order(-WHO_Q193$n),]
WHO_Q194_SORT <- WHO_Q194[order(-WHO_Q194$n),]
WHO_Q195_SORT <- WHO_Q195[order(-WHO_Q195$n),]
WHO_Q196_SORT <- WHO_Q196[order(-WHO_Q196$n),]
WHO_Q197_SORT <- WHO_Q197[order(-WHO_Q197$n),]
WHO_Q198_SORT <- WHO_Q198[order(-WHO_Q198$n),]
WHO_Q199_SORT <- WHO_Q199[order(-WHO_Q199$n),]
WHO_Q200_SORT <- WHO_Q200[order(-WHO_Q200$n),]
WHO_Q201_SORT <- WHO_Q201[order(-WHO_Q201$n),]
WHO_Q202_SORT <- WHO_Q202[order(-WHO_Q202$n),]
WHO_Q203_SORT <- WHO_Q203[order(-WHO_Q203$n),]
WHO_Q204_SORT <- WHO_Q204[order(-WHO_Q204$n),]
WHO_Q205_SORT <- WHO_Q205[order(-WHO_Q205$n),]
WHO_Q206_SORT <- WHO_Q206[order(-WHO_Q206$n),]
WHO_Q207_SORT <- WHO_Q207[order(-WHO_Q207$n),]
WHO_Q208_SORT <- WHO_Q208[order(-WHO_Q208$n),]
WHO_Q209_SORT <- WHO_Q209[order(-WHO_Q209$n),]
WHO_Q210_SORT <- WHO_Q210[order(-WHO_Q210$n),]
WHO_Q211_SORT <- WHO_Q211[order(-WHO_Q211$n),]
WHO_Q212_SORT <- WHO_Q212[order(-WHO_Q212$n),]
WHO_Q213_SORT <- WHO_Q213[order(-WHO_Q213$n),]
WHO_Q214_SORT <- WHO_Q214[order(-WHO_Q214$n),]
WHO_Q215_SORT <- WHO_Q215[order(-WHO_Q215$n),]
WHO_Q216_SORT <- WHO_Q216[order(-WHO_Q216$n),]
WHO_Q217_SORT <- WHO_Q217[order(-WHO_Q217$n),]
WHO_Q218_SORT <- WHO_Q218[order(-WHO_Q218$n),]
WHO_Q219_SORT <- WHO_Q219[order(-WHO_Q219$n),]
WHO_Q220_SORT <- WHO_Q220[order(-WHO_Q220$n),]
WHO_Q221_SORT <- WHO_Q221[order(-WHO_Q221$n),]
WHO_Q222_SORT <- WHO_Q222[order(-WHO_Q222$n),]
WHO_Q223_SORT <- WHO_Q223[order(-WHO_Q223$n),]
WHO_Q224_SORT <- WHO_Q224[order(-WHO_Q224$n),]
WHO_Q225_SORT <- WHO_Q225[order(-WHO_Q225$n),]
WHO_Q226_SORT <- WHO_Q226[order(-WHO_Q226$n),]
WHO_Q227_SORT <- WHO_Q227[order(-WHO_Q227$n),]
WHO_Q228_SORT <- WHO_Q228[order(-WHO_Q228$n),]
WHO_Q229_SORT <- WHO_Q229[order(-WHO_Q229$n),]
WHO_Q230_SORT <- WHO_Q230[order(-WHO_Q230$n),]
WHO_Q231_SORT <- WHO_Q231[order(-WHO_Q231$n),]
WHO_Q232_SORT <- WHO_Q232[order(-WHO_Q232$n),]
WHO_Q233_SORT <- WHO_Q233[order(-WHO_Q233$n),]
WHO_Q234_SORT <- WHO_Q234[order(-WHO_Q234$n),]
WHO_Q235_SORT <- WHO_Q235[order(-WHO_Q235$n),]
WHO_Q236_SORT <- WHO_Q236[order(-WHO_Q236$n),]
WHO_Q237_SORT <- WHO_Q237[order(-WHO_Q237$n),]
WHO_Q238_SORT <- WHO_Q238[order(-WHO_Q238$n),]
WHO_Q239_SORT <- WHO_Q239[order(-WHO_Q239$n),]


WHO_LIST <- list(WHO_Q1_SORT, WHO_Q2_SORT, WHO_Q3_SORT, WHO_Q4_SORT, WHO_Q5_SORT, WHO_Q6_SORT, WHO_Q7_SORT, WHO_Q8_SORT, WHO_Q9_SORT, WHO_Q10_SORT, WHO_Q11_SORT, WHO_Q12_SORT, WHO_Q13_SORT, WHO_Q14_SORT, WHO_Q15_SORT, WHO_Q16_SORT, WHO_Q17_SORT, WHO_Q18_SORT, WHO_Q19_SORT, WHO_Q20_SORT, WHO_Q21_SORT, WHO_Q22_SORT, WHO_Q23_SORT, WHO_Q24_SORT, WHO_Q25_SORT, WHO_Q26_SORT, WHO_Q27_SORT, WHO_Q28_SORT, WHO_Q29_SORT, WHO_Q30_SORT, WHO_Q31_SORT, WHO_Q32_SORT, WHO_Q33_SORT, WHO_Q34_SORT, WHO_Q35_SORT, WHO_Q36_SORT, WHO_Q37_SORT, WHO_Q38_SORT, WHO_Q39_SORT, WHO_Q40_SORT, WHO_Q41_SORT, WHO_Q42_SORT, WHO_Q43_SORT, WHO_Q44_SORT, WHO_Q45_SORT, WHO_Q46_SORT, WHO_Q47_SORT, WHO_Q48_SORT, WHO_Q49_SORT, WHO_Q50_SORT, WHO_Q51_SORT, WHO_Q52_SORT, WHO_Q53_SORT, WHO_Q54_SORT, WHO_Q55_SORT, WHO_Q56_SORT, WHO_Q57_SORT, WHO_Q58_SORT, WHO_Q59_SORT, WHO_Q60_SORT, WHO_Q61_SORT, WHO_Q62_SORT, WHO_Q63_SORT, WHO_Q64_SORT, WHO_Q65_SORT, WHO_Q66_SORT, WHO_Q67_SORT, WHO_Q68_SORT, WHO_Q69_SORT, WHO_Q70_SORT, WHO_Q71_SORT, WHO_Q72_SORT, WHO_Q73_SORT, WHO_Q74_SORT, WHO_Q75_SORT, WHO_Q76_SORT, WHO_Q77_SORT, WHO_Q78_SORT, WHO_Q79_SORT, WHO_Q80_SORT, WHO_Q81_SORT, WHO_Q82_SORT, WHO_Q83_SORT, WHO_Q84_SORT, WHO_Q85_SORT, WHO_Q86_SORT, WHO_Q87_SORT, WHO_Q88_SORT, WHO_Q89_SORT, WHO_Q90_SORT, WHO_Q91_SORT, WHO_Q92_SORT, WHO_Q93_SORT, WHO_Q94_SORT, WHO_Q95_SORT, WHO_Q96_SORT, WHO_Q97_SORT, WHO_Q98_SORT, WHO_Q99_SORT, WHO_Q100_SORT, WHO_Q101_SORT, WHO_Q102_SORT, WHO_Q103_SORT, WHO_Q104_SORT, WHO_Q105_SORT, WHO_Q106_SORT, WHO_Q107_SORT, WHO_Q108_SORT, WHO_Q109_SORT, WHO_Q110_SORT, WHO_Q111_SORT, WHO_Q112_SORT, WHO_Q113_SORT, WHO_Q114_SORT, WHO_Q115_SORT, WHO_Q116_SORT, WHO_Q117_SORT, WHO_Q118_SORT, WHO_Q119_SORT, WHO_Q120_SORT, WHO_Q121_SORT, WHO_Q122_SORT, WHO_Q123_SORT, WHO_Q124_SORT, WHO_Q125_SORT, WHO_Q126_SORT, WHO_Q127_SORT, WHO_Q128_SORT, WHO_Q129_SORT, WHO_Q130_SORT, WHO_Q131_SORT, WHO_Q132_SORT, WHO_Q133_SORT, WHO_Q134_SORT, WHO_Q135_SORT, WHO_Q136_SORT, WHO_Q137_SORT, WHO_Q138_SORT, WHO_Q139_SORT, WHO_Q140_SORT, WHO_Q141_SORT, WHO_Q142_SORT, WHO_Q143_SORT, WHO_Q144_SORT, WHO_Q145_SORT, WHO_Q146_SORT, WHO_Q147_SORT, WHO_Q148_SORT, WHO_Q149_SORT, WHO_Q150_SORT, WHO_Q151_SORT, WHO_Q152_SORT, WHO_Q153_SORT, WHO_Q154_SORT, WHO_Q155_SORT, WHO_Q156_SORT, WHO_Q157_SORT, WHO_Q158_SORT, WHO_Q159_SORT, WHO_Q160_SORT, WHO_Q161_SORT, WHO_Q162_SORT, WHO_Q163_SORT, WHO_Q164_SORT, WHO_Q165_SORT, WHO_Q166_SORT, WHO_Q167_SORT, WHO_Q168_SORT, WHO_Q169_SORT, WHO_Q170_SORT, WHO_Q171_SORT, WHO_Q172_SORT, WHO_Q173_SORT, WHO_Q174_SORT, WHO_Q175_SORT, WHO_Q176_SORT, WHO_Q177_SORT, WHO_Q178_SORT, WHO_Q179_SORT, WHO_Q180_SORT, WHO_Q181_SORT, WHO_Q182_SORT, WHO_Q183_SORT, WHO_Q184_SORT, WHO_Q185_SORT, WHO_Q186_SORT, WHO_Q187_SORT, WHO_Q188_SORT, WHO_Q189_SORT, WHO_Q190_SORT, WHO_Q191_SORT, WHO_Q192_SORT, WHO_Q193_SORT, WHO_Q194_SORT, WHO_Q195_SORT, WHO_Q196_SORT, WHO_Q197_SORT, WHO_Q198_SORT, WHO_Q199_SORT, WHO_Q200_SORT, WHO_Q201_SORT, WHO_Q202_SORT, WHO_Q203_SORT, WHO_Q204_SORT, WHO_Q205_SORT, WHO_Q206_SORT, WHO_Q207_SORT, WHO_Q208_SORT, WHO_Q209_SORT, WHO_Q210_SORT, WHO_Q211_SORT, WHO_Q212_SORT, WHO_Q213_SORT, WHO_Q214_SORT, WHO_Q215_SORT, WHO_Q216_SORT, WHO_Q217_SORT, WHO_Q218_SORT, WHO_Q219_SORT, WHO_Q220_SORT, WHO_Q221_SORT, WHO_Q222_SORT, WHO_Q223_SORT, WHO_Q224_SORT, WHO_Q225_SORT, WHO_Q226_SORT, WHO_Q227_SORT, WHO_Q228_SORT, WHO_Q229_SORT, WHO_Q230_SORT, WHO_Q231_SORT, WHO_Q232_SORT, WHO_Q233_SORT, WHO_Q234_SORT, WHO_Q235_SORT, WHO_Q236_SORT, WHO_Q237_SORT, WHO_Q238_SORT, WHO_Q239_SORT)


##create the knowledge graph CSV file - 2-3 hours.
#csv_fname = "BRFSS_KG_2019.csv"
#
#row <- data.frame("Column A", "Column B", "P-Value", "Word Count")
#write.table(row, file = csv_fname, sep = ",", append = TRUE, quote = FALSE, col.names = FALSE, row.names = FALSE)
#
#k=0
#while(k< length(WHO_LIST)) {
#k=k+1
#	j=0
#	while(j< length(WHO_LIST)) {
#	j=j+1
#	#print(j)
#		i=2
#		while(i< length(as.data.frame(WHO_LIST[k])$chapter)) {
#		i=i+1
#		#print(i)
#			if (i < length(as.data.frame(WHO_LIST[j])$chapter)) {
#				suppressWarnings(warning(test <- wilcox.test(head(as.numeric(substr(as.data.frame(WHO_LIST[k])$chapter,4,5)),n=i),head(as.numeric(substr(as.data.frame(WHO_LIST[j])$chapter,4,5)),n=i),paired = TRUE)))
#				if (!is.na(test$p.value)) {
#					if (test$p.value < 0.05 && test$p.value > 0) { 
#						print(paste("COLUMN A : ", as.character(k), "COLUMN B : ", as.character(j), "SIGNIFICANT: ", as.character(test$p.value), "WORD COUNT: ", as.character(i)))
#						row <- data.frame(as.character(k), as.character(j), as.character(test$p.value), as.character(i))
#						write.table(row, file = csv_fname, sep = ",", append = TRUE, quote = FALSE, col.names = FALSE, row.names = FALSE)
#						break;
#					}
#				}
#			}
#		}
#	}
#}




setwd('C:\\Users\\mdjaw\\OneDrive\\Documents\\Markian Training\\Research_USQ\\USCenterDiseaseControlPrevention\\LLCP2019XPT')
data <- read.csv('LLCP2019XPT.csv')
state_data <- subset(data, X_STATE == 4 | X_STATE == 9 | X_STATE == 10 | X_STATE == 13 | X_STATE == 15 | X_STATE == 18 | X_STATE == 22 | X_STATE == 25 | X_STATE == 26 | X_STATE == 28 | X_STATE == 29 | X_STATE == 30 | X_STATE == 34 | X_STATE == 35 | X_STATE == 37 | X_STATE == 44 | X_STATE == 46 | X_STATE == 49 | X_STATE == 50 | X_STATE == 51 | X_STATE == 55 | X_STATE == 56 | X_STATE == 66 | X_STATE == 31 | X_STATE == 16 | X_STATE == 19 | X_STATE == 2 | X_STATE == 31 | X_STATE == 1 | X_STATE == 40 | X_STATE == 39) 

#state_data[3] <- (state_data[3]) * 0
#state_data[60] <- (state_data[60]) * 0
#state_data[94] <- (state_data[94]) * 0
#state_data[100] <- (state_data[100]) * 0
#state_data[172] <- (state_data[172]) * 0
#state_data[192] <- (state_data[192]) * 0
#state_data[203] <- (state_data[203]) * 0
#state_data[212] <- (state_data[212]) * 0
#state_data[235] <- (state_data[235]) * 0

state_data[56][state_data[56] == 1] <- 1 
state_data[56][state_data[56] == 2] <- 1
state_data[56][state_data[56] == 3] <- 0
state_data[56][state_data[56] == 4] <- 0
state_data[56][state_data[56] == 7] <- 0
state_data[56][state_data[56] == 9] <- 0
state_data[56][is.na(state_data[56])] <- 0
state_data[163][is.na(state_data[163])] <- 0
state_data[163][state_data[163] >= 1] <- 1


### PROPORTION BASED IMPUTATION
#state_data[1][is.na(state_data[1])] <- 1 - round(nrow(subset(state_data, is.na(state_data[1]))) / nrow(state_data),2)
#state_data[2][is.na(state_data[2])] <- 1 - round(nrow(subset(state_data, is.na(state_data[2]))) / nrow(state_data),2)
#state_data[3][is.na(state_data[3])] <- 1 - round(nrow(subset(state_data, is.na(state_data[3]))) / nrow(state_data),2)
#state_data[4][is.na(state_data[4])] <- 1 - round(nrow(subset(state_data, is.na(state_data[4]))) / nrow(state_data),2)
#state_data[5][is.na(state_data[5])] <- 1 - round(nrow(subset(state_data, is.na(state_data[5]))) / nrow(state_data),2)
#state_data[6][is.na(state_data[6])] <- 1 - round(nrow(subset(state_data, is.na(state_data[6]))) / nrow(state_data),2)
#state_data[7][is.na(state_data[7])] <- 1 - round(nrow(subset(state_data, is.na(state_data[7]))) / nrow(state_data),2)
#state_data[8][is.na(state_data[8])] <- 1 - round(nrow(subset(state_data, is.na(state_data[8]))) / nrow(state_data),2)
#state_data[9][is.na(state_data[9])] <- 1 - round(nrow(subset(state_data, is.na(state_data[9]))) / nrow(state_data),2)
#state_data[10][is.na(state_data[10])] <- 1 - round(nrow(subset(state_data, is.na(state_data[10]))) / nrow(state_data),2)
#state_data[11][is.na(state_data[11])] <- 1 - round(nrow(subset(state_data, is.na(state_data[11]))) / nrow(state_data),2)
#state_data[12][is.na(state_data[12])] <- 1 - round(nrow(subset(state_data, is.na(state_data[12]))) / nrow(state_data),2)
#state_data[13][is.na(state_data[13])] <- 1 - round(nrow(subset(state_data, is.na(state_data[13]))) / nrow(state_data),2)
#state_data[14][is.na(state_data[14])] <- 1 - round(nrow(subset(state_data, is.na(state_data[14]))) / nrow(state_data),2)
#state_data[15][is.na(state_data[15])] <- 1 - round(nrow(subset(state_data, is.na(state_data[15]))) / nrow(state_data),2)
#state_data[16][is.na(state_data[16])] <- 1 - round(nrow(subset(state_data, is.na(state_data[16]))) / nrow(state_data),2)
#state_data[17][is.na(state_data[17])] <- 1 - round(nrow(subset(state_data, is.na(state_data[17]))) / nrow(state_data),2)
#state_data[18][is.na(state_data[18])] <- 1 - round(nrow(subset(state_data, is.na(state_data[18]))) / nrow(state_data),2)
#state_data[19][is.na(state_data[19])] <- 1 - round(nrow(subset(state_data, is.na(state_data[19]))) / nrow(state_data),2)
#state_data[20][is.na(state_data[20])] <- 1 - round(nrow(subset(state_data, is.na(state_data[20]))) / nrow(state_data),2)
#state_data[21][is.na(state_data[21])] <- 1 - round(nrow(subset(state_data, is.na(state_data[21]))) / nrow(state_data),2)
#state_data[22][is.na(state_data[22])] <- 1 - round(nrow(subset(state_data, is.na(state_data[22]))) / nrow(state_data),2)
#state_data[23][is.na(state_data[23])] <- 1 - round(nrow(subset(state_data, is.na(state_data[23]))) / nrow(state_data),2)
#state_data[24][is.na(state_data[24])] <- 1 - round(nrow(subset(state_data, is.na(state_data[24]))) / nrow(state_data),2)
#state_data[25][is.na(state_data[25])] <- 1 - round(nrow(subset(state_data, is.na(state_data[25]))) / nrow(state_data),2)
#state_data[26][is.na(state_data[26])] <- 1 - round(nrow(subset(state_data, is.na(state_data[26]))) / nrow(state_data),2)
#state_data[27][is.na(state_data[27])] <- 1 - round(nrow(subset(state_data, is.na(state_data[27]))) / nrow(state_data),2)
#state_data[28][is.na(state_data[28])] <- 1 - round(nrow(subset(state_data, is.na(state_data[28]))) / nrow(state_data),2)
#state_data[29][is.na(state_data[29])] <- 1 - round(nrow(subset(state_data, is.na(state_data[29]))) / nrow(state_data),2)
#state_data[30][is.na(state_data[30])] <- 1 - round(nrow(subset(state_data, is.na(state_data[30]))) / nrow(state_data),2)
#state_data[31][is.na(state_data[31])] <- 1 - round(nrow(subset(state_data, is.na(state_data[31]))) / nrow(state_data),2)
#state_data[32][is.na(state_data[32])] <- 1 - round(nrow(subset(state_data, is.na(state_data[32]))) / nrow(state_data),2)
#state_data[33][is.na(state_data[33])] <- 1 - round(nrow(subset(state_data, is.na(state_data[33]))) / nrow(state_data),2)
#state_data[34][is.na(state_data[34])] <- 1 - round(nrow(subset(state_data, is.na(state_data[34]))) / nrow(state_data),2)
#state_data[35][is.na(state_data[35])] <- 1 - round(nrow(subset(state_data, is.na(state_data[35]))) / nrow(state_data),2)
#state_data[36][is.na(state_data[36])] <- 1 - round(nrow(subset(state_data, is.na(state_data[36]))) / nrow(state_data),2)
#state_data[37][is.na(state_data[37])] <- 1 - round(nrow(subset(state_data, is.na(state_data[37]))) / nrow(state_data),2)
#state_data[38][is.na(state_data[38])] <- 1 - round(nrow(subset(state_data, is.na(state_data[38]))) / nrow(state_data),2)
#state_data[39][is.na(state_data[39])] <- 1 - round(nrow(subset(state_data, is.na(state_data[39]))) / nrow(state_data),2)
#state_data[40][is.na(state_data[40])] <- 1 - round(nrow(subset(state_data, is.na(state_data[40]))) / nrow(state_data),2)
#state_data[41][is.na(state_data[41])] <- 1 - round(nrow(subset(state_data, is.na(state_data[41]))) / nrow(state_data),2)
#state_data[42][is.na(state_data[42])] <- 1 - round(nrow(subset(state_data, is.na(state_data[42]))) / nrow(state_data),2)
#state_data[43][is.na(state_data[43])] <- 1 - round(nrow(subset(state_data, is.na(state_data[43]))) / nrow(state_data),2)
#state_data[44][is.na(state_data[44])] <- 1 - round(nrow(subset(state_data, is.na(state_data[44]))) / nrow(state_data),2)
#state_data[45][is.na(state_data[45])] <- 1 - round(nrow(subset(state_data, is.na(state_data[45]))) / nrow(state_data),2)
#state_data[46][is.na(state_data[46])] <- 1 - round(nrow(subset(state_data, is.na(state_data[46]))) / nrow(state_data),2)
#state_data[47][is.na(state_data[47])] <- 1 - round(nrow(subset(state_data, is.na(state_data[47]))) / nrow(state_data),2)
#state_data[48][is.na(state_data[48])] <- 1 - round(nrow(subset(state_data, is.na(state_data[48]))) / nrow(state_data),2)
#state_data[49][is.na(state_data[49])] <- 1 - round(nrow(subset(state_data, is.na(state_data[49]))) / nrow(state_data),2)
#state_data[50][is.na(state_data[50])] <- 1 - round(nrow(subset(state_data, is.na(state_data[50]))) / nrow(state_data),2)
#state_data[51][is.na(state_data[51])] <- 1 - round(nrow(subset(state_data, is.na(state_data[51]))) / nrow(state_data),2)
#state_data[52][is.na(state_data[52])] <- 1 - round(nrow(subset(state_data, is.na(state_data[52]))) / nrow(state_data),2)
#state_data[53][is.na(state_data[53])] <- 1 - round(nrow(subset(state_data, is.na(state_data[53]))) / nrow(state_data),2)
#state_data[54][is.na(state_data[54])] <- 1 - round(nrow(subset(state_data, is.na(state_data[54]))) / nrow(state_data),2)
#state_data[55][is.na(state_data[55])] <- 1 - round(nrow(subset(state_data, is.na(state_data[55]))) / nrow(state_data),2)
#state_data[56][is.na(state_data[56])] <- 1 - round(nrow(subset(state_data, is.na(state_data[56]))) / nrow(state_data),2)
#state_data[57][is.na(state_data[57])] <- 1 - round(nrow(subset(state_data, is.na(state_data[57]))) / nrow(state_data),2)
#state_data[58][is.na(state_data[58])] <- 1 - round(nrow(subset(state_data, is.na(state_data[58]))) / nrow(state_data),2)
#state_data[59][is.na(state_data[59])] <- 1 - round(nrow(subset(state_data, is.na(state_data[59]))) / nrow(state_data),2)
#state_data[60][is.na(state_data[60])] <- 1 - round(nrow(subset(state_data, is.na(state_data[60]))) / nrow(state_data),2)
#state_data[61][is.na(state_data[61])] <- 1 - round(nrow(subset(state_data, is.na(state_data[61]))) / nrow(state_data),2)
#state_data[62][is.na(state_data[62])] <- 1 - round(nrow(subset(state_data, is.na(state_data[62]))) / nrow(state_data),2)
#state_data[63][is.na(state_data[63])] <- 1 - round(nrow(subset(state_data, is.na(state_data[63]))) / nrow(state_data),2)
#state_data[64][is.na(state_data[64])] <- 1 - round(nrow(subset(state_data, is.na(state_data[64]))) / nrow(state_data),2)
#state_data[65][is.na(state_data[65])] <- 1 - round(nrow(subset(state_data, is.na(state_data[65]))) / nrow(state_data),2)
#state_data[66][is.na(state_data[66])] <- 1 - round(nrow(subset(state_data, is.na(state_data[66]))) / nrow(state_data),2)
#state_data[67][is.na(state_data[67])] <- 1 - round(nrow(subset(state_data, is.na(state_data[67]))) / nrow(state_data),2)
#state_data[68][is.na(state_data[68])] <- 1 - round(nrow(subset(state_data, is.na(state_data[68]))) / nrow(state_data),2)
#state_data[69][is.na(state_data[69])] <- 1 - round(nrow(subset(state_data, is.na(state_data[69]))) / nrow(state_data),2)
#state_data[70][is.na(state_data[70])] <- 1 - round(nrow(subset(state_data, is.na(state_data[70]))) / nrow(state_data),2)
#state_data[71][is.na(state_data[71])] <- 1 - round(nrow(subset(state_data, is.na(state_data[71]))) / nrow(state_data),2)
#state_data[72][is.na(state_data[72])] <- 1 - round(nrow(subset(state_data, is.na(state_data[72]))) / nrow(state_data),2)
#state_data[73][is.na(state_data[73])] <- 1 - round(nrow(subset(state_data, is.na(state_data[73]))) / nrow(state_data),2)
#state_data[74][is.na(state_data[74])] <- 1 - round(nrow(subset(state_data, is.na(state_data[74]))) / nrow(state_data),2)
#state_data[75][is.na(state_data[75])] <- 1 - round(nrow(subset(state_data, is.na(state_data[75]))) / nrow(state_data),2)
#state_data[76][is.na(state_data[76])] <- 1 - round(nrow(subset(state_data, is.na(state_data[76]))) / nrow(state_data),2)
#state_data[77][is.na(state_data[77])] <- 1 - round(nrow(subset(state_data, is.na(state_data[77]))) / nrow(state_data),2)
#state_data[78][is.na(state_data[78])] <- 1 - round(nrow(subset(state_data, is.na(state_data[78]))) / nrow(state_data),2)
#state_data[79][is.na(state_data[79])] <- 1 - round(nrow(subset(state_data, is.na(state_data[79]))) / nrow(state_data),2)
#state_data[80][is.na(state_data[80])] <- 1 - round(nrow(subset(state_data, is.na(state_data[80]))) / nrow(state_data),2)
#state_data[81][is.na(state_data[81])] <- 1 - round(nrow(subset(state_data, is.na(state_data[81]))) / nrow(state_data),2)
#state_data[82][is.na(state_data[82])] <- 1 - round(nrow(subset(state_data, is.na(state_data[82]))) / nrow(state_data),2)
#state_data[83][is.na(state_data[83])] <- 1 - round(nrow(subset(state_data, is.na(state_data[83]))) / nrow(state_data),2)
#state_data[84][is.na(state_data[84])] <- 1 - round(nrow(subset(state_data, is.na(state_data[84]))) / nrow(state_data),2)
#state_data[85][is.na(state_data[85])] <- 1 - round(nrow(subset(state_data, is.na(state_data[85]))) / nrow(state_data),2)
#state_data[86][is.na(state_data[86])] <- 1 - round(nrow(subset(state_data, is.na(state_data[86]))) / nrow(state_data),2)
#state_data[87][is.na(state_data[87])] <- 1 - round(nrow(subset(state_data, is.na(state_data[87]))) / nrow(state_data),2)
#state_data[88][is.na(state_data[88])] <- 1 - round(nrow(subset(state_data, is.na(state_data[88]))) / nrow(state_data),2)
#state_data[89][is.na(state_data[89])] <- 1 - round(nrow(subset(state_data, is.na(state_data[89]))) / nrow(state_data),2)
#state_data[90][is.na(state_data[90])] <- 1 - round(nrow(subset(state_data, is.na(state_data[90]))) / nrow(state_data),2)
#state_data[91][is.na(state_data[91])] <- 1 - round(nrow(subset(state_data, is.na(state_data[91]))) / nrow(state_data),2)
#state_data[92][is.na(state_data[92])] <- 1 - round(nrow(subset(state_data, is.na(state_data[92]))) / nrow(state_data),2)
#state_data[93][is.na(state_data[93])] <- 1 - round(nrow(subset(state_data, is.na(state_data[93]))) / nrow(state_data),2)
#state_data[94][is.na(state_data[94])] <- 1 - round(nrow(subset(state_data, is.na(state_data[94]))) / nrow(state_data),2)
#state_data[95][is.na(state_data[95])] <- 1 - round(nrow(subset(state_data, is.na(state_data[95]))) / nrow(state_data),2)
#state_data[96][is.na(state_data[96])] <- 1 - round(nrow(subset(state_data, is.na(state_data[96]))) / nrow(state_data),2)
#state_data[97][is.na(state_data[97])] <- 1 - round(nrow(subset(state_data, is.na(state_data[97]))) / nrow(state_data),2)
#state_data[98][is.na(state_data[98])] <- 1 - round(nrow(subset(state_data, is.na(state_data[98]))) / nrow(state_data),2)
#state_data[99][is.na(state_data[99])] <- 1 - round(nrow(subset(state_data, is.na(state_data[99]))) / nrow(state_data),2)
#state_data[100][is.na(state_data[100])] <- 1 - round(nrow(subset(state_data, is.na(state_data[100]))) / nrow(state_data),2)
#state_data[101][is.na(state_data[101])] <- 1 - round(nrow(subset(state_data, is.na(state_data[101]))) / nrow(state_data),2)
#state_data[102][is.na(state_data[102])] <- 1 - round(nrow(subset(state_data, is.na(state_data[102]))) / nrow(state_data),2)
#state_data[103][is.na(state_data[103])] <- 1 - round(nrow(subset(state_data, is.na(state_data[103]))) / nrow(state_data),2)
#state_data[104][is.na(state_data[104])] <- 1 - round(nrow(subset(state_data, is.na(state_data[104]))) / nrow(state_data),2)
#state_data[105][is.na(state_data[105])] <- 1 - round(nrow(subset(state_data, is.na(state_data[105]))) / nrow(state_data),2)
#state_data[106][is.na(state_data[106])] <- 1 - round(nrow(subset(state_data, is.na(state_data[106]))) / nrow(state_data),2)
#state_data[107][is.na(state_data[107])] <- 1 - round(nrow(subset(state_data, is.na(state_data[107]))) / nrow(state_data),2)
#state_data[108][is.na(state_data[108])] <- 1 - round(nrow(subset(state_data, is.na(state_data[108]))) / nrow(state_data),2)
#state_data[109][is.na(state_data[109])] <- 1 - round(nrow(subset(state_data, is.na(state_data[109]))) / nrow(state_data),2)
#state_data[110][is.na(state_data[110])] <- 1 - round(nrow(subset(state_data, is.na(state_data[110]))) / nrow(state_data),2)
#state_data[111][is.na(state_data[111])] <- 1 - round(nrow(subset(state_data, is.na(state_data[111]))) / nrow(state_data),2)
#state_data[112][is.na(state_data[112])] <- 1 - round(nrow(subset(state_data, is.na(state_data[112]))) / nrow(state_data),2)
#state_data[113][is.na(state_data[113])] <- 1 - round(nrow(subset(state_data, is.na(state_data[113]))) / nrow(state_data),2)
#state_data[114][is.na(state_data[114])] <- 1 - round(nrow(subset(state_data, is.na(state_data[114]))) / nrow(state_data),2)
#state_data[115][is.na(state_data[115])] <- 1 - round(nrow(subset(state_data, is.na(state_data[115]))) / nrow(state_data),2)
#state_data[116][is.na(state_data[116])] <- 1 - round(nrow(subset(state_data, is.na(state_data[116]))) / nrow(state_data),2)
#state_data[117][is.na(state_data[117])] <- 1 - round(nrow(subset(state_data, is.na(state_data[117]))) / nrow(state_data),2)
#state_data[118][is.na(state_data[118])] <- 1 - round(nrow(subset(state_data, is.na(state_data[118]))) / nrow(state_data),2)
#state_data[119][is.na(state_data[119])] <- 1 - round(nrow(subset(state_data, is.na(state_data[119]))) / nrow(state_data),2)
#state_data[120][is.na(state_data[120])] <- 1 - round(nrow(subset(state_data, is.na(state_data[120]))) / nrow(state_data),2)
#state_data[121][is.na(state_data[121])] <- 1 - round(nrow(subset(state_data, is.na(state_data[121]))) / nrow(state_data),2)
#state_data[122][is.na(state_data[122])] <- 1 - round(nrow(subset(state_data, is.na(state_data[122]))) / nrow(state_data),2)
#state_data[123][is.na(state_data[123])] <- 1 - round(nrow(subset(state_data, is.na(state_data[123]))) / nrow(state_data),2)
#state_data[124][is.na(state_data[124])] <- 1 - round(nrow(subset(state_data, is.na(state_data[124]))) / nrow(state_data),2)
#state_data[125][is.na(state_data[125])] <- 1 - round(nrow(subset(state_data, is.na(state_data[125]))) / nrow(state_data),2)
#state_data[126][is.na(state_data[126])] <- 1 - round(nrow(subset(state_data, is.na(state_data[126]))) / nrow(state_data),2)
#state_data[127][is.na(state_data[127])] <- 1 - round(nrow(subset(state_data, is.na(state_data[127]))) / nrow(state_data),2)
#state_data[128][is.na(state_data[128])] <- 1 - round(nrow(subset(state_data, is.na(state_data[128]))) / nrow(state_data),2)
#state_data[129][is.na(state_data[129])] <- 1 - round(nrow(subset(state_data, is.na(state_data[129]))) / nrow(state_data),2)
#state_data[130][is.na(state_data[130])] <- 1 - round(nrow(subset(state_data, is.na(state_data[130]))) / nrow(state_data),2)
#state_data[131][is.na(state_data[131])] <- 1 - round(nrow(subset(state_data, is.na(state_data[131]))) / nrow(state_data),2)
#state_data[132][is.na(state_data[132])] <- 1 - round(nrow(subset(state_data, is.na(state_data[132]))) / nrow(state_data),2)
#state_data[133][is.na(state_data[133])] <- 1 - round(nrow(subset(state_data, is.na(state_data[133]))) / nrow(state_data),2)
#state_data[134][is.na(state_data[134])] <- 1 - round(nrow(subset(state_data, is.na(state_data[134]))) / nrow(state_data),2)
#state_data[135][is.na(state_data[135])] <- 1 - round(nrow(subset(state_data, is.na(state_data[135]))) / nrow(state_data),2)
#state_data[136][is.na(state_data[136])] <- 1 - round(nrow(subset(state_data, is.na(state_data[136]))) / nrow(state_data),2)
#state_data[137][is.na(state_data[137])] <- 1 - round(nrow(subset(state_data, is.na(state_data[137]))) / nrow(state_data),2)
#state_data[138][is.na(state_data[138])] <- 1 - round(nrow(subset(state_data, is.na(state_data[138]))) / nrow(state_data),2)
#state_data[139][is.na(state_data[139])] <- 1 - round(nrow(subset(state_data, is.na(state_data[139]))) / nrow(state_data),2)
#state_data[140][is.na(state_data[140])] <- 1 - round(nrow(subset(state_data, is.na(state_data[140]))) / nrow(state_data),2)
#state_data[141][is.na(state_data[141])] <- 1 - round(nrow(subset(state_data, is.na(state_data[141]))) / nrow(state_data),2)
#state_data[142][is.na(state_data[142])] <- 1 - round(nrow(subset(state_data, is.na(state_data[142]))) / nrow(state_data),2)
#state_data[143][is.na(state_data[143])] <- 1 - round(nrow(subset(state_data, is.na(state_data[143]))) / nrow(state_data),2)
#state_data[144][is.na(state_data[144])] <- 1 - round(nrow(subset(state_data, is.na(state_data[144]))) / nrow(state_data),2)
#state_data[145][is.na(state_data[145])] <- 1 - round(nrow(subset(state_data, is.na(state_data[145]))) / nrow(state_data),2)
#state_data[146][is.na(state_data[146])] <- 1 - round(nrow(subset(state_data, is.na(state_data[146]))) / nrow(state_data),2)
#state_data[147][is.na(state_data[147])] <- 1 - round(nrow(subset(state_data, is.na(state_data[147]))) / nrow(state_data),2)
#state_data[148][is.na(state_data[148])] <- 1 - round(nrow(subset(state_data, is.na(state_data[148]))) / nrow(state_data),2)
#state_data[149][is.na(state_data[149])] <- 1 - round(nrow(subset(state_data, is.na(state_data[149]))) / nrow(state_data),2)
#state_data[150][is.na(state_data[150])] <- 1 - round(nrow(subset(state_data, is.na(state_data[150]))) / nrow(state_data),2)
#state_data[151][is.na(state_data[151])] <- 1 - round(nrow(subset(state_data, is.na(state_data[151]))) / nrow(state_data),2)
#state_data[152][is.na(state_data[152])] <- 1 - round(nrow(subset(state_data, is.na(state_data[152]))) / nrow(state_data),2)
#state_data[153][is.na(state_data[153])] <- 1 - round(nrow(subset(state_data, is.na(state_data[153]))) / nrow(state_data),2)
#state_data[154][is.na(state_data[154])] <- 1 - round(nrow(subset(state_data, is.na(state_data[154]))) / nrow(state_data),2)
#state_data[155][is.na(state_data[155])] <- 1 - round(nrow(subset(state_data, is.na(state_data[155]))) / nrow(state_data),2)
#state_data[156][is.na(state_data[156])] <- 1 - round(nrow(subset(state_data, is.na(state_data[156]))) / nrow(state_data),2)
#state_data[157][is.na(state_data[157])] <- 1 - round(nrow(subset(state_data, is.na(state_data[157]))) / nrow(state_data),2)
#state_data[158][is.na(state_data[158])] <- 1 - round(nrow(subset(state_data, is.na(state_data[158]))) / nrow(state_data),2)
#state_data[159][is.na(state_data[159])] <- 1 - round(nrow(subset(state_data, is.na(state_data[159]))) / nrow(state_data),2)
#state_data[160][is.na(state_data[160])] <- 1 - round(nrow(subset(state_data, is.na(state_data[160]))) / nrow(state_data),2)
#state_data[161][is.na(state_data[161])] <- 1 - round(nrow(subset(state_data, is.na(state_data[161]))) / nrow(state_data),2)
#state_data[162][is.na(state_data[162])] <- 1 - round(nrow(subset(state_data, is.na(state_data[162]))) / nrow(state_data),2)
#state_data[163][is.na(state_data[163])] <- 1 - round(nrow(subset(state_data, is.na(state_data[163]))) / nrow(state_data),2)
#state_data[164][is.na(state_data[164])] <- 1 - round(nrow(subset(state_data, is.na(state_data[164]))) / nrow(state_data),2)
#state_data[165][is.na(state_data[165])] <- 1 - round(nrow(subset(state_data, is.na(state_data[165]))) / nrow(state_data),2)
#state_data[166][is.na(state_data[166])] <- 1 - round(nrow(subset(state_data, is.na(state_data[166]))) / nrow(state_data),2)
#state_data[167][is.na(state_data[167])] <- 1 - round(nrow(subset(state_data, is.na(state_data[167]))) / nrow(state_data),2)
#state_data[168][is.na(state_data[168])] <- 1 - round(nrow(subset(state_data, is.na(state_data[168]))) / nrow(state_data),2)
#state_data[169][is.na(state_data[169])] <- 1 - round(nrow(subset(state_data, is.na(state_data[169]))) / nrow(state_data),2)
#state_data[170][is.na(state_data[170])] <- 1 - round(nrow(subset(state_data, is.na(state_data[170]))) / nrow(state_data),2)
#state_data[171][is.na(state_data[171])] <- 1 - round(nrow(subset(state_data, is.na(state_data[171]))) / nrow(state_data),2)
#state_data[172][is.na(state_data[172])] <- 1 - round(nrow(subset(state_data, is.na(state_data[172]))) / nrow(state_data),2)
#state_data[173][is.na(state_data[173])] <- 1 - round(nrow(subset(state_data, is.na(state_data[173]))) / nrow(state_data),2)
#state_data[174][is.na(state_data[174])] <- 1 - round(nrow(subset(state_data, is.na(state_data[174]))) / nrow(state_data),2)
#state_data[175][is.na(state_data[175])] <- 1 - round(nrow(subset(state_data, is.na(state_data[175]))) / nrow(state_data),2)
#state_data[176][is.na(state_data[176])] <- 1 - round(nrow(subset(state_data, is.na(state_data[176]))) / nrow(state_data),2)
#state_data[177][is.na(state_data[177])] <- 1 - round(nrow(subset(state_data, is.na(state_data[177]))) / nrow(state_data),2)
#state_data[178][is.na(state_data[178])] <- 1 - round(nrow(subset(state_data, is.na(state_data[178]))) / nrow(state_data),2)
#state_data[179][is.na(state_data[179])] <- 1 - round(nrow(subset(state_data, is.na(state_data[179]))) / nrow(state_data),2)
#state_data[180][is.na(state_data[180])] <- 1 - round(nrow(subset(state_data, is.na(state_data[180]))) / nrow(state_data),2)
#state_data[181][is.na(state_data[181])] <- 1 - round(nrow(subset(state_data, is.na(state_data[181]))) / nrow(state_data),2)
#state_data[182][is.na(state_data[182])] <- 1 - round(nrow(subset(state_data, is.na(state_data[182]))) / nrow(state_data),2)
#state_data[183][is.na(state_data[183])] <- 1 - round(nrow(subset(state_data, is.na(state_data[183]))) / nrow(state_data),2)
#state_data[184][is.na(state_data[184])] <- 1 - round(nrow(subset(state_data, is.na(state_data[184]))) / nrow(state_data),2)
#state_data[185][is.na(state_data[185])] <- 1 - round(nrow(subset(state_data, is.na(state_data[185]))) / nrow(state_data),2)
#state_data[186][is.na(state_data[186])] <- 1 - round(nrow(subset(state_data, is.na(state_data[186]))) / nrow(state_data),2)
#state_data[187][is.na(state_data[187])] <- 1 - round(nrow(subset(state_data, is.na(state_data[187]))) / nrow(state_data),2)
#state_data[188][is.na(state_data[188])] <- 1 - round(nrow(subset(state_data, is.na(state_data[188]))) / nrow(state_data),2)
#state_data[189][is.na(state_data[189])] <- 1 - round(nrow(subset(state_data, is.na(state_data[189]))) / nrow(state_data),2)
#state_data[190][is.na(state_data[190])] <- 1 - round(nrow(subset(state_data, is.na(state_data[190]))) / nrow(state_data),2)
#state_data[191][is.na(state_data[191])] <- 1 - round(nrow(subset(state_data, is.na(state_data[191]))) / nrow(state_data),2)
#state_data[192][is.na(state_data[192])] <- 1 - round(nrow(subset(state_data, is.na(state_data[192]))) / nrow(state_data),2)
#state_data[193][is.na(state_data[193])] <- 1 - round(nrow(subset(state_data, is.na(state_data[193]))) / nrow(state_data),2)
#state_data[194][is.na(state_data[194])] <- 1 - round(nrow(subset(state_data, is.na(state_data[194]))) / nrow(state_data),2)
#state_data[195][is.na(state_data[195])] <- 1 - round(nrow(subset(state_data, is.na(state_data[195]))) / nrow(state_data),2)
#state_data[196][is.na(state_data[196])] <- 1 - round(nrow(subset(state_data, is.na(state_data[196]))) / nrow(state_data),2)
#state_data[197][is.na(state_data[197])] <- 1 - round(nrow(subset(state_data, is.na(state_data[197]))) / nrow(state_data),2)
#state_data[198][is.na(state_data[198])] <- 1 - round(nrow(subset(state_data, is.na(state_data[198]))) / nrow(state_data),2)
#state_data[199][is.na(state_data[199])] <- 1 - round(nrow(subset(state_data, is.na(state_data[199]))) / nrow(state_data),2)
#state_data[200][is.na(state_data[200])] <- 1 - round(nrow(subset(state_data, is.na(state_data[200]))) / nrow(state_data),2)
#state_data[201][is.na(state_data[201])] <- 1 - round(nrow(subset(state_data, is.na(state_data[201]))) / nrow(state_data),2)
#state_data[202][is.na(state_data[202])] <- 1 - round(nrow(subset(state_data, is.na(state_data[202]))) / nrow(state_data),2)
#state_data[203][is.na(state_data[203])] <- 1 - round(nrow(subset(state_data, is.na(state_data[203]))) / nrow(state_data),2)
#state_data[204][is.na(state_data[204])] <- 1 - round(nrow(subset(state_data, is.na(state_data[204]))) / nrow(state_data),2)
#state_data[205][is.na(state_data[205])] <- 1 - round(nrow(subset(state_data, is.na(state_data[205]))) / nrow(state_data),2)
#state_data[206][is.na(state_data[206])] <- 1 - round(nrow(subset(state_data, is.na(state_data[206]))) / nrow(state_data),2)
#state_data[207][is.na(state_data[207])] <- 1 - round(nrow(subset(state_data, is.na(state_data[207]))) / nrow(state_data),2)
#state_data[208][is.na(state_data[208])] <- 1 - round(nrow(subset(state_data, is.na(state_data[208]))) / nrow(state_data),2)
#state_data[209][is.na(state_data[209])] <- 1 - round(nrow(subset(state_data, is.na(state_data[209]))) / nrow(state_data),2)
#state_data[210][is.na(state_data[210])] <- 1 - round(nrow(subset(state_data, is.na(state_data[210]))) / nrow(state_data),2)
#state_data[211][is.na(state_data[211])] <- 1 - round(nrow(subset(state_data, is.na(state_data[211]))) / nrow(state_data),2)
#state_data[212][is.na(state_data[212])] <- 1 - round(nrow(subset(state_data, is.na(state_data[212]))) / nrow(state_data),2)
#state_data[213][is.na(state_data[213])] <- 1 - round(nrow(subset(state_data, is.na(state_data[213]))) / nrow(state_data),2)
#state_data[214][is.na(state_data[214])] <- 1 - round(nrow(subset(state_data, is.na(state_data[214]))) / nrow(state_data),2)
#state_data[215][is.na(state_data[215])] <- 1 - round(nrow(subset(state_data, is.na(state_data[215]))) / nrow(state_data),2)
#state_data[216][is.na(state_data[216])] <- 1 - round(nrow(subset(state_data, is.na(state_data[216]))) / nrow(state_data),2)
#state_data[217][is.na(state_data[217])] <- 1 - round(nrow(subset(state_data, is.na(state_data[217]))) / nrow(state_data),2)
#state_data[218][is.na(state_data[218])] <- 1 - round(nrow(subset(state_data, is.na(state_data[218]))) / nrow(state_data),2)
#state_data[219][is.na(state_data[219])] <- 1 - round(nrow(subset(state_data, is.na(state_data[219]))) / nrow(state_data),2)
#state_data[220][is.na(state_data[220])] <- 1 - round(nrow(subset(state_data, is.na(state_data[220]))) / nrow(state_data),2)
#state_data[221][is.na(state_data[221])] <- 1 - round(nrow(subset(state_data, is.na(state_data[221]))) / nrow(state_data),2)
#state_data[222][is.na(state_data[222])] <- 1 - round(nrow(subset(state_data, is.na(state_data[222]))) / nrow(state_data),2)
#state_data[223][is.na(state_data[223])] <- 1 - round(nrow(subset(state_data, is.na(state_data[223]))) / nrow(state_data),2)
#state_data[224][is.na(state_data[224])] <- 1 - round(nrow(subset(state_data, is.na(state_data[224]))) / nrow(state_data),2)
#state_data[225][is.na(state_data[225])] <- 1 - round(nrow(subset(state_data, is.na(state_data[225]))) / nrow(state_data),2)
#state_data[226][is.na(state_data[226])] <- 1 - round(nrow(subset(state_data, is.na(state_data[226]))) / nrow(state_data),2)
#state_data[227][is.na(state_data[227])] <- 1 - round(nrow(subset(state_data, is.na(state_data[227]))) / nrow(state_data),2)
#state_data[228][is.na(state_data[228])] <- 1 - round(nrow(subset(state_data, is.na(state_data[228]))) / nrow(state_data),2)
#state_data[229][is.na(state_data[229])] <- 1 - round(nrow(subset(state_data, is.na(state_data[229]))) / nrow(state_data),2)
#state_data[230][is.na(state_data[230])] <- 1 - round(nrow(subset(state_data, is.na(state_data[230]))) / nrow(state_data),2)
#state_data[231][is.na(state_data[231])] <- 1 - round(nrow(subset(state_data, is.na(state_data[231]))) / nrow(state_data),2)
#state_data[232][is.na(state_data[232])] <- 1 - round(nrow(subset(state_data, is.na(state_data[232]))) / nrow(state_data),2)
#state_data[233][is.na(state_data[233])] <- 1 - round(nrow(subset(state_data, is.na(state_data[233]))) / nrow(state_data),2)
#state_data[234][is.na(state_data[234])] <- 1 - round(nrow(subset(state_data, is.na(state_data[234]))) / nrow(state_data),2)
#state_data[235][is.na(state_data[235])] <- 1 - round(nrow(subset(state_data, is.na(state_data[235]))) / nrow(state_data),2)
#state_data[236][is.na(state_data[236])] <- 1 - round(nrow(subset(state_data, is.na(state_data[236]))) / nrow(state_data),2)
#state_data[237][is.na(state_data[237])] <- 1 - round(nrow(subset(state_data, is.na(state_data[237]))) / nrow(state_data),2)
#state_data[238][is.na(state_data[238])] <- 1 - round(nrow(subset(state_data, is.na(state_data[238]))) / nrow(state_data),2)
#state_data[239][is.na(state_data[239])] <- 1 - round(nrow(subset(state_data, is.na(state_data[239]))) / nrow(state_data),2)
#state_data[240][is.na(state_data[240])] <- 1 - round(nrow(subset(state_data, is.na(state_data[240]))) / nrow(state_data),2)
#state_data[241][is.na(state_data[241])] <- 1 - round(nrow(subset(state_data, is.na(state_data[241]))) / nrow(state_data),2)
#state_data[242][is.na(state_data[242])] <- 1 - round(nrow(subset(state_data, is.na(state_data[242]))) / nrow(state_data),2)
#state_data[243][is.na(state_data[243])] <- 1 - round(nrow(subset(state_data, is.na(state_data[243]))) / nrow(state_data),2)
#state_data[244][is.na(state_data[244])] <- 1 - round(nrow(subset(state_data, is.na(state_data[244]))) / nrow(state_data),2)
#state_data[245][is.na(state_data[245])] <- 1 - round(nrow(subset(state_data, is.na(state_data[245]))) / nrow(state_data),2)
#state_data[246][is.na(state_data[246])] <- 1 - round(nrow(subset(state_data, is.na(state_data[246]))) / nrow(state_data),2)
#state_data[247][is.na(state_data[247])] <- 1 - round(nrow(subset(state_data, is.na(state_data[247]))) / nrow(state_data),2)
#state_data[248][is.na(state_data[248])] <- 1 - round(nrow(subset(state_data, is.na(state_data[248]))) / nrow(state_data),2)
#state_data[249][is.na(state_data[249])] <- 1 - round(nrow(subset(state_data, is.na(state_data[249]))) / nrow(state_data),2)
#state_data[250][is.na(state_data[250])] <- 1 - round(nrow(subset(state_data, is.na(state_data[250]))) / nrow(state_data),2)
#state_data[251][is.na(state_data[251])] <- 1 - round(nrow(subset(state_data, is.na(state_data[251]))) / nrow(state_data),2)
#state_data[252][is.na(state_data[252])] <- 1 - round(nrow(subset(state_data, is.na(state_data[252]))) / nrow(state_data),2)
#state_data[253][is.na(state_data[253])] <- 1 - round(nrow(subset(state_data, is.na(state_data[253]))) / nrow(state_data),2)
#state_data[254][is.na(state_data[254])] <- 1 - round(nrow(subset(state_data, is.na(state_data[254]))) / nrow(state_data),2)
#state_data[255][is.na(state_data[255])] <- 1 - round(nrow(subset(state_data, is.na(state_data[255]))) / nrow(state_data),2)
#state_data[256][is.na(state_data[256])] <- 1 - round(nrow(subset(state_data, is.na(state_data[256]))) / nrow(state_data),2)
#state_data[257][is.na(state_data[257])] <- 1 - round(nrow(subset(state_data, is.na(state_data[257]))) / nrow(state_data),2)
#state_data[258][is.na(state_data[258])] <- 1 - round(nrow(subset(state_data, is.na(state_data[258]))) / nrow(state_data),2)
#state_data[259][is.na(state_data[259])] <- 1 - round(nrow(subset(state_data, is.na(state_data[259]))) / nrow(state_data),2)
#state_data[260][is.na(state_data[260])] <- 1 - round(nrow(subset(state_data, is.na(state_data[260]))) / nrow(state_data),2)
#state_data[261][is.na(state_data[261])] <- 1 - round(nrow(subset(state_data, is.na(state_data[261]))) / nrow(state_data),2)
#state_data[262][is.na(state_data[262])] <- 1 - round(nrow(subset(state_data, is.na(state_data[262]))) / nrow(state_data),2)
#state_data[263][is.na(state_data[263])] <- 1 - round(nrow(subset(state_data, is.na(state_data[263]))) / nrow(state_data),2)
#state_data[264][is.na(state_data[264])] <- 1 - round(nrow(subset(state_data, is.na(state_data[264]))) / nrow(state_data),2)
#state_data[265][is.na(state_data[265])] <- 1 - round(nrow(subset(state_data, is.na(state_data[265]))) / nrow(state_data),2)
#state_data[266][is.na(state_data[266])] <- 1 - round(nrow(subset(state_data, is.na(state_data[266]))) / nrow(state_data),2)
#state_data[267][is.na(state_data[267])] <- 1 - round(nrow(subset(state_data, is.na(state_data[267]))) / nrow(state_data),2)
#state_data[268][is.na(state_data[268])] <- 1 - round(nrow(subset(state_data, is.na(state_data[268]))) / nrow(state_data),2)
#state_data[269][is.na(state_data[269])] <- 1 - round(nrow(subset(state_data, is.na(state_data[269]))) / nrow(state_data),2)
#state_data[270][is.na(state_data[270])] <- 1 - round(nrow(subset(state_data, is.na(state_data[270]))) / nrow(state_data),2)
#state_data[271][is.na(state_data[271])] <- 1 - round(nrow(subset(state_data, is.na(state_data[271]))) / nrow(state_data),2)
#state_data[272][is.na(state_data[272])] <- 1 - round(nrow(subset(state_data, is.na(state_data[272]))) / nrow(state_data),2)
#state_data[273][is.na(state_data[273])] <- 1 - round(nrow(subset(state_data, is.na(state_data[273]))) / nrow(state_data),2)
#state_data[274][is.na(state_data[274])] <- 1 - round(nrow(subset(state_data, is.na(state_data[274]))) / nrow(state_data),2)
#state_data[275][is.na(state_data[275])] <- 1 - round(nrow(subset(state_data, is.na(state_data[275]))) / nrow(state_data),2)
#state_data[276][is.na(state_data[276])] <- 1 - round(nrow(subset(state_data, is.na(state_data[276]))) / nrow(state_data),2)
#state_data[277][is.na(state_data[277])] <- 1 - round(nrow(subset(state_data, is.na(state_data[277]))) / nrow(state_data),2)
#state_data[278][is.na(state_data[278])] <- 1 - round(nrow(subset(state_data, is.na(state_data[278]))) / nrow(state_data),2)
#state_data[279][is.na(state_data[279])] <- 1 - round(nrow(subset(state_data, is.na(state_data[279]))) / nrow(state_data),2)
#
#
#state_data[1] <- round(state_data[1] * 10)
#state_data[2] <- round(state_data[2] * 10)
#state_data[3] <- round(state_data[3] * 10)
#state_data[4] <- round(state_data[4] * 10)
#state_data[5] <- round(state_data[5] * 10)
#state_data[6] <- round(state_data[6] * 10)
#state_data[7] <- round(state_data[7] * 10)
#state_data[8] <- round(state_data[8] * 10)
#state_data[9] <- round(state_data[9] * 10)
#state_data[10] <- round(state_data[10] * 10)
#state_data[11] <- round(state_data[11] * 10)
#state_data[12] <- round(state_data[12] * 10)
#state_data[13] <- round(state_data[13] * 10)
#state_data[14] <- round(state_data[14] * 10)
#state_data[15] <- round(state_data[15] * 10)
#state_data[16] <- round(state_data[16] * 10)
#state_data[17] <- round(state_data[17] * 10)
#state_data[18] <- round(state_data[18] * 10)
#state_data[19] <- round(state_data[19] * 10)
#state_data[20] <- round(state_data[20] * 10)
#state_data[21] <- round(state_data[21] * 10)
#state_data[22] <- round(state_data[22] * 10)
#state_data[23] <- round(state_data[23] * 10)
#state_data[24] <- round(state_data[24] * 10)
#state_data[25] <- round(state_data[25] * 10)
#state_data[26] <- round(state_data[26] * 10)
#state_data[27] <- round(state_data[27] * 10)
#state_data[28] <- round(state_data[28] * 10)
#state_data[29] <- round(state_data[29] * 10)
#state_data[30] <- round(state_data[30] * 10)
#state_data[31] <- round(state_data[31] * 10)
#state_data[32] <- round(state_data[32] * 10)
#state_data[33] <- round(state_data[33] * 10)
#state_data[34] <- round(state_data[34] * 10)
#state_data[35] <- round(state_data[35] * 10)
#state_data[36] <- round(state_data[36] * 10)
#state_data[37] <- round(state_data[37] * 10)
#state_data[38] <- round(state_data[38] * 10)
#state_data[39] <- round(state_data[39] * 10)
#state_data[40] <- round(state_data[40] * 10)
#state_data[41] <- round(state_data[41] * 10)
#state_data[42] <- round(state_data[42] * 10)
#state_data[43] <- round(state_data[43] * 10)
#state_data[44] <- round(state_data[44] * 10)
#state_data[45] <- round(state_data[45] * 10)
#state_data[46] <- round(state_data[46] * 10)
#state_data[47] <- round(state_data[47] * 10)
#state_data[48] <- round(state_data[48] * 10)
#state_data[49] <- round(state_data[49] * 10)
#state_data[50] <- round(state_data[50] * 10)
#state_data[51] <- round(state_data[51] * 10)
#state_data[52] <- round(state_data[52] * 10)
#state_data[53] <- round(state_data[53] * 10)
#state_data[54] <- round(state_data[54] * 10)
#state_data[55] <- round(state_data[55] * 10)
#state_data[56] <- round(state_data[56] * 10)
#state_data[57] <- round(state_data[57] * 10)
#state_data[58] <- round(state_data[58] * 10)
#state_data[59] <- round(state_data[59] * 10)
#state_data[60] <- round(state_data[60] * 10)
#state_data[61] <- round(state_data[61] * 10)
#state_data[62] <- round(state_data[62] * 10)
#state_data[63] <- round(state_data[63] * 10)
#state_data[64] <- round(state_data[64] * 10)
#state_data[65] <- round(state_data[65] * 10)
#state_data[66] <- round(state_data[66] * 10)
#state_data[67] <- round(state_data[67] * 10)
#state_data[68] <- round(state_data[68] * 10)
#state_data[69] <- round(state_data[69] * 10)
#state_data[70] <- round(state_data[70] * 10) 
#state_data[71] <- round(state_data[71] * 10)
#state_data[72] <- round(state_data[72] * 10)
#state_data[73] <- round(state_data[73] * 10)
#state_data[74] <- round(state_data[74] * 10)
#state_data[75] <- round(state_data[75] * 10)
#state_data[76] <- round(state_data[76] * 10)
#state_data[77] <- round(state_data[77] * 10)
#state_data[78] <- round(state_data[78] * 10)
#state_data[79] <- round(state_data[79] * 10)
#state_data[80] <- round(state_data[80] * 10)
#state_data[81] <- round(state_data[81] * 10)
#state_data[82] <- round(state_data[82] * 10)
#state_data[83] <- round(state_data[83] * 10)
#state_data[84] <- round(state_data[84] * 10)
#state_data[85] <- round(state_data[85] * 10)
#state_data[86] <- round(state_data[86] * 10)
#state_data[87] <- round(state_data[87] * 10)
#state_data[88] <- round(state_data[88] * 10)
#state_data[89] <- round(state_data[89] * 10)
#state_data[90] <- round(state_data[90] * 10)
#state_data[91] <- round(state_data[91] * 10)
#state_data[92] <- round(state_data[92] * 10)
#state_data[93] <- round(state_data[93] * 10)
#state_data[94] <- round(state_data[94] * 10)
#state_data[95] <- round(state_data[95] * 10)
#state_data[96] <- round(state_data[96] * 10)
#state_data[97] <- round(state_data[97] * 10)
#state_data[98] <- round(state_data[98] * 10)
#state_data[99] <- round(state_data[99] * 10)
#state_data[100] <- round(state_data[100] * 10)
#state_data[101] <- round(state_data[101] * 10)
#state_data[102] <- round(state_data[102] * 10)
#state_data[103] <- round(state_data[103] * 10)
#state_data[104] <- round(state_data[104] * 10)
#state_data[105] <- round(state_data[105] * 10)
#state_data[106] <- round(state_data[106] * 10)
#state_data[107] <- round(state_data[107] * 10)
#state_data[108] <- round(state_data[108] * 10)
#state_data[109] <- round(state_data[109] * 10)	  
#state_data[110] <- round(state_data[110] * 10)
#state_data[111] <- round(state_data[111] * 10)
#state_data[112] <- round(state_data[112] * 10)
#state_data[113] <- round(state_data[113] * 10)
#state_data[114] <- round(state_data[114] * 10)
#state_data[115] <- round(state_data[115] * 10)
#state_data[116] <- round(state_data[116] * 10)
#state_data[117] <- round(state_data[117] * 10)
#state_data[118] <- round(state_data[118] * 10)
#state_data[119] <- round(state_data[119] * 10)
#state_data[120] <- round(state_data[120] * 10)
#state_data[121] <- round(state_data[121] * 10)
#state_data[122] <- round(state_data[122] * 10)
#state_data[123] <- round(state_data[123] * 10)
#state_data[124] <- round(state_data[124] * 10)
#state_data[125] <- round(state_data[125] * 10)
#state_data[126] <- round(state_data[126] * 10)
#state_data[127] <- round(state_data[127] * 10)
#state_data[128] <- round(state_data[128] * 10)
#state_data[129] <- round(state_data[129] * 10)
#state_data[130] <- round(state_data[130] * 10)
#state_data[131] <- round(state_data[131] * 10)
#state_data[132] <- round(state_data[132] * 10)
#state_data[133] <- round(state_data[133] * 10)
#state_data[134] <- round(state_data[134] * 10)
#state_data[135] <- round(state_data[135] * 10)
#state_data[136] <- round(state_data[136] * 10)
#state_data[137] <- round(state_data[137] * 10)
#state_data[138] <- round(state_data[138] * 10)
#state_data[139] <- round(state_data[139] * 10)
#state_data[140] <- round(state_data[140] * 10)
#state_data[141] <- round(state_data[141] * 10)
#state_data[142] <- round(state_data[142] * 10)
#state_data[143] <- round(state_data[143] * 10)
#state_data[144] <- round(state_data[144] * 10)
#state_data[145] <- round(state_data[145] * 10)
#state_data[146] <- round(state_data[146] * 10)
#state_data[147] <- round(state_data[147] * 10)
#state_data[148] <- round(state_data[148] * 10)
#state_data[149] <- round(state_data[149] * 10)
#state_data[150] <- round(state_data[150] * 10)
#state_data[151] <- round(state_data[151] * 10)
#state_data[152] <- round(state_data[152] * 10)
#state_data[153] <- round(state_data[153] * 10)
#state_data[154] <- round(state_data[154] * 10)
#state_data[155] <- round(state_data[155] * 10)
#state_data[156] <- round(state_data[156] * 10)
#state_data[157] <- round(state_data[157] * 10)
#state_data[158] <- round(state_data[158] * 10)
#state_data[159] <- round(state_data[159] * 10)
#state_data[160] <- round(state_data[160] * 10)
#state_data[161] <- round(state_data[161] * 10)
#state_data[162] <- round(state_data[162] * 10)
#state_data[163] <- round(state_data[163] * 10)
#state_data[164] <- round(state_data[164] * 10)
#state_data[165] <- round(state_data[165] * 10)
#state_data[166] <- round(state_data[166] * 10)
#state_data[167] <- round(state_data[167] * 10)
#state_data[168] <- round(state_data[168] * 10)
#state_data[169] <- round(state_data[169] * 10)
#state_data[170] <- round(state_data[170] * 10)
#state_data[171] <- round(state_data[171] * 10)
#state_data[172] <- round(state_data[172] * 10)
#state_data[173] <- round(state_data[173] * 10)
#state_data[174] <- round(state_data[174] * 10)
#state_data[175] <- round(state_data[175] * 10)
#state_data[176] <- round(state_data[176] * 10)
#state_data[177] <- round(state_data[177] * 10)
#state_data[178] <- round(state_data[178] * 10)
#state_data[179] <- round(state_data[179] * 10)
#state_data[180] <- round(state_data[180] * 10)
#state_data[181] <- round(state_data[181] * 10)
#state_data[182] <- round(state_data[182] * 10)
#state_data[183] <- round(state_data[183] * 10)
#state_data[184] <- round(state_data[184] * 10)
#state_data[185] <- round(state_data[185] * 10)
#state_data[186] <- round(state_data[186] * 10)
#state_data[187] <- round(state_data[187] * 10)
#state_data[188] <- round(state_data[188] * 10)
#state_data[189] <- round(state_data[189] * 10)
#state_data[190] <- round(state_data[190] * 10)
#state_data[191] <- round(state_data[191] * 10)
#state_data[192] <- round(state_data[192] * 10)
#state_data[193] <- round(state_data[193] * 10)
#state_data[194] <- round(state_data[194] * 10)
#state_data[195] <- round(state_data[195] * 10)
#state_data[196] <- round(state_data[196] * 10)
#state_data[197] <- round(state_data[197] * 10)
#state_data[198] <- round(state_data[198] * 10)
#state_data[199] <- round(state_data[199] * 10)
#state_data[200] <- round(state_data[200] * 10)
#state_data[201] <- round(state_data[201] * 10)
#state_data[202] <- round(state_data[202] * 10)
#state_data[203] <- round(state_data[203] * 10)
#state_data[204] <- round(state_data[204] * 10)
#state_data[205] <- round(state_data[205] * 10)
#state_data[206] <- round(state_data[206] * 10)
#state_data[207] <- round(state_data[207] * 10)
#state_data[208] <- round(state_data[208] * 10)
#state_data[209] <- round(state_data[209] * 10)
#state_data[210] <- round(state_data[210] * 10)
#state_data[211] <- round(state_data[211] * 10)
#state_data[212] <- round(state_data[212] * 10)
#state_data[213] <- round(state_data[213] * 10)
#state_data[214] <- round(state_data[214] * 10)
#state_data[215] <- round(state_data[215] * 10)
#state_data[216] <- round(state_data[216] * 10)
#state_data[217] <- round(state_data[217] * 10)
#state_data[218] <- round(state_data[218] * 10)
#state_data[219] <- round(state_data[219] * 10)
#state_data[220] <- round(state_data[220] * 10)
#state_data[221] <- round(state_data[221] * 10)
#state_data[222] <- round(state_data[222] * 10)
#state_data[223] <- round(state_data[223] * 10)
#state_data[224] <- round(state_data[224] * 10)
#state_data[225] <- round(state_data[225] * 10)
#state_data[226] <- round(state_data[226] * 10)
#state_data[227] <- round(state_data[227] * 10)
#state_data[228] <- round(state_data[228] * 10)
#state_data[229] <- round(state_data[229] * 10)
#state_data[230] <- round(state_data[230] * 10)
#state_data[231] <- round(state_data[231] * 10)
#state_data[232] <- round(state_data[232] * 10)
#state_data[233] <- round(state_data[233] * 10)
#state_data[234] <- round(state_data[234] * 10)
#state_data[235] <- round(state_data[235] * 10)
#state_data[236] <- round(state_data[236] * 10)
#state_data[237] <- round(state_data[237] * 10)
#state_data[238] <- round(state_data[238] * 10)
#state_data[239] <- round(state_data[239] * 10)
#state_data[240] <- round(state_data[240] * 10)
#state_data[241] <- round(state_data[241] * 10)
#state_data[242] <- round(state_data[242] * 10)
#state_data[243] <- round(state_data[243] * 10)
#state_data[244] <- round(state_data[244] * 10)
#state_data[245] <- round(state_data[245] * 10)
#state_data[246] <- round(state_data[246] * 10)
#state_data[247] <- round(state_data[247] * 10)
#state_data[248] <- round(state_data[248] * 10)
#state_data[249] <- round(state_data[249] * 10)
#state_data[250] <- round(state_data[250] * 10)
#state_data[251] <- round(state_data[251] * 10)
#state_data[252] <- round(state_data[252] * 10)
#state_data[253] <- round(state_data[253] * 10)
#state_data[254] <- round(state_data[254] * 10)
#state_data[255] <- round(state_data[255] * 10)
#state_data[256] <- round(state_data[256] * 10)
#state_data[257] <- round(state_data[257] * 10)
#state_data[258] <- round(state_data[258] * 10)
#state_data[259] <- round(state_data[259] * 10)
#state_data[260] <- round(state_data[260] * 10)
#state_data[261] <- round(state_data[261] * 10)
#state_data[262] <- round(state_data[262] * 10)
#state_data[263] <- round(state_data[263] * 10)
#state_data[264] <- round(state_data[264] * 10)
#state_data[265] <- round(state_data[265] * 10)
#state_data[266] <- round(state_data[266] * 10)
#state_data[267] <- round(state_data[267] * 10)
#state_data[268] <- round(state_data[268] * 10)
#state_data[269] <- round(state_data[269] * 10)
#state_data[270] <- round(state_data[270] * 10)
#state_data[271] <- round(state_data[271] * 10)
#state_data[272] <- round(state_data[272] * 10)
#state_data[273] <- round(state_data[273] * 10)
#state_data[274] <- round(state_data[274] * 10)
#state_data[275] <- round(state_data[275] * 10)
#state_data[276] <- round(state_data[276] * 10)
#state_data[277] <- round(state_data[277] * 10)
#state_data[278] <- round(state_data[278] * 10)
#state_data[279] <- round(state_data[279] * 10)


#data_missing50 <- state_data[ -c(10,11,12,13,14,15,16,17,18,19,20,21,28,47,55,61,62,68,78,79,80,83,84,85,87,91,93,95,97,99,101,102,103,104,105,106,108,110,112,114,116,118,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,157,158,159,160,161,162,163,164,165,166,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,207,214,215,216,218,232,262,263,267,268,269,270,271,272,273,274,275,276,277,278) ]
#
#write.csv(na.omit(data_missing50), "LLCP2020XPT_Grounded_MissingFix.csv")


setwd('C:/Users/mdjaw/OneDrive/Documents/Markian Training/Research_USQ/USCenterDiseaseControlPrevention/LLCP2019XPT')
KG <- read.csv('BRFSS_KG_2019.csv')
KG$Word.Count <- as.integer(KG$Word.Count)
#KG$Confidence <- (1 - as.numeric(KG$P.Value))
#KG$WCC <- KG$Word.Count * KG$Confidence 
KG_AGG <- aggregate(KG$Word.Count, by=list(Column.A=KG$Column.A), FUN=sum)
#KG_CONF <- aggregate(KG$Confidence, by=list(Column.A=KG$Column.A), FUN=sum)
#KG_WCC <- aggregate(KG$WCC, by=list(Column.A=KG$Column.A), FUN=sum)

#state_data[1] <- (state_data[1]) * (KG_AGG$x[KG_AGG$Column.A == 1])
#state_data[2] <- (state_data[2]) * (KG_AGG$x[KG_AGG$Column.A == 2])
#state_data[3] <- (state_data[3]) * (KG_AGG$x[KG_AGG$Column.A == 3])
#state_data[4] <- (state_data[4]) * (KG_AGG$x[KG_AGG$Column.A == 4])
#state_data[5] <- (state_data[5]) * (KG_AGG$x[KG_AGG$Column.A == 5])
#state_data[6] <- (state_data[6]) * (KG_AGG$x[KG_AGG$Column.A == 6])
#state_data[7] <- (state_data[7]) * (KG_AGG$x[KG_AGG$Column.A == 7])
#state_data[8] <- (state_data[8]) * (KG_AGG$x[KG_AGG$Column.A == 8])
#state_data[9] <- (state_data[9]) * (KG_AGG$x[KG_AGG$Column.A == 9])
#state_data[10] <- (state_data[10]) * (KG_AGG$x[KG_AGG$Column.A == 10])
#state_data[11] <- (state_data[11]) * (KG_AGG$x[KG_AGG$Column.A == 11])
#state_data[12] <- (state_data[12]) * (KG_AGG$x[KG_AGG$Column.A == 12])
#state_data[13] <- (state_data[13]) * (KG_AGG$x[KG_AGG$Column.A == 13])
#state_data[14] <- (state_data[14]) * (KG_AGG$x[KG_AGG$Column.A == 14])
#state_data[15] <- (state_data[15]) * (KG_AGG$x[KG_AGG$Column.A == 15])
#state_data[16] <- (state_data[16]) * (KG_AGG$x[KG_AGG$Column.A == 16])
#state_data[17] <- (state_data[17]) * (KG_AGG$x[KG_AGG$Column.A == 17])
#state_data[18] <- (state_data[18]) * (KG_AGG$x[KG_AGG$Column.A == 18])
#state_data[19] <- (state_data[19]) * (KG_AGG$x[KG_AGG$Column.A == 19])
#state_data[20] <- (state_data[20]) * (KG_AGG$x[KG_AGG$Column.A == 20])
#state_data[21] <- (state_data[21]) * (KG_AGG$x[KG_AGG$Column.A == 21])
#state_data[22] <- (state_data[22]) * (KG_AGG$x[KG_AGG$Column.A == 22])
#state_data[23] <- (state_data[23]) * (KG_AGG$x[KG_AGG$Column.A == 23])
#state_data[24] <- (state_data[24]) * (KG_AGG$x[KG_AGG$Column.A == 24])
#state_data[25] <- (state_data[25]) * (KG_AGG$x[KG_AGG$Column.A == 25])
#state_data[26] <- (state_data[26]) * (KG_AGG$x[KG_AGG$Column.A == 26])
#state_data[27] <- (state_data[27]) * (KG_AGG$x[KG_AGG$Column.A == 27])
#state_data[28] <- (state_data[28]) * (KG_AGG$x[KG_AGG$Column.A == 28])
#state_data[29] <- (state_data[29]) * (KG_AGG$x[KG_AGG$Column.A == 29])
#state_data[30] <- (state_data[30]) * (KG_AGG$x[KG_AGG$Column.A == 30])
#state_data[31] <- (state_data[31]) * (KG_AGG$x[KG_AGG$Column.A == 31])
#state_data[32] <- (state_data[32]) * (KG_AGG$x[KG_AGG$Column.A == 32])
#state_data[33] <- (state_data[33]) * (KG_AGG$x[KG_AGG$Column.A == 33])
#state_data[34] <- (state_data[34]) * (KG_AGG$x[KG_AGG$Column.A == 34])
#state_data[35] <- (state_data[35]) * (KG_AGG$x[KG_AGG$Column.A == 35])
#state_data[36] <- (state_data[36]) * (KG_AGG$x[KG_AGG$Column.A == 36])
#state_data[37] <- (state_data[37]) * (KG_AGG$x[KG_AGG$Column.A == 37])
#state_data[38] <- (state_data[38]) * (KG_AGG$x[KG_AGG$Column.A == 38])
#state_data[39] <- (state_data[39]) * (KG_AGG$x[KG_AGG$Column.A == 39])
#state_data[30] <- (state_data[30]) * (KG_AGG$x[KG_AGG$Column.A == 40])
#state_data[41] <- (state_data[41]) * (KG_AGG$x[KG_AGG$Column.A == 41])
#state_data[42] <- (state_data[42]) * (KG_AGG$x[KG_AGG$Column.A == 42])
#state_data[43] <- (state_data[43]) * (KG_AGG$x[KG_AGG$Column.A == 43])
#state_data[44] <- (state_data[44]) * (KG_AGG$x[KG_AGG$Column.A == 44])
#state_data[45] <- (state_data[45]) * (KG_AGG$x[KG_AGG$Column.A == 45])
#state_data[46] <- (state_data[46]) * (KG_AGG$x[KG_AGG$Column.A == 46])
#state_data[47] <- (state_data[47]) * (KG_AGG$x[KG_AGG$Column.A == 47])
#state_data[48] <- (state_data[48]) * (KG_AGG$x[KG_AGG$Column.A == 48])
#state_data[49] <- (state_data[49]) * (KG_AGG$x[KG_AGG$Column.A == 49])
#state_data[50] <- (state_data[50]) * (KG_AGG$x[KG_AGG$Column.A == 50])
#state_data[51] <- (state_data[51]) * (KG_AGG$x[KG_AGG$Column.A == 51])
#state_data[52] <- (state_data[52]) * (KG_AGG$x[KG_AGG$Column.A == 52])
#state_data[53] <- (state_data[53]) * (KG_AGG$x[KG_AGG$Column.A == 53])
#state_data[54] <- (state_data[54]) * (KG_AGG$x[KG_AGG$Column.A == 54])
#state_data[55] <- (state_data[55]) * (KG_AGG$x[KG_AGG$Column.A == 55])
#state_data[56] <- (state_data[56]) * (KG_AGG$x[KG_AGG$Column.A == 56])
#state_data[57] <- (state_data[57]) * (KG_AGG$x[KG_AGG$Column.A == 57])
#state_data[58] <- (state_data[58]) * (KG_AGG$x[KG_AGG$Column.A == 58])
#state_data[59] <- (state_data[59]) * (KG_AGG$x[KG_AGG$Column.A == 59])
#state_data[60] <- (state_data[60]) * (KG_AGG$x[KG_AGG$Column.A == 60])
#state_data[61] <- (state_data[61]) * (KG_AGG$x[KG_AGG$Column.A == 61])
#state_data[62] <- (state_data[62]) * (KG_AGG$x[KG_AGG$Column.A == 62])
#state_data[63] <- (state_data[63]) * (KG_AGG$x[KG_AGG$Column.A == 63])
#state_data[64] <- (state_data[64]) * (KG_AGG$x[KG_AGG$Column.A == 64])
#state_data[65] <- (state_data[65]) * (KG_AGG$x[KG_AGG$Column.A == 65])
#state_data[66] <- (state_data[66]) * (KG_AGG$x[KG_AGG$Column.A == 66])
#state_data[67] <- (state_data[67]) * (KG_AGG$x[KG_AGG$Column.A == 67])
#state_data[68] <- (state_data[68]) * (KG_AGG$x[KG_AGG$Column.A == 68])
#state_data[69] <- (state_data[69]) * (KG_AGG$x[KG_AGG$Column.A == 69])
#state_data[70] <- (state_data[70]) * (KG_AGG$x[KG_AGG$Column.A == 70])
#state_data[71] <- (state_data[71]) * (KG_AGG$x[KG_AGG$Column.A == 71])
#state_data[72] <- (state_data[72]) * (KG_AGG$x[KG_AGG$Column.A == 72])
#state_data[73] <- (state_data[73]) * (KG_AGG$x[KG_AGG$Column.A == 73])
#state_data[74] <- (state_data[74]) * (KG_AGG$x[KG_AGG$Column.A == 74])
#state_data[75] <- (state_data[75]) * (KG_AGG$x[KG_AGG$Column.A == 75])
#state_data[76] <- (state_data[76]) * (KG_AGG$x[KG_AGG$Column.A == 76])
#state_data[77] <- (state_data[77]) * (KG_AGG$x[KG_AGG$Column.A == 77])
#state_data[78] <- (state_data[78]) * (KG_AGG$x[KG_AGG$Column.A == 78])
#state_data[79] <- (state_data[79]) * (KG_AGG$x[KG_AGG$Column.A == 79])
#state_data[80] <- (state_data[80]) * (KG_AGG$x[KG_AGG$Column.A == 80])
#state_data[81] <- (state_data[81]) * (KG_AGG$x[KG_AGG$Column.A == 81])
#state_data[82] <- (state_data[82]) * (KG_AGG$x[KG_AGG$Column.A == 82])
#state_data[83] <- (state_data[83]) * (KG_AGG$x[KG_AGG$Column.A == 83])
#state_data[84] <- (state_data[84]) * (KG_AGG$x[KG_AGG$Column.A == 84])
#state_data[85] <- (state_data[85]) * (KG_AGG$x[KG_AGG$Column.A == 85])
#state_data[86] <- (state_data[86]) * (KG_AGG$x[KG_AGG$Column.A == 86])
#state_data[87] <- (state_data[87]) * (KG_AGG$x[KG_AGG$Column.A == 87])
#state_data[88] <- (state_data[88]) * (KG_AGG$x[KG_AGG$Column.A == 88])
#state_data[89] <- (state_data[89]) * (KG_AGG$x[KG_AGG$Column.A == 89])
#state_data[90] <- (state_data[90]) * (KG_AGG$x[KG_AGG$Column.A == 90])
#state_data[91] <- (state_data[91]) * (KG_AGG$x[KG_AGG$Column.A == 91])
#state_data[92] <- (state_data[92]) * (KG_AGG$x[KG_AGG$Column.A == 92])
#state_data[93] <- (state_data[93]) * (KG_AGG$x[KG_AGG$Column.A == 93])
#state_data[94] <- (state_data[94]) * (KG_AGG$x[KG_AGG$Column.A == 94])
#state_data[95] <- (state_data[95]) * (KG_AGG$x[KG_AGG$Column.A == 95])
#state_data[96] <- (state_data[96]) * (KG_AGG$x[KG_AGG$Column.A == 96])
#state_data[97] <- (state_data[97]) * (KG_AGG$x[KG_AGG$Column.A == 97])
#state_data[98] <- (state_data[98]) * (KG_AGG$x[KG_AGG$Column.A == 98])
#state_data[99] <- (state_data[99]) * (KG_AGG$x[KG_AGG$Column.A == 99])
#state_data[100] <- (state_data[100]) * (KG_AGG$x[KG_AGG$Column.A == 100])
#state_data[101] <- (state_data[101]) * (KG_AGG$x[KG_AGG$Column.A == 101])
#state_data[102] <- (state_data[102]) * (KG_AGG$x[KG_AGG$Column.A == 102])
#state_data[103] <- (state_data[103]) * (KG_AGG$x[KG_AGG$Column.A == 103])
#state_data[104] <- (state_data[104]) * (KG_AGG$x[KG_AGG$Column.A == 104])
#state_data[105] <- (state_data[105]) * (KG_AGG$x[KG_AGG$Column.A == 105])
#state_data[106] <- (state_data[106]) * (KG_AGG$x[KG_AGG$Column.A == 106])
#state_data[107] <- (state_data[107]) * (KG_AGG$x[KG_AGG$Column.A == 107])
#state_data[108] <- (state_data[108]) * (KG_AGG$x[KG_AGG$Column.A == 108])
#state_data[109] <- (state_data[109]) * (KG_AGG$x[KG_AGG$Column.A == 109])
#state_data[110] <- (state_data[110]) * (KG_AGG$x[KG_AGG$Column.A == 110])
#state_data[111] <- (state_data[111]) * (KG_AGG$x[KG_AGG$Column.A == 111])
#state_data[112] <- (state_data[112]) * (KG_AGG$x[KG_AGG$Column.A == 112])
#state_data[113] <- (state_data[113]) * (KG_AGG$x[KG_AGG$Column.A == 113])
#state_data[114] <- (state_data[114]) * (KG_AGG$x[KG_AGG$Column.A == 114])
#state_data[115] <- (state_data[115]) * (KG_AGG$x[KG_AGG$Column.A == 115])
#state_data[116] <- (state_data[116]) * (KG_AGG$x[KG_AGG$Column.A == 116])
#state_data[117] <- (state_data[117]) * (KG_AGG$x[KG_AGG$Column.A == 117])
#state_data[118] <- (state_data[118]) * (KG_AGG$x[KG_AGG$Column.A == 118])
#state_data[119] <- (state_data[119]) * (KG_AGG$x[KG_AGG$Column.A == 119])
#state_data[120] <- (state_data[120]) * (KG_AGG$x[KG_AGG$Column.A == 120])
#state_data[121] <- (state_data[121]) * (KG_AGG$x[KG_AGG$Column.A == 121])
#state_data[122] <- (state_data[122]) * (KG_AGG$x[KG_AGG$Column.A == 122])
#state_data[123] <- (state_data[123]) * (KG_AGG$x[KG_AGG$Column.A == 123])
#state_data[124] <- (state_data[124]) * (KG_AGG$x[KG_AGG$Column.A == 124])
#state_data[125] <- (state_data[125]) * (KG_AGG$x[KG_AGG$Column.A == 125])
#state_data[126] <- (state_data[126]) * (KG_AGG$x[KG_AGG$Column.A == 126])
#state_data[127] <- (state_data[127]) * (KG_AGG$x[KG_AGG$Column.A == 127])
#state_data[128] <- (state_data[128]) * (KG_AGG$x[KG_AGG$Column.A == 128])
#state_data[129] <- (state_data[129]) * (KG_AGG$x[KG_AGG$Column.A == 129])
#state_data[130] <- (state_data[130]) * (KG_AGG$x[KG_AGG$Column.A == 130])
#state_data[131] <- (state_data[131]) * (KG_AGG$x[KG_AGG$Column.A == 131])
#state_data[132] <- (state_data[132]) * (KG_AGG$x[KG_AGG$Column.A == 132])
#state_data[133] <- (state_data[133]) * (KG_AGG$x[KG_AGG$Column.A == 133])
#state_data[134] <- (state_data[134]) * (KG_AGG$x[KG_AGG$Column.A == 134])
#state_data[135] <- (state_data[135]) * (KG_AGG$x[KG_AGG$Column.A == 135])
#state_data[136] <- (state_data[136]) * (KG_AGG$x[KG_AGG$Column.A == 136])
#state_data[137] <- (state_data[137]) * (KG_AGG$x[KG_AGG$Column.A == 137])
#state_data[138] <- (state_data[138]) * (KG_AGG$x[KG_AGG$Column.A == 138])
#state_data[139] <- (state_data[139]) * (KG_AGG$x[KG_AGG$Column.A == 139])
#state_data[130] <- (state_data[130]) * (KG_AGG$x[KG_AGG$Column.A == 140])
#state_data[141] <- (state_data[141]) * (KG_AGG$x[KG_AGG$Column.A == 141])
#state_data[142] <- (state_data[142]) * (KG_AGG$x[KG_AGG$Column.A == 142])
#state_data[143] <- (state_data[143]) * (KG_AGG$x[KG_AGG$Column.A == 143])
#state_data[144] <- (state_data[144]) * (KG_AGG$x[KG_AGG$Column.A == 144])
#state_data[145] <- (state_data[145]) * (KG_AGG$x[KG_AGG$Column.A == 145])
#state_data[146] <- (state_data[146]) * (KG_AGG$x[KG_AGG$Column.A == 146])
#state_data[147] <- (state_data[147]) * (KG_AGG$x[KG_AGG$Column.A == 147])
#state_data[148] <- (state_data[148]) * (KG_AGG$x[KG_AGG$Column.A == 148])
#state_data[149] <- (state_data[149]) * (KG_AGG$x[KG_AGG$Column.A == 149])
#state_data[150] <- (state_data[150]) * (KG_AGG$x[KG_AGG$Column.A == 150])
#state_data[151] <- (state_data[151]) * (KG_AGG$x[KG_AGG$Column.A == 151])
#state_data[152] <- (state_data[152]) * (KG_AGG$x[KG_AGG$Column.A == 152])
#state_data[153] <- (state_data[153]) * (KG_AGG$x[KG_AGG$Column.A == 153])
#state_data[154] <- (state_data[154]) * (KG_AGG$x[KG_AGG$Column.A == 154])
#state_data[155] <- (state_data[155]) * (KG_AGG$x[KG_AGG$Column.A == 155])
#state_data[156] <- (state_data[156]) * (KG_AGG$x[KG_AGG$Column.A == 156])
#state_data[157] <- (state_data[157]) * (KG_AGG$x[KG_AGG$Column.A == 157])
#state_data[158] <- (state_data[158]) * (KG_AGG$x[KG_AGG$Column.A == 158])
#state_data[159] <- (state_data[159]) * (KG_AGG$x[KG_AGG$Column.A == 159])
#state_data[160] <- (state_data[160]) * (KG_AGG$x[KG_AGG$Column.A == 160])
#state_data[161] <- (state_data[161]) * (KG_AGG$x[KG_AGG$Column.A == 161])
#state_data[162] <- (state_data[162]) * (KG_AGG$x[KG_AGG$Column.A == 162])
#state_data[163] <- (state_data[163]) * (KG_AGG$x[KG_AGG$Column.A == 163])
#state_data[164] <- (state_data[164]) * (KG_AGG$x[KG_AGG$Column.A == 164])
#state_data[165] <- (state_data[165]) * (KG_AGG$x[KG_AGG$Column.A == 165])
#state_data[166] <- (state_data[166]) * (KG_AGG$x[KG_AGG$Column.A == 166])
#state_data[167] <- (state_data[167]) * (KG_AGG$x[KG_AGG$Column.A == 167])
#state_data[168] <- (state_data[168]) * (KG_AGG$x[KG_AGG$Column.A == 168])
#state_data[169] <- (state_data[169]) * (KG_AGG$x[KG_AGG$Column.A == 169])
#state_data[170] <- (state_data[170]) * (KG_AGG$x[KG_AGG$Column.A == 170])
#state_data[171] <- (state_data[171]) * (KG_AGG$x[KG_AGG$Column.A == 171])
#state_data[172] <- (state_data[172]) * (KG_AGG$x[KG_AGG$Column.A == 172])
#state_data[173] <- (state_data[173]) * (KG_AGG$x[KG_AGG$Column.A == 173])
#state_data[174] <- (state_data[174]) * (KG_AGG$x[KG_AGG$Column.A == 174])
#state_data[175] <- (state_data[175]) * (KG_AGG$x[KG_AGG$Column.A == 175])
#state_data[176] <- (state_data[176]) * (KG_AGG$x[KG_AGG$Column.A == 176])
#state_data[177] <- (state_data[177]) * (KG_AGG$x[KG_AGG$Column.A == 177])
#state_data[178] <- (state_data[178]) * (KG_AGG$x[KG_AGG$Column.A == 178])
#state_data[179] <- (state_data[179]) * (KG_AGG$x[KG_AGG$Column.A == 179])
#state_data[180] <- (state_data[180]) * (KG_AGG$x[KG_AGG$Column.A == 180])
#state_data[181] <- (state_data[181]) * (KG_AGG$x[KG_AGG$Column.A == 181])
#state_data[182] <- (state_data[182]) * (KG_AGG$x[KG_AGG$Column.A == 182])
#state_data[183] <- (state_data[183]) * (KG_AGG$x[KG_AGG$Column.A == 183])
#state_data[184] <- (state_data[184]) * (KG_AGG$x[KG_AGG$Column.A == 184])
#state_data[185] <- (state_data[185]) * (KG_AGG$x[KG_AGG$Column.A == 185])
#state_data[186] <- (state_data[186]) * (KG_AGG$x[KG_AGG$Column.A == 186])
#state_data[187] <- (state_data[187]) * (KG_AGG$x[KG_AGG$Column.A == 187])
#state_data[188] <- (state_data[188]) * (KG_AGG$x[KG_AGG$Column.A == 188])
#state_data[189] <- (state_data[189]) * (KG_AGG$x[KG_AGG$Column.A == 189])
#state_data[190] <- (state_data[190]) * (KG_AGG$x[KG_AGG$Column.A == 190])
#state_data[191] <- (state_data[191]) * (KG_AGG$x[KG_AGG$Column.A == 191])
#state_data[192] <- (state_data[192]) * (KG_AGG$x[KG_AGG$Column.A == 192])
#state_data[193] <- (state_data[193]) * (KG_AGG$x[KG_AGG$Column.A == 193])
#state_data[194] <- (state_data[194]) * (KG_AGG$x[KG_AGG$Column.A == 194])
#state_data[195] <- (state_data[195]) * (KG_AGG$x[KG_AGG$Column.A == 195])
#state_data[196] <- (state_data[196]) * (KG_AGG$x[KG_AGG$Column.A == 196])
#state_data[197] <- (state_data[197]) * (KG_AGG$x[KG_AGG$Column.A == 197])
#state_data[198] <- (state_data[198]) * (KG_AGG$x[KG_AGG$Column.A == 198])
#state_data[199] <- (state_data[199]) * (KG_AGG$x[KG_AGG$Column.A == 199])
#state_data[200] <- (state_data[200]) * (KG_AGG$x[KG_AGG$Column.A == 200])
#state_data[201] <- (state_data[201]) * (KG_AGG$x[KG_AGG$Column.A == 201])
#state_data[202] <- (state_data[202]) * (KG_AGG$x[KG_AGG$Column.A == 202])
#state_data[203] <- (state_data[203]) * (KG_AGG$x[KG_AGG$Column.A == 203])
#state_data[204] <- (state_data[204]) * (KG_AGG$x[KG_AGG$Column.A == 204])
#state_data[205] <- (state_data[205]) * (KG_AGG$x[KG_AGG$Column.A == 205])
#state_data[206] <- (state_data[206]) * (KG_AGG$x[KG_AGG$Column.A == 206])
#state_data[207] <- (state_data[207]) * (KG_AGG$x[KG_AGG$Column.A == 207])
#state_data[208] <- (state_data[208]) * (KG_AGG$x[KG_AGG$Column.A == 208])
#state_data[209] <- (state_data[209]) * (KG_AGG$x[KG_AGG$Column.A == 209])
#state_data[210] <- (state_data[210]) * (KG_AGG$x[KG_AGG$Column.A == 210])
#state_data[211] <- (state_data[211]) * (KG_AGG$x[KG_AGG$Column.A == 211])
#state_data[212] <- (state_data[212]) * (KG_AGG$x[KG_AGG$Column.A == 212])
#state_data[213] <- (state_data[213]) * (KG_AGG$x[KG_AGG$Column.A == 213])
#state_data[214] <- (state_data[214]) * (KG_AGG$x[KG_AGG$Column.A == 214])
#state_data[215] <- (state_data[215]) * (KG_AGG$x[KG_AGG$Column.A == 215])
#state_data[216] <- (state_data[216]) * (KG_AGG$x[KG_AGG$Column.A == 216])
#state_data[217] <- (state_data[217]) * (KG_AGG$x[KG_AGG$Column.A == 217])
#state_data[218] <- (state_data[218]) * (KG_AGG$x[KG_AGG$Column.A == 218])
#state_data[219] <- (state_data[219]) * (KG_AGG$x[KG_AGG$Column.A == 219])
#state_data[220] <- (state_data[220]) * (KG_AGG$x[KG_AGG$Column.A == 220])
#state_data[221] <- (state_data[221]) * (KG_AGG$x[KG_AGG$Column.A == 221])
#state_data[222] <- (state_data[222]) * (KG_AGG$x[KG_AGG$Column.A == 222])
#state_data[223] <- (state_data[223]) * (KG_AGG$x[KG_AGG$Column.A == 223])
#state_data[224] <- (state_data[224]) * (KG_AGG$x[KG_AGG$Column.A == 224])
#state_data[225] <- (state_data[225]) * (KG_AGG$x[KG_AGG$Column.A == 225])
#state_data[226] <- (state_data[226]) * (KG_AGG$x[KG_AGG$Column.A == 226])
#state_data[227] <- (state_data[227]) * (KG_AGG$x[KG_AGG$Column.A == 227])
#state_data[228] <- (state_data[228]) * (KG_AGG$x[KG_AGG$Column.A == 228])
#state_data[229] <- (state_data[229]) * (KG_AGG$x[KG_AGG$Column.A == 229])
#state_data[230] <- (state_data[230]) * (KG_AGG$x[KG_AGG$Column.A == 230])
#state_data[231] <- (state_data[231]) * (KG_AGG$x[KG_AGG$Column.A == 231])
#state_data[232] <- (state_data[232]) * (KG_AGG$x[KG_AGG$Column.A == 232])
#state_data[233] <- (state_data[233]) * (KG_AGG$x[KG_AGG$Column.A == 233])
#state_data[234] <- (state_data[234]) * (KG_AGG$x[KG_AGG$Column.A == 234])
#state_data[235] <- (state_data[235]) * (KG_AGG$x[KG_AGG$Column.A == 235])
#state_data[236] <- (state_data[236]) * (KG_AGG$x[KG_AGG$Column.A == 236])
#state_data[237] <- (state_data[237]) * (KG_AGG$x[KG_AGG$Column.A == 237])
#state_data[238] <- (state_data[238]) * (KG_AGG$x[KG_AGG$Column.A == 238])
#state_data[239] <- (state_data[239]) * (KG_AGG$x[KG_AGG$Column.A == 239])
#
#

#state_data[3] <- (state_data[3]) * 0
#state_data[60] <- (state_data[60]) * 0
#state_data[94] <- (state_data[94]) * 0
#state_data[100] <- (state_data[100]) * 0
#state_data[172] <- (state_data[172]) * 0
#state_data[192] <- (state_data[192]) * 0
#state_data[203] <- (state_data[203]) * 0
#state_data[212] <- (state_data[212]) * 0
#state_data[235] <- (state_data[235]) * 0
#
#write.csv(state_data, "LLCP2020XPT_Grounded_MissingFix_KG.csv")

#data_missing50 <- state_data[ -c(10,11,12,13,14,15,16,17,18,19,20,21,28,47,55,61,62,68,78,79,80,83,84,85,87,91,93,95,97,99,101,102,103,104,105,106,108,110,112,114,116,118,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,157,158,159,160,161,162,163,164,165,166,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,207,214,215,216,218,232,262,263,267,268,269,270,271,272,273,274,275,276,277,278) ]
#
#write.csv(na.omit(data_missing50), "LLCP2020XPT_Grounded_ML_Nona_KG.csv")

state_data[54][state_data[54] == 1] <- 1 
state_data[54][state_data[54] == 2] <- 1
state_data[54][state_data[54] == 3] <- 0
state_data[54][state_data[54] == 4] <- 0
state_data[54][state_data[54] == 7] <- 0
state_data[54][state_data[54] == 9] <- 0
state_data[54][is.na(state_data[54])] <- 0
state_data[167][is.na(state_data[167])] <- 0
state_data[167][state_data[167] >= 1] <- 0


fifty_percent <- nrow(state_data)/2
na_count <- sapply(state_data, function(x) sum(is.na(x)))
na_50 <- na_count[na_count > fifty_percent]
list_na_count <- as.list(na_count[na_count > fifty_percent])
df_na_count <- as.data.frame(list_na_count)
extract_columns <- colnames(df_na_count)
extract_col_numbers <- which( colnames(state_data) %in% extract_columns )

ml_missing50 <- state_data[ -c(extract_col_numbers) ]


#ml_missing50 <- state_data[ -c(10,11,12,13,14,15,16,17,18,19,20,21,28,47,55,61,62,68,78,79,80,83,84,85,87,91,93,95,97,99,101,102,103,104,105,106,108,110,112,114,116,118,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,157,158,159,160,161,162,163,164,165,166,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,207,214,215,216,218,232,262,263,267,268,269,270,271,272,273,274,275,276,277,278) ]

ml_missing50_nona <- na.omit(ml_missing50)
write.csv(ml_missing50_nona, "LLCP2019XPT_Grounded_ML_nona.csv")


KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 25
KG_FS25 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS25$Column.A))
fs_list

#KG_AGG_na_omit <- na.omit(KG_AGG)
#n <- 50
#KG_FS50 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
#fs_list <- sort(as.numeric(KG_FS50$Column.A))
#fs_list

# [1]   8  18  22  24  26  35  36  37  40  42  45  46  53  55  56  58  61  63  69  73  78  80  90  92  97  99 105 106 122 123 125 131 132 137 138 139 141 144 147 149 151 152 162 165 172 177 179 181 184 190 194 196
#[53] 198 204 205 208 209 211 212 217 222 225 235 251 255 261 262 269

`%!in%` <- Negate(`%in%`)
#final_list <- fs_list[fs_list %!in% c(10,11,12,13,14,15,16,17,18,19,20,21,28,47,55,61,62,68,78,79,80,83,84,85,87,91,93,95,97,99,101,102,103,104,105,106,108,110,112,114,116,118,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,157,158,159,160,161,162,163,164,165,166,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,207,214,215,216,218,232,262,263,267,268,269,270,271,272,273,274,275,276,277,278)]

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)


#feature_selection <- state_data[ c(8,22,24,26,35,36,37,40,42,45,46,53,56,58,63,69,73,90,92,204,205,208,209,211,212,217,222,225,235,251,255,261,54,167) ] 
feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS25.csv")



KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 15
KG_FS10 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS10$Column.A))
fs_list

`%!in%` <- Negate(`%in%`)

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)

feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS10.csv")

#grep("B", colnames(df))