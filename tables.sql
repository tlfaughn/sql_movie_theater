CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Movie (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    ReleaseDate DATE,
    Duration INT -- Duration in minutes
);

CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    CustomerID INT,
    MovieID INT,
    SeatNumber VARCHAR(10),
    PurchaseDate DATE,
    Price DECIMAL(8, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);

CREATE TABLE Concession (
    ConcessionID INT PRIMARY KEY,
    Name VARCHAR(50),
    Price DECIMAL(8, 2)
);

CREATE TABLE ConcessionTransaction (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    ConcessionID INT,
    Quantity INT,
    TransactionDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ConcessionID) REFERENCES Concession(ConcessionID)
);

