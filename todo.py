from flask import Flask, request, render_template_string, redirect, url_for # type: ignore

app = Flask(__name__)

# Liste des tâches en mémoire (temporaire)
tasks = []

# Page HTML minimaliste
html = """
<!doctype html>
<title>Ma TODO List</title>
<h1>Ma TODO List</h1>
<form method="POST" action="/add">
  <input name="task" placeholder="Nouvelle tâche">
  <input type="submit" value="Ajouter">
</form>
<ul>
  {% for task in tasks %}
    <li>{{ task }}</li>
  {% endfor %}
</ul>
"""

@app.route('/')
def index():
    return render_template_string(html, tasks=tasks)

@app.route('/add', methods=['POST'])
def add():
    task = request.form['task']
    tasks.append(task)
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True)
