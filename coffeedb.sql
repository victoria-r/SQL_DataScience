/*
 * SQLite CREATE TABLE examples.
 * Created by Alvin Alexander, http://alvinalexander.com
 * Released under the Creative Commons License.
 */

--
-- coffees
--
CREATE TABLE coffees (
  id INTEGER PRIMARY KEY,
  coffee_name TEXT NOT NULL,
  price REAL NOT NULL
);

--
-- salespeople
--
CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  commission_rate REAL NOT NULL
);

--
-- customers
--
CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  company_name TEXT NOT NULL,
  street_address TEXT NOT NULL,
  city TEXT NOT NULL,
  state TEXT NOT NULL,
  zip TEXT NOT NULL
);

--
-- orders
--
CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  salesperson_id INTEGER,
  FOREIGN KEY(customer_id) REFERENCES customers(id),
  FOREIGN KEY(salesperson_id) REFERENCES salespeople(id)
);

/*
 * order_items (multiline comment example)
 */
CREATE TABLE order_items (
  id INTEGER PRIMARY KEY,
  order_id INTEGER,
  product_id INTEGER,
  product_quantity INTEGER,
  FOREIGN KEY(order_id) REFERENCES orders(id),
  FOREIGN KEY(product_id) REFERENCES products(id)
);