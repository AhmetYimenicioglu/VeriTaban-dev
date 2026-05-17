-- Tüm kayýtlarý sýfýrla
UPDATE OgrenciYollari SET Durum = 'Bekliyor', OgrenmeYolu = NULL;

-- Eksik olan tüm kategorileri tek seferde ekle
IF NOT EXISTS (SELECT 1 FROM OgrenciYollari WHERE IlgiAlani = 'Python Programlama')
    INSERT INTO OgrenciYollari (OgrenciAd, IlgiAlani, Hedef, Durum) VALUES ('Ahmet', 'Python Programlama', 'Python ile veri analizi ve otomasyon.', 'Bekliyor');

IF NOT EXISTS (SELECT 1 FROM OgrenciYollari WHERE IlgiAlani = 'Siber Güvenlik ve Etik Hackerlýk')
    INSERT INTO OgrenciYollari (OgrenciAd, IlgiAlani, Hedef, Durum) VALUES ('Ahmet', 'Siber Güvenlik ve Etik Hackerlýk', 'Sýzma testleri ve að güvenliði.', 'Bekliyor');

IF NOT EXISTS (SELECT 1 FROM OgrenciYollari WHERE IlgiAlani = 'Embedded Systems (Raspberry Pi/Pixhawk)')
    INSERT INTO OgrenciYollari (OgrenciAd, IlgiAlani, Hedef, Durum) VALUES ('Ahmet', 'Embedded Systems (Raspberry Pi/Pixhawk)', 'Raspberry Pi 5 ve otonom drone sistemleri.', 'Bekliyor');

IF NOT EXISTS (SELECT 1 FROM OgrenciYollari WHERE IlgiAlani = 'Web Geliþtirme (ASP.NET MVC)')
    INSERT INTO OgrenciYollari (OgrenciAd, IlgiAlani, Hedef, Durum) VALUES ('Ahmet', 'Web Geliþtirme (ASP.NET MVC)', 'C# ve MVC mimarisi ile web projeleri.', 'Bekliyor');

-- Kontrol et
SELECT * FROM OgrenciYollari;