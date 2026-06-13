INSERT INTO Customers VALUES
(1, 'John Doe', '9876543210', '[john@email.com](mailto:john@email.com)'),
(2, 'Sarah Smith', '9876543211', '[sarah@email.com](mailto:sarah@email.com)'),
(3, 'Mike Johnson', '9876543212', '[mike@email.com](mailto:mike@email.com)');

INSERT INTO Bookings VALUES
(1, '2024-05-10', 5, 1),
(2, '2024-05-12', 3, 2),
(3, '2024-05-15', 1, 3);

INSERT INTO MenuItems VALUES
(1, 'Pizza', 'Garlic Bread', 'Ice Cream'),
(2, 'Pasta', 'Soup', 'Cake');

INSERT INTO Menus VALUES
(1, 'Italian Menu', 'Italian', 1),
(2, 'Special Menu', 'Italian', 2);

INSERT INTO Orders VALUES
(1, 2, 120.00, 1, 1),
(2, 1, 75.00, 2, 2),
(3, 3, 180.00, 3, 1);
