# Anggito02-P2_Probstat_E_5025201216
## Repository Praktikum 2 Mata Kuliah Probstat 2020

### Nama  : Anggito Anju Hartawan Manalu
### NRP   : 5025201216
### Kelas : Probstat E

### Nomor 1

#### Soal
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![soal 1](https://user-images.githubusercontent.com/70510279/170801862-fb8feada-e470-4bdd-90c8-2b1b050563ca.jpg)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

#### 1. A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

<br>

```
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
```

Maka akan didapatkan output sebagai berikut

![1a-1](https://user-images.githubusercontent.com/70510279/170801700-5a72cc8a-a5e8-4331-9466-534b5adba1b0.jpg)

Kemudian kita dapat mencari standar deviasinya

```
# Std Dev. sebelum dan sesudah pengaruh
sd_d1 <- sd(d1)
sd_d2 <- sd(d2)

sd_d1
sd_d2
```

Maka akan didapatkan output sebagai berikut

![1a-2](https://user-images.githubusercontent.com/70510279/170802086-33f51947-7316-4eb1-a173-8b27355b2c21.jpg)
<br>
![1a-3](https://user-images.githubusercontent.com/70510279/170802089-d7e550cd-e308-41a0-9881-dee36fcec0f8.jpg)

#### 1. B
Carilah nilai t (p-value)

<br>

Gunakan `t.test`
```
t.test(d1, d2, alternative = "greater", var.equal = FALSE)
```

Maka akan didapatkan output sebagai berikut

![1b](https://user-images.githubusercontent.com/70510279/170802497-1c8e11ec-b849-46df-970c-ae7a53990355.jpg)

#### 1. C
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

<br>

Kita harus melihat komparasi sebelum sesudah kemudian kita mencati pengaruh signifikan
```
var.test(d1, d2)

t.test(d1, d2, mu = 0, alternative = "two.sided", var.equal = TRUE)
```

![1c-1](https://user-images.githubusercontent.com/70510279/170803286-8d17ff49-ab43-4c8d-b68f-8252e50de12c.jpg)
![1c-2](https://user-images.githubusercontent.com/70510279/170803288-c8b36ba6-954b-49b3-83e1-51e6236efe74.jpg)

Nomor 2

Soal
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul)..

#### 2. A
Apakah Anda setuju dengan klaim tersebut?
* Jawaban pada source code *

#### 2. B
Jelaskan maksud dari output yang dihasilkan!
* Jawaban pada source code *

#### 2. C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
* Jawaban pada source code *

Nomor 3

Soal
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
</br>
![image](https://user-images.githubusercontent.com/70510279/170834251-73d308da-69c9-4e86-b2b8-4917e598efae.png)
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

#### 3. A
* Jawaban pada source code * 

#### 3. B
Hitung Sampel Statistik
```
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```

Didapatkan output sebagai berikut
![image](https://user-images.githubusercontent.com/70510279/170847031-6d2d82a4-dad1-4e70-b204-5782eb790bf7.png)

#### 3. C
Lakukan Uji Statistik (df =2)

Menggunakan plotDist
```
# Uji statistik df=2
plotDist(dist='t', df=2, col="red")
```

#### 3. D
Nilai kritikal

```
# Nilai kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```

#### 3. E
Keputusan

* Jawaban pada source code *

#### 3. F
Kesimpulan

* Jawaban pada source code *

Nomor 4

Soal
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing.
Jika : diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama. Maka Kerjakan atau Carilah:

#### 4. A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

```
catDataset <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(catDataset)
head(catDataset)
attach(catDataset)

catDataset$V1 <- as.factor(catDataset$V1)
catDataset$V1 = factor(catDataset$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(catDataset$V1)

# Dibagi menjadi beberapa group tergantung dengan pembaginya, yakni jenis kucing
group1 <- subset(catDataset, V1=="Kucing Oren")
group2 <- subset(catDataset, V1=="Kucing Hitam")
group3 <- subset(catDataset, V1=="Kucing Putih")
```

#### 4. B
Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

```
bartlett.test(Length~Group, data=dataoneway)
```

Maka kan didapatkan p-value = 0.8054

#### 4. C

```
qqnorm(group1$Length)
qqline(group1$Length)
```

#### 4. E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? 3 Jelaskan.

```
model1 <- lm(Length~Group, data=catDataset)

anova(model1)

TukeyHSD(aov(model1))
```

#### 4. F
Visualisasikan data dengan ggplot2

```
# Soal: Visualisasikan data dengan ggplot2
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
```

Nomor 5
Soal
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

#### 5. A
Buatlah plot sederhana untuk visualisasi data

Gunakan packages `multcompView` untuk visualisasi data
```
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
```

#### 5. B
Lakukan uji ANOVA dua arah

```
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```

Berikut output dari program ketika dijalankan

![image](https://user-images.githubusercontent.com/70510279/170851507-b318c577-8c71-4a3c-b391-1c406e364abb.png)

#### 5. C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

```
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```

Menggunakan `summarise` untuk mendapatkan std dev. yang berlaku
Berikut outputnya

![image](https://user-images.githubusercontent.com/70510279/170851578-fee77749-6fff-4abf-ad36-62ef2ec84c3d.png)

<br>

#### 5. D
Lakukan uji Tukey

```
tukey <- TukeyHSD(anova)
print(tukey)
```

Berikut outputnya 
![image](https://user-images.githubusercontent.com/70510279/170851658-f097be04-5017-404e-99b6-0ebdebb284d9.png)
![image](https://user-images.githubusercontent.com/70510279/170851669-260742aa-75b0-47e2-9d8a-dabf318b5082.png)

#### 5. E
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

```
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
```

