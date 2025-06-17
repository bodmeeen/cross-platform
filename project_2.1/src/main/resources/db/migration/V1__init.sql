CREATE TABLE `customers` (
  `idcustomers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  PRIMARY KEY (`idcustomers`)
)

CREATE TABLE `products` (
  `idproducts` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`idproducts`)
)

CREATE TABLE `orders` (
  `idorders` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `delivery_method_id` int NOT NULL,
  `amount` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idorders`),
  KEY `customerID_idx` (`customer_id`),
  KEY `productID_idx` (`product_id`),
  KEY `deliverymID_idx` (`delivery_method_id`),
  CONSTRAINT `customerID` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`idcustomers`),
  CONSTRAINT `deliverymID` FOREIGN KEY (`delivery_method_id`) REFERENCES `delivery_methods` (`iddelivery_methods`),
  CONSTRAINT `productID` FOREIGN KEY (`product_id`) REFERENCES `products` (`idproducts`)
)

