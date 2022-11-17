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



state_data[56][state_data[56] == 1] <- 1 
state_data[56][state_data[56] == 2] <- 1
state_data[56][state_data[56] == 3] <- 0
state_data[56][state_data[56] == 4] <- 0
state_data[56][state_data[56] == 7] <- 0
state_data[56][state_data[56] == 9] <- 0
state_data[56][is.na(state_data[56])] <- 0
state_data[163][is.na(state_data[163])] <- 0
state_data[163][state_data[163] >= 1] <- 1


setwd('C:/Users/mdjaw/OneDrive/Documents/Markian Training/Research_USQ/USCenterDiseaseControlPrevention/LLCP2019XPT')
KG <- read.csv('BRFSS_KG_2019.csv')
KG$Word.Count <- as.integer(KG$Word.Count)
KG_AGG <- aggregate(KG$Word.Count, by=list(Column.A=KG$Column.A), FUN=sum)

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


ml_missing50_nona <- na.omit(ml_missing50)

ml_missing50_nona <- append(ml_missing50_nona, 56)
ml_missing50_nona <- append(ml_missing50_nona, 163)

write.csv(ml_missing50_nona, "LLCP2019XPT_Grounded_ML_nona.csv")


KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 25
KG_FS25 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS25$Column.A))
fs_list


`%!in%` <- Negate(`%in%`)

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)


feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS25.csv")

KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 20
KG_FS10 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS10$Column.A))
fs_list


`%!in%` <- Negate(`%in%`)

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)

feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS20.csv")


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
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS15.csv")


KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 10
KG_FS10 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS10$Column.A))
fs_list


`%!in%` <- Negate(`%in%`)

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)

feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS10.csv")


KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 50
KG_FS10 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS10$Column.A))
fs_list


`%!in%` <- Negate(`%in%`)

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)

feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS50.csv")

KG_AGG_na_omit <- na.omit(KG_AGG)
n <- 5
KG_FS10 <- KG_AGG_na_omit[KG_AGG_na_omit$x > quantile(KG_AGG_na_omit$x,prob=1-n/100),]
fs_list <- sort(as.numeric(KG_FS10$Column.A))
fs_list


`%!in%` <- Negate(`%in%`)

final_list <- fs_list[fs_list %!in% c(extract_col_numbers)]

final_list <- append(final_list, 56)
final_list <- append(final_list, 163)

feature_selection <- state_data[ c(final_list) ] 
write.csv(na.omit(feature_selection), "LLCP2019XPT_Grounded_KGFS5.csv")