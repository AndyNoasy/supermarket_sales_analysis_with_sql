CREATE TABLE public.categories (
    category_id INT PRIMARY KEY,
    category TEXT
);

CREATE TABLE public.departments (
    department_id INT PRIMARY KEY,
    department TEXT
);

CREATE TABLE public.products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category_id INT,
    department_id INT,
    FOREIGN KEY (category_id) REFERENCES public.categories (category_id),
    FOREIGN KEY (department_id) REFERENCES public.departments (department_id)
);

CREATE TABLE public.customers (
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT,
    customer_category TEXT
);

CREATE TABLE public.stores (
    store_id TEXT PRIMARY KEY,
    store_name TEXT
);

CREATE TABLE public.sales (
    store_id TEXT,
    "date" DATE,
    invoice INT,
    customer_id TEXT,
    product_id TEXT,
    quantity NUMERIC,
    unit_price NUMERIC,
    FOREIGN KEY (store_id) REFERENCES public.stores (store_id),
    FOREIGN KEY (customer_id) REFERENCES public.customers (customer_id),
    FOREIGN KEY (product_id) REFERENCES public.products (product_id)
);
