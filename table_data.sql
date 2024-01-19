-- Customers
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone)
VALUES
    (1, 'John', 'Doe', 'john.doe@email.com', '555-1234'),
    (2, 'Jane', 'Smith', 'jane.smith@email.com', '555-5678'),
    (3, 'Bob', 'Johnson', 'bob.johnson@email.com', '555-9876');

-- Movies
INSERT INTO Movie (MovieID, Title, Genre, ReleaseDate, Duration)
VALUES
    (1, 'Inception', 'Sci-Fi', '2010-07-16', 148),
    (2, 'The Dark Knight', 'Action', '2008-07-18', 152),
    (3, 'Titanic', 'Romance', '1997-12-19', 195);

-- Tickets
INSERT INTO Ticket (TicketID, CustomerID, MovieID, SeatNumber, PurchaseDate, Price)
VALUES
    (1, 1, 1, 'A1', '2024-01-07', 10.50),
    (2, 2, 1, 'B3', '2024-01-08', 10.50),
    (3, 3, 2, 'C2', '2024-01-09', 12.00),
    (4, 1, 3, 'D5', '2024-01-10', 9.75);

-- Concessions
INSERT INTO Concession (ConcessionID, Name, Price)
VALUES
    (1, 'Large Popcorn', 5.50),
    (2, 'Soda', 3.25),
    (3, 'Candy', 2.75);

-- ConcessionTransactions
INSERT INTO ConcessionTransaction (TransactionID, CustomerID, ConcessionID, Quantity, TransactionDate)
VALUES
    (1, 1, 1, 2, '2024-01-07'),
    (2, 2, 2, 1, '2024-01-08'),
    (3, 3, 3, 3, '2024-01-09'),
    (4, 1, 1, 1, '2024-01-10');