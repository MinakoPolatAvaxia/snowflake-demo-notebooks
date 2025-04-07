EXECUTE IMMEDIATE $$
BEGIN
    -- First query: create a table
    CREATE OR REPLACE TEMP TABLE demo_table (
        id INT,
        name STRING
    );

    -- Second query: insert sample data
    INSERT INTO demo_table (id, name) VALUES (1, 'Alice'), (2, 'Bob');

    -- Third query: delete a record
    DELETE FROM demo_table WHERE id = 2;
END;
$$; 