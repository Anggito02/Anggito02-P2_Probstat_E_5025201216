# Soal Nomor 1
# A

# Soal: Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
# diatas
#
# Jawab:

# Data sebelum pengaruh
d1 <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)

# Data setelah pengaruh
d2 <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Cek data
data <- data.frame(
  group = rep(
    c("Before", "After"),
    each = 9
  ),
  saturation = c(d1, d2)
)
print(data)

# Std Dev. sebelum dan sesudah pengaruh
sd_d1 <- sd(d1)
sd_d2 <- sd(d2)

sd_d1
sd_d2

# B

# Soal: carilah nilai t (p-value)
#
# Jawab:

t.test(d1, d2, alternative = "greater", var.equal = FALSE)

# C

# Soal: tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
# dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
# aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
# pengaruh yang signifikan secara statistika dalam hal kadar saturasi
# oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
#
# Jawab:

var.test(d1, d2)

t.test(d1, d2, mu = 0, alternative = "two.sided", var.equal = TRUE)

# Soal Nomor 2
# A

# Install Library yang dibutuhkan
install.packages("BSDA")
library(BSDA)

# Soal: Apakah Anda setuju dengan klaim tersebut?
#
# Jawab:

# Setuju

# B

# Soal: Jelaskan maksud dari output yang dihasilkan!
#
# Jawab:

tsum.test(mean.x=23500, sd(3900), n.x=100)

# C

# Soal: Buatlah kesimpulan berdasarkan P-Value yang dihasilkan
#
# Jawab:

# Untuk mencari nilai Z dapat digunakan rumus
# z = (X - miu)/(tao/sqrt(n))
# Sehingga z adalah 8.97
# Lalu P Value didapatkan dengan P(Z > 8.97) = 1 - P(Z < 8.97)
# Sehingga kesimpulanya mobil dikemudikan rata-rata lebih dari 20.000
# kilometer per tahunnya

# Soal Nomor 3
# A

# Soal: H0 dan H1
#
# Jawab:

# H0
# z = (3.64 - 0)/(1.67/sqrt(19))
# z = 9.5

# H1
# z = (2.79 - 0)/(1.32/sqrt(27))
# z = 10.98

# B

# Soal: Hitung Sampel Statistik
# 
# Jawab:

tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# C

# Soal: Lakukan Uji Statistik (df =2)
#
# Jawab:

install.packages("mosaic")
library(mosaic)

# Uji statistik df=2
plotDist(dist='t', df=2, col="red")

# D

# Soal: Nilai Kritikal
#
# Jawab:

# Nilai kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# E

# Soal: Keputusan
#
# Jawab:

# Teori keputusan adalah teori pengambilan keputusan dalam ketidakpastian.
# Aksinya ({a}_{aEA}) dengan kemungkinan konsekuensi: ({c}_{cEC}) tergantung pada keadaan
# Pengambilan keputusan ddidapat dengan t.test

# F

# Soal: Kesimpulan
#
# Jawab:

# Rata-rata tidak dapat dilihat dari uji statistik, meskipun akan ada jika
# dipengaruhi nilai kritikal

# Soal Nomor 4
# A

# Soal: Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
# 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
# lihat apakah ada outlier utama dalam homogenitas varians.
#
# Jawab:

catDataset <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(catDataset)
head(catDataset)
attach(catDataset)

catDataset$V1 <- as.factor(catDataset$V1)
catDataset$V1 = factor(catDataset$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(catDataset$V1)

group1 <- subset(catDataset, V1=="Kucing Oren")
group2 <- subset(catDataset, V1=="Kucing Hitam")
group3 <- subset(catDataset, V1=="Kucing Putih")

# B

# Soal: carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
# didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
#
# Jawab:

bartlett.test(Length~Group, data=dataoneway)

# C

# Soal: Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
# Grup dan beri nama model tersebut model 1.
# 
# Jawab:

qqnorm(group1$Length)
qqline(group1$Length)

# D

# Soal: Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
# dari H0?
#
# Jawab:

# p-value bernilai 0.8054

# E

# Soal: Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
# yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
#
# Jawab:

model1 <- lm(Length~Group, data=catDataset)

anova(model1)

TukeyHSD(aov(model1))

# F

# Soal: Visualisasikan data dengan ggplot2
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

# Soal Nomor 5
# A

# Soal: Buatlah plot sederhana untuk visualisasi data
#
# Jawab: 

install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# B

# Soal: Lakukan uji ANOVA dua arah
#
# Jawab: 

GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# C

# Soal: Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
# setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
#
# Jawab:

data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# D

# Soal: Lakukan uji Tukey
#
# Jawab:

tukey <- TukeyHSD(anova)
print(tukey)

# E

# Soal: Gunakan compact letter display untuk menunjukkan perbedaan signifikan
# antara uji Anova dan uji Tukey
#
# Jawab:

tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")