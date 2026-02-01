-- Схема БД на основе product_brief.md

CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  core_promise TEXT NOT NULL
);

CREATE TABLE assumptions (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  assumption TEXT NOT NULL
);

CREATE TABLE scenarios (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  code TEXT NOT NULL,
  persona TEXT NOT NULL,
  moment_of_pull TEXT NOT NULL,
  wow_7_day TEXT NOT NULL,
  retention_risks TEXT NOT NULL,
  best_motivators TEXT NOT NULL
);

CREATE TABLE target_scenarios (
  product_id INTEGER NOT NULL REFERENCES products(id),
  scenario_id INTEGER NOT NULL REFERENCES scenarios(id),
  PRIMARY KEY (product_id, scenario_id)
);

CREATE TABLE core_loops (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  step_order INTEGER NOT NULL,
  loop_text TEXT NOT NULL
);

CREATE TABLE key_modules (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  module_name TEXT NOT NULL
);

CREATE TABLE content_engine (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  unit_name TEXT NOT NULL,
  structure TEXT NOT NULL,
  scaling TEXT NOT NULL
);

CREATE TABLE pricing_monthly (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  tier TEXT NOT NULL,
  price_rub INTEGER NOT NULL
);

CREATE TABLE pricing_yearly (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  discount_ratio REAL NOT NULL
);

CREATE TABLE pricing_bundles (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  bundle_name TEXT NOT NULL,
  price_anchor_months_of_plus REAL NOT NULL
);

CREATE TABLE metrics (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  metric_group TEXT NOT NULL,
  metric_name TEXT NOT NULL
);

CREATE TABLE experiments (
  id INTEGER PRIMARY KEY,
  product_id INTEGER NOT NULL REFERENCES products(id),
  experiment_name TEXT NOT NULL,
  metric TEXT NOT NULL
);
