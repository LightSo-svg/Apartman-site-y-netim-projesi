
INSERT INTO BLOK (BlokID, BlokAdi, KatSayisi) VALUES
(1, 'A Bloðu', 5),
(2, 'B Bloðu', 5),
(3, 'C Bloðu', 4),
(4, 'D Bloðu', 6),
(5, 'E Bloðu', 4),
(6, 'F Bloðu', 5),
(7, 'G Bloðu', 3),
(8, 'H Bloðu', 5),
(9, 'K Bloðu', 4),
(10, 'L Bloðu', 6);


INSERT INTO DAIRE (DaireID, BlokID, DaireNo, Kat, Metrekare, Tip) VALUES
(1, 1, '101', 1, 95, 'Daire'),
(2, 1, '102', 1, 88, 'Daire'),
(3, 1, '201', 2, 110, 'Daire'),
(4, 2, '101', 1, 75, 'Daire'),
(5, 2, '201', 2, 50, 'Dükkan'),
(6, 3, '301', 3, 125, 'Daire'),
(7, 4, '102', 1, 85, 'Daire'),
(8, 5, '401', 4, 140, 'Daire'),
(9, 6, '101', 1, 65, 'Daire'),
(10, 7, '202', 2, 90, 'Daire');



INSERT INTO SAKIN (SakinID, DaireID, Ad, Soyad, Telefon, EPosta, TCKimlik, MulkDurumu, AktifMi) VALUES
(1, 1, 'Efe', 'Öðer', '5551112233', 'efe.oger@example.com', '12345678901', 'Sahibi', 1),
(2, 2, 'Ayþe', 'Yýlmaz', '5552223344', 'ayse.y@example.com', '23456789012', 'Kiracý', 1),
(3, 3, 'Mehmet', 'Kaya', '5553334455', 'm.kaya@example.com', '34567890123', 'Sahibi', 1),
(4, 4, 'Zeynep', 'Arslan', '5554445566', 'z.arslan@example.com', '45678901234', 'Sahibi', 1),
(5, 5, 'Ali', 'Demir', '5556667788', 'a.demir@example.com', '56789012345', 'Sahibi', 1),
(6, 6, 'Fatma', 'Öztürk', '5557778899', 'f.ozturk@example.com', '67890123456', 'Kiracý', 1),
(7, 7, 'Emre', 'Çelik', '5558889900', 'e.celik@example.com', '78901234567', 'Sahibi', 1),
(8, 8, 'Seda', 'Yýldýz', '5559990011', 's.yildiz@example.com', '89012345678', 'Sahibi', 1),
(9, 9, 'Oðuz', 'Kara', '5550001122', 'o.kara@example.com', '90123456789', 'Kiracý', 1),
(10, 10, 'Deniz', 'Aksoy', '5551112244', 'd.aksoy@example.com', '01234567890', 'Sahibi', 1);


INSERT INTO AIDAT_KALEMI (KalemID, KalemAdi, Aciklama) VALUES
(1, 'Asgari Aidat', 'Yönetim kurulu giderleri'),
(2, 'Su Tüketimi', 'Ortak su gideri'),
(3, 'Doðalgaz Payý', 'Isýnma için ortak doðalgaz'),
(4, 'Asansör Bakýmý', 'Yýllýk bakým ve acil servis'),
(5, 'Temizlik', 'Ortak alan temizliði'),
(6, 'Güvenlik', 'Gece devriyesi ve kamera sistemi'),
(7, 'Bahçe Bakýmý', 'Yeþil alan ve sulama'),
(8, 'Yangýn Söndürme', 'Cihaz kontrol ve yenileme'),
(9, 'Çöp Toplama', 'Belediye desteði dahil'),
(10, 'Kültür Etkinlikleri', 'Yýlbaþý, iftar gibi toplantýlar');

INSERT INTO AIDAT_BORCU (BorcID, DaireID, KalemID, Tutar, DonemYil, DonemAy, OdendiMi) VALUES
(1, 1, 1, 350.00, 2025, 1, 1),
(2, 1, 2, 75.00, 2025, 1, 1),
(3, 2, 1, 320.00, 2025, 1, 0),
(4, 3, 1, 380.00, 2025, 1, 1),
(5, 4, 1, 300.00, 2025, 1, 1),
(6, 5, 1, 150.00, 2025, 1, 0),
(7, 6, 1, 400.00, 2025, 1, 0),
(8, 7, 1, 290.00, 2025, 1, 1),
(9, 8, 1, 420.00, 2025, 1, 0),
(10, 9, 1, 270.00, 2025, 1, 1);

INSERT INTO ODEME (OdemeID, SakinID, BorcID, Tutar, OdemeTarihi, OdemeYontemi, Aciklama) VALUES
(1, 1, 1, 350.00, '2025-01-15', 'Havale', 'Asgari aidat'),
(2, 1, 2, 75.00, '2025-01-15', 'Havale', 'Su payý'),
(3, 3, 4, 380.00, '2025-01-18', 'Nakit', 'Asgari aidat'),
(4, 4, 5, 300.00, '2025-01-20', 'Kredi Kartý', 'Asgari aidat'),
(5, 7, 8, 290.00, '2025-01-21', 'Havale', 'Asgari aidat'),
(6, 9, 10, 270.00, '2025-01-22', 'Nakit', 'Asgari aidat'),
(7, 1, 1, 0.00, '2025-01-15', 'Nakit', 'Fatura iptali'), -- iptal için örnek
(8, 3, 4, 0.00, '2025-01-18', 'Nakit', 'Ýptal edilen ödeme'),
(9, 8, 9, 100.00, '2025-01-25', 'Havale', 'Kýsmi ödeme'),
(10, 2, 3, 100.00, '2025-01-30', 'Havale', 'Kýsmi ödeme');

INSERT INTO ARIZA (ArizaID, DaireID, BildirenSakinID, Baslik, Aciklama, Aciliyet, Durum) VALUES
(1, 1, 1, 'Asansör Arýzasý', 'A bloðu asansörü 3. katta sýkýþtý.', 'Yüksek', 'Çözüldü'),
(2, 2, 2, 'Sýzýntý', 'Mutfak lavabosu altýndan su geliyor.', 'Orta', 'Atandý'),
(3, 5, 5, 'Elektrik Kesintisi', 'Dükkanýmýn ana sigortasý atýyor.', 'Yüksek', 'Beklemede'),
(4, 3, 3, 'Kapý Zili Çalýþmýyor', 'Zil düðmesine bastýðýmda ses yok.', 'Düþük', 'Reddedildi'),
(5, 6, 6, 'Klima Sýzdýrýyor', 'Ýç üniteden su damlýyor.', 'Orta', 'Çözüldü'),
(6, 7, 7, 'Pencere Arýzasý', '2. kattaki pencere açýlmýyor.', 'Düþük', 'Atandý'),
(7, 8, 8, 'Su Basýncý Düþük', 'Banyoda su zayýf akýyor.', 'Orta', 'Beklemede'),
(8, 9, 9, 'Komþu Gürültüsü', 'Gece 23:00 sonrasý yüksek ses.', 'Düþük', 'Reddedildi'),
(9, 10, 10, 'Çöp Kovasý Dolu', 'Ortak alandaki çöp dolu, boþaltýlmadý.', 'Düþük', 'Çözüldü'),
(10, 4, 4, 'Lamba Yanmýyor', 'B bloðu giriþ holünde ana lamba.', 'Orta', 'Atandý');

INSERT INTO ARIZA_ATAMA (AtamaID, ArizaID, YetkiliAdi, YetkiliTelefon, AtamaTarihi, CozumTarihi, CozumNotu) VALUES
(1, 1, 'Asansör Teknik Servisi A.Þ.', '4441122', '2025-01-10 09:30', '2025-01-10 11:15', 'Kumanda kartý deðiþtirildi.'),
(2, 2, 'Ahmet Usta (Tesisatçý)', '5559998877', '2025-01-12 14:00', NULL, NULL),
(3, 5, 'Klima Servisi XYZ', '4445566', '2025-01-14 10:00', '2025-01-14 12:30', 'Drenaj hattý týkalýydý, açýldý.'),
(4, 6, 'Doðan Pencere Tamiri', '5553331122', '2025-01-16 09:00', NULL, NULL),
(5, 9, 'Temizlik Ekibi', '5552255225', '2025-01-18 08:30', '2025-01-18 08:45', 'Çöp kovasý boþaltýldý.'),
(6, 10, 'Elektrik Ustasý Selim', '5551234567', '2025-01-19 11:00', NULL, NULL),
(7, 3, 'Site Elektrikçisi Mustafa', '5557890123', '2025-01-20 13:00', NULL, NULL),
(8, 7, 'ÝSKÝ Yetkilisi', '4441818', '2025-01-21 10:30', NULL, NULL),
(9, 4, '-', '-', '2025-01-11 15:00', '2025-01-11 15:05', 'Zil kablosu gevþek; site personeli düzeltti.'),
(10, 8, '-', '-', '2025-01-13 16:00', '2025-01-13 16:10', 'Komþuya uyarý yapýldý.');

INSERT INTO DUYURU (DuyuruID, Baslik, Icerik, YayinlayanSakinID, YayinTarihi, HedefTur, HedefBlokID, HedefDaireID) VALUES
(1, 'Genel Kurul Toplantýsý', '25 Ocak 2025 Cumartesi 14:00’da toplantý salonunda yapýlacak.', 1, '2025-01-10 09:00', 'Tüm Sakinler', NULL, NULL),
(2, 'Asansör Bakýmý', 'A bloðu asansörü 10–12 Þubat 2025 arasý bakýma alýnacaktýr.', 1, '2025-01-15 11:30', 'Blok', 1, NULL),
(3, 'Kayýp Kedi', 'Siyah beyaz, yeþil gözleri olan kedi C bloðu çevresinde kayýp.', 4, '2025-01-18 17:20', 'Tüm Sakinler', NULL, NULL),
(4, 'Su Kesintisi', 'Belediye çalýþmalarý nedeniyle 20 Ocak Pazartesi 10:00–14:00 arasý su kesintisi.', 1, '2025-01-19 08:45', 'Tüm Sakinler', NULL, NULL),
(5, 'Yýlbaþý Ýkramiyesi', 'Gardiyanýmýza 1500 TL ikramiye ödenecektir.', 1, '2025-01-25 14:30', 'Tüm Sakinler', NULL, NULL),
(6, 'B Bloðu Temizlik', 'B bloðu merdivenleri 22 Ocak Çarþamba günü özel temizlenecektir.', 1, '2025-01-20 10:15', 'Blok', 2, NULL),
(7, 'Dükkan Kiralama', 'E bloðu zemin katta 60 m² dükkan kiralanacaktýr.', 5, '2025-01-21 13:00', 'Tüm Sakinler', NULL, NULL),
(8, 'Bahçe Etkinliði', '28 Ocak Salý 16:00’da bahçe etkinliði — çocuklar için oyunlar.', 6, '2025-01-22 09:10', 'Tüm Sakinler', NULL, NULL),
(9, 'Yangýn Tatbikatý', '30 Ocak Perþembe 11:00’de yangýn tatbikatý yapýlacaktýr.', 1, '2025-01-23 16:40', 'Tüm Sakinler', NULL, NULL),
(10, 'Daire 301 Su Kaçaðý', 'C bloðu 301 dairemizde su kaçaðý var — lütfen musluklarý kontrol edin.', 6, '2025-01-24 12:05', 'Blok', 3, NULL);

INSERT INTO DUYURU_ALICI (DuyuruID, SakinID, OkunduMu, OkumaTarihi) VALUES
(1, 1, 1, '2025-01-10 09:05'),
(1, 2, 1, '2025-01-10 10:20'),
(1, 3, 0, NULL),
(1, 4, 1, '2025-01-10 11:45'),
(1, 5, 0, NULL),
(1, 6, 1, '2025-01-10 14:30'),
(1, 7, 0, NULL),
(1, 8, 1, '2025-01-10 16:10'),
(1, 9, 0, NULL),
(1, 10, 1, '2025-01-10 18:00');

INSERT INTO TOPLANTI_KARARI (KararID, ToplantiTarihi, Gündem, KararMetni, OlusturanSakinID) VALUES
(1, '2025-01-25', 'Yýlbaþý Ýkramiyesi', 'Gardiyan için 1500 TL ikramiye ödenmesine oybirliðiyle karar verildi.', 1),
(2, '2025-01-25', 'Asansör Yenileme', '2025 yýlý içinde B bloðu asansörünün yenilenmesi için 85.000 TL bütçe ayrýldý.', 1),
(3, '2025-01-25', 'Bahçe Aydýnlatmasý', 'Bahçeye 12 adet güneþ enerjili aydýnlatma sistemi kurulmasýna karar verildi.', 1),
(4, '2025-01-25', 'Güvenlik Kamerasý', 'Giriþ ve otoparka 4 yeni kamera eklenmesi onaylandý.', 1),
(5, '2025-01-25', 'Temizlik Sýklýðý', 'Ortak alan temizliði haftada 5 günden 7 güne çýkarýldý.', 1),
(6, '2025-01-25', 'Kültür Bütçesi', '2025 için 5.000 TL kültür etkinlikleri bütçesi ayrýldý.', 1),
(7, '2025-01-25', 'Çöp Yönetimi', 'Pil ve plastik atýklar için ayrý toplama kutularý konuldu.', 3),
(8, '2025-01-25', 'Site Ýnternet Aðý', 'Ortak alanlarda ücretsiz Wi-Fi hizmeti baþlatýlacak.', 8),
(9, '2025-01-25', 'Acil Durum Planý', 'Yangýn ve deprem için acil durum planý güncellendi.', 7),
(10, '2025-01-25', 'Yönetim Kurulu Seçimi', 'Mart 2025’te yönetim kurulu seçimlerinin yapýlmasýna karar verildi.', 1);