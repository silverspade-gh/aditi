# If not installed, use pip install psycopg2-binary
import psycopg2

# Database Connection Credentials
from db_creds import db_params

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
