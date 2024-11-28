# Urun-Katalog-Projesi

## Proje Hakkında
Bu proje, kullanıcıların ürünleri görüntüleyebileceği, favorilerine ekleyebileceği ve kategorilerde gezinebileceği bir ürün katalog uygulaması geliştirmeyi amaçlamaktadır. Uygulama, sağlanan API'yi kullanarak 6 temel ekran tasarımı ve işlevi sunmaktadır. Ekranlar, Figma tasarımına uygun ve responsive olarak geliştirilmiştir.

Proje, şu işlevleri sunar:

- Kullanıcı giriş ve kayıt işlemleri.
- Kategorilere ait ürünlerin listelemesi.
- Ürünlerin detay sayfalarına erişim.
- Favorilere ürün ekleme/çıkarma.
- Arama fonksiyonu.
- **24 Saatlik Cache Yapısı**: Ürün verileri için 24 saatlik bir cache yapısı uygulanmıştır.
- **Riverpod Kullanımı**: Uygulamada veri yönetimi için Riverpod kullanılmaktadır.
- **Dependency Injection (DI)**: Injectable veya benzeri bir Dependency Injection yöntemi kullanılmıştır.


## API Dokümantasyonu
Proje API'sine ait Postman koleksiyonu tarafınıza gönderilmiştir. API kullanımıyla ilgili daha fazla bilgiye Postman koleksiyonunda ulaşabilirsiniz.

## Ekranlar ve Özellikler


### Ekran 1: Splash Screen
- **Süre**: Splash ekranı 3 saniye boyunca görüntülenir.
- **Skip Butonu**: Kullanıcı "Skip" butonuna tıklayarak 3 saniyeyi beklemeden ana ekrana yönlendirilebilir.

### Ekran 2: Giriş Yap
- **E-mail ile giriş**: Kullanıcı, e-mail ile giriş yapar ve e-mail doğrulaması yapılır.
- **Şifre Validasyonu**: Şifre, 6-20 karakter arasında olmalı ve alfanumerik olmalıdır. Validasyonlar, "Giriş Yap" butonuna tıklanarak aktive olur.
- **Beni Hatırla**: Kullanıcı, "Beni Hatırla" seçeneğini işaretlediğinde, giriş token'ı saklanır ve sonraki girişlerde otomatik olarak kullanılır.

### Ekran 3: Kayıt Olma
- **Kayıt Formu**: Kullanıcı, ad, soyad, e-mail adresi ve şifre bilgilerini girerek kayıt olur.
- **Validasyonlar**: Kayıt formunda, girişteki validasyon kuralları geçerli olacaktır.
- **Yönlendirme**: Kayıt tamamlandıktan sonra kullanıcı ana sayfaya yönlendirilir, ancak bir sonraki girişte tekrar giriş ekranı ile karşılaşır.

### Ekran 4: Kategori Listeleme
- **Kategoriler**: API'den çekilen kategorilere ait ürünler liste halinde sunulur.
- **Ürün Detayı**: Ürüne tıklandığında, ürün detaylarının göründüğü bir ekrana yönlendirilir.

### Ekran 5: Kategoriye Ait Ürün Listeleme
- **Kategori Seçimi**: Kullanıcı, bir kategoriye tıkladığında o kategoriye ait ürünler listelenir.
- **Ürün Detayı**: Ürüne tıklandığında, ürünün detayları görüntülenir.

### Ekran 6: Ürün Detayları ve Favoriler
- **Ürün Detayı**: Seçilen ürünün detayları bu ekranda gösterilir.
- **Favoriler**: Kullanıcı, ürünleri favorilerine ekleyip çıkarabilir.
- **Arama Fonksiyonu**: Ekran 4 ve 5'te arama özelliği ile ürünler arasında kolayca arama yapılabilir.


## Teknolojiler
- **Frontend**: Flutter
- **Backend API**: RESTful API
- **Veri Kaynağı**: API'den çekilen veriler
- **Validasyonlar**: E-mail ve şifre validasyonları
- **Veri Yönetimi**: Riverpod, Dependency Injection (DI) kullanımı

## 24 Saatlik Cache Yapısı
Projenin veri çekim işlemleri için ürün verilerinin 24 saatlik bir cache sistemi ile yönetilmesi sağlanmıştır. Bu yapı, API'den her defasında veri çekmek yerine, verilerin geçici olarak saklanmasını ve 24 saat boyunca güncel kalmasını sağlar. Bu sayede uygulamanın performansı arttırılır ve API çağrılarının gereksiz yere tekrar edilmesi engellenir.

## Riverpod ve Dependency Injection (DI)
Proje, **Riverpod** kütüphanesini kullanarak uygulamanın veri akışını yönetmektedir. **Dependency Injection (DI)** yöntemiyle, servisler, repository katmanları ve diğer bağımlılıklar kolayca yönetilebilir ve test edilebilir. `Injectable` gibi DI yöntemleri kullanılarak kodun modülerliği artırılmıştır.

## Uygulama Ekran Görüntüleri
### Splash Screen
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/splash%20screen.png?raw=true" width="50%" style="margin-right: 10px;" />

### Giriş Ekranı
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/login%20screen.png?raw=true" width="50%" style="margin-right: 10px;" />

### Kayıt Ekranı
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/register%20screen.png?raw=true" width="50%" style="margin-right: 10px;" />

### Kategori Ekranı
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/category%20screen.png?raw=true" width="50%" style="margin-right: 10px;" />

### Kategori Ekranı
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/category%20screen%20(2).png?raw=true" width="50%" style="margin-right: 10px;" />

### Çok Satanlar Ekranı
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/best%20seller%20screen.png?raw=true" width="50%" style="margin-right: 10px;" />

### Çok Satanlar Ekranı
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/best%20seller%20screen%20(2).png?raw=true" width="50%" style="margin-right: 10px;" />

### Ürün ismi ile arama yapma
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/search%20tittle.png?raw=true" width="50%" style="margin-right: 10px;" />

### Yazar ismi ile arama yapma
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/search%20author.png?raw=true" width="50%" style="margin-right: 10px;" />

### Kitap Detay Sayfası
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/book%20details.png?raw=true" width="50%" style="margin-right: 10px;" />

### Kitap Detay Sayfası
<img src="https://github.com/Sena-Ozkara/Urun-Katalog-Projesi/blob/faad4d282a0b809a177c2235f57da7746d207fb0/app%20screenshot/book%20details%20(2).png?raw=true" width="50%" style="margin-right: 10px;" />

## Lisans
Bu proje [MIT Lisansı](LICENSE) ile lisanslanmıştır.
