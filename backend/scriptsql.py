import sqlite3

# Connecter à la base de données SQLite
conn = sqlite3.connect("data.db")
with open("export.sql", "w") as f:
    for line in conn.iterdump():
        f.write(f"{line}\n")
print("Exportation terminée dans export.sql")
conn.close()
