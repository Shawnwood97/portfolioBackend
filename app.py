from flask import Flask
import sys
import projects
import messages
import skills

app = Flask(__name__)

#! =========== /API/PROJECTS ENDPOINT ============


@app.get('/api/projects')
def call_list_projects():
  return projects.list_projects()


#! =========== /API/MESSAGES ENDPOINT ============


@app.post('/api/messages')
def call_send_message():
  return messages.send_message()

#! =========== /API/SKILLS ENDPOINT ============


@app.get('/api/skills/frontend')
def call_list_front_skills():
  return skills.list_front_skills()


@app.get('/api/skills/backend')
def call_list_backend_skills():
  return skills.list_back_skills()


@app.get('/api/skills/tools')
def call_list_tool_skills():
  return skills.list_tool_skills()


if(len(sys.argv) > 1):
  mode = sys.argv[1]
else:
  print("No mode argument, please pass a mode argument when invoking the file!")
  exit()

if(mode == "prod"):
  import bjoern  # type: ignore
  bjoern.run(app, "0.0.0.0", 5019)
elif(mode == "test"):
  from flask_cors import CORS
  CORS(app)
  app.run(debug=True)
else:
  print("Invalid mode, please select either 'prod' or 'test'")
  exit()
