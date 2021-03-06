from flask import request, Response
import dbh
import json
import traceback


def list_projects():

  result = dbh.run_query(
      'SELECT p.id, p.name, p.description, p.tech, p.image, p.link, p.code_link FROM projects p ORDER BY p.id')

  # error check on above query
  if(result['success'] == False):
    return result['error']

  print(result['data'])

  if(len(result['data']) > 0):
    projects_json = json.dumps(result['data'], default=str)
    return Response(projects_json, mimetype='application/json', status=200)
  else:
    return Response("Projects Not Found", mimetype="text/plain", status=404)
