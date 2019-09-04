from flask import Flask, render_template, url_for
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello Simone! Go to /index :)'

@app.route('/index', methods=['GET', 'POST'])
def index(): 
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')