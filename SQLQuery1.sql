CREATE TABLE About (
    AboutId INT PRIMARY KEY,
    Title NVARCHAR(100),
    TopDescription NVARCHAR(255),
    Property1 NVARCHAR(100),
    Property2 NVARCHAR(100),
    Property3 NVARCHAR(100),
    BottomDescription NVARCHAR(255),
    ImageUrl NVARCHAR(255)
);

CREATE TABLE WhyUs (
    WhyUsId INT IDENTITY(1,1) PRIMARY KEY,    -- Benzersiz bir kimlik sütunu, otomatik artan
    Title NVARCHAR(100) NOT NULL,              -- Başlık (100 karaktere kadar)
    Description NVARCHAR(MAX) NULL             -- Açıklama (uzun metin, NULL olabilir)
);

CREATE TABLE ToDoList (
    ToDoListId INT IDENTITY(1,1) PRIMARY KEY,    -- Benzersiz bir kimlik sütunu, otomatik artan
    Description NVARCHAR(255) NOT NULL,         -- Açıklama (255 karaktere kadar, NULL olamaz)
    Status BIT NOT NULL                         -- Durum (boolean: 1 veya 0, NULL olamaz)
);
CREATE TABLE Testimonials (
    TestimonialId INT IDENTITY(1,1) PRIMARY KEY,  -- Benzersiz bir kimlik sütunu, otomatik artan
    ImageUrl NVARCHAR(255) NULL,                  -- Görsel URL (255 karaktere kadar, NULL olabilir)
    NameSurname NVARCHAR(100) NOT NULL,           -- İsim ve Soyisim (100 karaktere kadar, NULL olamaz)
    Location NVARCHAR(100) NULL,                  -- Konum (100 karaktere kadar, NULL olabilir)
    Comment NVARCHAR(MAX) NULL                    -- Yorum (uzun metin, NULL olabilir)
);
CREATE TABLE Teams (
    TeamId INT IDENTITY(1,1) PRIMARY KEY,      -- Benzersiz bir kimlik sütunu, otomatik artan
    NameSurname NVARCHAR(100) NOT NULL,        -- İsim ve Soyisim (100 karaktere kadar, NULL olamaz)
    Title NVARCHAR(100) NOT NULL,              -- Ünvan (100 karaktere kadar, NULL olamaz)
    LinkedinURL NVARCHAR(255) NULL,            -- LinkedIn URL (255 karaktere kadar, NULL olabilir)
    InstagramURL NVARCHAR(255) NULL,           -- Instagram URL (255 karaktere kadar, NULL olabilir)
    ImageUrl NVARCHAR(255) NULL                -- Görsel URL (255 karaktere kadar, NULL olabilir)
);
CREATE TABLE Specials (
    SpecialId INT IDENTITY(1,1) PRIMARY KEY,   -- Benzersiz bir kimlik sütunu, otomatik artan
    SpecialName NVARCHAR(100) NOT NULL,        -- Özel Ad (100 karaktere kadar, NULL olamaz)
    Title NVARCHAR(100) NOT NULL,              -- Başlık (100 karaktere kadar, NULL olamaz)
    Description NVARCHAR(MAX) NULL,            -- Açıklama (uzun metin, NULL olabilir)
    ImageUrl NVARCHAR(255) NULL                -- Görsel URL (255 karaktere kadar, NULL olabilir)
);
CREATE TABLE Products (
    ProductId INT IDENTITY(1,1) PRIMARY KEY,       -- Benzersiz bir kimlik sütunu, otomatik artan
    ProductName NVARCHAR(100) NOT NULL,            -- Ürün adı (100 karaktere kadar, NULL olamaz)
    ProductPrice DECIMAL(18,2) NOT NULL,           -- Ürün fiyatı (18 basamaktan oluşan, 2 ondalıklı sayı, NULL olamaz)
    Description NVARCHAR(MAX) NULL,                -- Açıklama (uzun metin, NULL olabilir)
    ImageUrl NVARCHAR(255) NULL,                   -- Görsel URL (255 karaktere kadar, NULL olabilir)
    CategoryId INT NOT NULL                        -- Kategori ID (NULL olamaz)
);
CREATE TABLE Photos (
    PhotoId INT IDENTITY(1,1) PRIMARY KEY,    -- Benzersiz bir kimlik sütunu, otomatik artan
    ImageUrl NVARCHAR(255) NOT NULL            -- Görsel URL (255 karaktere kadar, NULL olamaz)
);
CREATE TABLE Messages (
    MessageId INT IDENTITY(1,1) PRIMARY KEY,      -- Benzersiz bir kimlik sütunu, otomatik artan
    NameSurname NVARCHAR(100) NOT NULL,           -- İsim ve Soyisim (100 karaktere kadar, NULL olamaz)
    Email NVARCHAR(255) NOT NULL,                 -- E-posta (255 karaktere kadar, NULL olamaz)
    Title NVARCHAR(100) NOT NULL,                 -- Başlık (100 karaktere kadar, NULL olamaz)
    MessageContent NVARCHAR(MAX) NULL             -- Mesaj İçeriği (uzun metin, NULL olabilir)
);
CREATE TABLE Events (
    EventId INT IDENTITY(1,1) PRIMARY KEY,         -- Benzersiz bir kimlik sütunu, otomatik artan
    Title NVARCHAR(255) NOT NULL,                  -- Etkinlik başlığı (255 karaktere kadar, NULL olamaz)
    Price DECIMAL(18,2) NOT NULL,                  -- Etkinlik fiyatı (18 basamaktan oluşan, 2 ondalıklı sayı, NULL olamaz)
    TopDescription NVARCHAR(MAX) NULL,             -- Üst açıklama (uzun metin, NULL olabilir)
    Property1 NVARCHAR(255) NULL,                  -- Özellik 1 (255 karaktere kadar, NULL olabilir)
    Property2 NVARCHAR(255) NULL,                  -- Özellik 2 (255 karaktere kadar, NULL olabilir)
    Property3 NVARCHAR(255) NULL,                  -- Özellik 3 (255 karaktere kadar, NULL olabilir)
    BottomDescription NVARCHAR(MAX) NULL,          -- Alt açıklama (uzun metin, NULL olabilir)
    ImageUrl NVARCHAR(255) NULL                    -- Görsel URL (255 karaktere kadar, NULL olabilir)
);
CREATE TABLE DashboardStatistics (
    ExpensiveProductName NVARCHAR(255) NULL,       -- En pahalı ürünün adı (255 karaktere kadar, NULL olabilir)
    ExpensiveProductPrice DECIMAL(18,2) NULL,      -- En pahalı ürünün fiyatı (18 basamaktan oluşan, 2 ondalıklı sayı, NULL olabilir)
    ProductAvgPrice DECIMAL(18,2) NULL,            -- Ürünlerin ortalama fiyatı (18 basamaktan oluşan, 2 ondalıklı sayı, NULL olabilir)
    CheaperProductPrice DECIMAL(18,2) NULL,        -- En ucuz ürünün fiyatı (18 basamaktan oluşan, 2 ondalıklı sayı, NULL olabilir)
    ProductCount INT NULL                          -- Ürün sayısı (tam sayı, NULL olabilir)
);
CREATE TABLE Contacts (
    ContactId INT IDENTITY(1,1) PRIMARY KEY,       -- Benzersiz bir kimlik sütunu, otomatik artan
    Location NVARCHAR(255) NULL,                   -- Konum (255 karaktere kadar, NULL olabilir)
    OpenHours NVARCHAR(255) NULL,                  -- Çalışma saatleri (255 karaktere kadar, NULL olabilir)
    Email NVARCHAR(255) NULL,                      -- E-posta adresi (255 karaktere kadar, NULL olabilir)
    PhoneNumber NVARCHAR(50) NULL                  -- Telefon numarası (50 karaktere kadar, NULL olabilir)
);
CREATE TABLE categories (
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,       -- Benzersiz bir kimlik sütunu, otomatik artan
    CategoryName NVARCHAR(255) NOT NULL             -- Kategori adı (255 karaktere kadar, NULL olamaz)
);
CREATE TABLE Reservations (
    ReservationId INT IDENTITY(1,1) PRIMARY KEY,   -- Benzersiz bir kimlik sütunu, otomatik artan
    Name NVARCHAR(100) NOT NULL,                   -- İsim (100 karaktere kadar, NULL olamaz)
    Email NVARCHAR(255) NOT NULL,                  -- E-posta adresi (255 karaktere kadar, NULL olamaz)
    Phone NVARCHAR(20) NULL,                       -- Telefon numarası (20 karaktere kadar, NULL olabilir)
    Date DATETIME NOT NULL,                        -- Rezervasyon tarihi ve saati (NULL olamaz)
    PersonCount INT NOT NULL,                      -- Kişi sayısı (tam sayı, NULL olamaz)
    MessageContent NVARCHAR(MAX) NULL              -- Mesaj içeriği (uzun metin, NULL olabilir)
);



