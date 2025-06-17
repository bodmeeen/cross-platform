CREATE TABLE customers (
  id_customers      INT NOT NULL AUTO_INCREMENT,
  name             VARCHAR(45) NOT NULL,
  address          VARCHAR(45) NOT NULL,
  phone_number     VARCHAR(45) NOT NULL,
  contact_person   VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_customers)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE products (
  id_product int NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  price decimal(10,2) NOT NULL,
  description varchar(100) NOT NULL,
  PRIMARY KEY (id_product)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE orders (
  id_orders int NOT NULL AUTO_INCREMENT,
  customer_id int NOT NULL,
  product_id int NOT NULL,
  amount int NOT NULL,
  date date NOT NULL,
  PRIMARY KEY (id_orders),
  KEY customerID_idx (customer_id),
  KEY productID_idx (product_id),
  CONSTRAINT customerID FOREIGN KEY (customer_id) REFERENCES customers (id_customers),
  CONSTRAINT productID FOREIGN KEY (product_id) REFERENCES products (id_product)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;