data <- read.csv("raw/survey_456893_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "seed"
names(data)[5] <- "seed"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "In welchem Studiengang sind Sie aktuell eingeschrieben?"
data[, 6] <- factor(data[, 6], levels=c("mdi","inf","its"),labels=c("Bachelor Medieninformatik", "Bachelor Informatik", "Bachelor IT-Sicherheit"))
names(data)[6] <- "studyProgram"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "[Sonstiges] In welchem Studiengang sind Sie aktuell eingeschrieben?"
names(data)[7] <- "studyProgram_other"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Haben Sie an dem optionalen Projekt im WiSe 23/24 teilgenommen?"
data[, 8] <- factor(data[, 8], levels=c("yes","no"),labels=c("Ja", "Nein"))
names(data)[8] <- "optProject"
# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "[Meinen Lernerfolg durch die Bearbeitung des Optionalen Projekts im WiSe 23/24 schätze ich hoch ein.] Inwieweit stimmen Sie der folgenden Aussagen zu oder nicht zu?"
data[, 9] <- factor(data[, 9], levels=c(1,2,3,4,5,6),labels=c("absolut ja", "meist ja", "eher ja", "eher nein", "meist nein", "absolut nein"))
names(data)[9] <- "feedbackOptProject_successOptProject"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "[Definition von Lernzielen in den Foliensätzen] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 10] <- factor(data[, 10], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[10] <- "feedbackImprovements_learningGoals"
# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "[Neugestaltung der Moodle-Kurs-Übersicht] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 11] <- factor(data[, 11], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[11] <- "feedbackImprovements_moodleRedesign"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[Aufführung von Lernzielen im Moodle-Kurs] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 12] <- factor(data[, 12], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[12] <- "feedbackImprovements_moodleLearningGoals"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[Kennzeichnung von asynchronen Lerneinheiten in Unterstützung der Übungsaufgaben & Zusätzlicher Inhalt] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 13] <- factor(data[, 13], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[13] <- "feedbackImprovements_learnUnitLabeling"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[Anreicherung von Aufzeichnungen um Video-Sprungmarken] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 14] <- factor(data[, 14], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[14] <- "feedbackImprovements_videoJumpMarks"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Verkleinerung von Übungsgruppen auf max. 3 Personen] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 15] <- factor(data[, 15], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[15] <- "feedbackImprovements_groupSizeReduction"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[Umgestaltung der Übungstermine als HelpDesk-Format] Wie bewerten Sie die nachfolgenden Neuerungen in Schulnoten?"
data[, 16] <- factor(data[, 16], levels=c(1,2,3,4,5,6),labels=c("1", "2", "3", "4", "5", "6"))
names(data)[16] <- "feedbackImprovements_exercideHelpDesk"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Was zeichnet die Veranstaltung InterSys nach Ihrer Meinung gegenüber anderen Veranstaltungen aus?"
names(data)[17] <- "feedbackStandOut"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "Was war an der Veranstaltung gut und sollte beibehalten werden?"
names(data)[18] <- "feedbackPositive"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "Was sollte an der Veranstaltung geändert werden?"
names(data)[19] <- "feedbackNegative"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Welche weiteren Wünsche haben Sie an die Veranstaltung? Was kann noch verbessert werden?"
names(data)[20] <- "feedbackWishes"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Welche weiteren Anmerkungen haben Sie?"
names(data)[21] <- "feedbackGeneral"
