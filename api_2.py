from flask import Flask
from flask_restful import Resource, Api 
import paycopg2
#pip instali Hlask-rostrul #pip install psycopg2
import paycopg2.extras

app = Flask(__name__)
api = Api (app)

class Groups (Resource) :
    groups_1ist = []

    def get (self):
        self.load_groups ()
        return self.groups_list

    def Load_groups (self) :
        try: 
            #подключаемся к баво
            conn = psycopg2.connect (host="localhost", user="postgres", password="123", dbname="institut", port="5432") 
            #создаем курсор 
            cursor = conn.cursor(cursor_factory=psycopg2.extras.Dictcursor)
            
            cursor.execute ("SELECT * FROM groups")
            for row in cursor:
                id = row['ID']
                name = row['TITLE']
                self.groups_list.append({'id': id, 'name': name})
            conn.close ()
        except Exception as e: 
            print (str(e))

api,add_resource (Groups, '/groups')
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')