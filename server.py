from flask import Flask
from flask_restful import Resource, Api
import psycopg2
import psycopg2.extras

app = Flask(__name__)
api = Api(app)

class Groups(Resource):
    groups_list = []
    
    def get(self):
        self.load_groups()
        return self.groups_list
        
    def load_groups(self):
        try:
            #подключаемся к базе
            conn = psycopg2.connect(host='localhost', user='posrgres', password='123', dbname='institut', port='5432')
            #создаем курсор
            cursor = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

            cursor.execute('SELECT * FROM groups')
            for row in cursor:
                id = row['ID']
                name = row['TITLE']
                url = row['URL']
                self.groups_list.append({'id': id, 'name': name, 'url': url})
                
            conn.close()
        except Exception as e:
            print(str(e))

api.add_resource(Groups, '/groups')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')