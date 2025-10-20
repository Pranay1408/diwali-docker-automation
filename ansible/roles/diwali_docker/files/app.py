from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "<h1>🪔 Happy Diwali from DevOps! 🪔</h1><p>Automated with Terraform + Ansible + Docker + AWS</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

