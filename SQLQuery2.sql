CREATE TABLE Feature (
    FeatureId INT IDENTITY(1,1) PRIMARY KEY, -- Auto-increment primary key
    Title NVARCHAR(255) NOT NULL, -- Adjust size as necessary
    Description NVARCHAR(MAX), -- Adjust size as necessary
    ImageUrl NVARCHAR(1024), -- Adjust size as necessary
    IframeUrl NVARCHAR(1024) -- Adjust size as necessary
);

SELECT * FROM INFORMATION_SCHEMA.TABLES;
