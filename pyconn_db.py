# If not installed, use pip install psycopg2-binary
import psycopg2

# Database connection parameters
db_params = {
    'dbname': 'aditi',
    'user': 'postgres',
    'password': 'notmyactualpassword', # replace notmyactualpassword with your actual password
    'host': 'db.notmyactuallocation.us-east-1.rds.amazonaws.com',  # replace db.notmyactuallocation with the db's endpoint
    'port': '5432'        # Default PostgreSQL port
}

try:
    # Establish the connection
    connection = psycopg2.connect(**db_params)
    cursor = connection.cursor()
    
    # Execute a query
    cursor.execute("SELECT * FROM places;")
    
    # Fetch results
    rows = cursor.fetchall()
    for row in rows:
        print(row)

except Exception as e:
    print(f"Error: {e}")
finally:
    if cursor:
        cursor.close()
    if connection:
        connection.close()
