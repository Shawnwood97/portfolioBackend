from flask import request, Response
import dbh
import json
import traceback


def list_front_skills():

  result = dbh.run_query(
      'SELECT fe.id, fe.name, fe.logo FROM front_end fe')

  # error check on above query
  if(result['success'] == False):
    return result['error']

  if(len(result['data']) > 0):
    skills_json = json.dumps(result['data'], default=str)
    return Response(skills_json, mimetype='application/json', status=200)
  else:
    return Response("Skills Not Found", mimetype="text/plain", status=404)


def list_back_skills():

  result = dbh.run_query(
      'SELECT be.id, be.name, be.logo FROM back_end be')

  # error check on above query
  if(result['success'] == False):
    return result['error']

  if(len(result['data']) > 0):
    skills_json = json.dumps(result['data'], default=str)
    return Response(skills_json, mimetype='application/json', status=200)
  else:
    return Response("Skills Not Found", mimetype="text/plain", status=404)


def list_tool_skills():

  result = dbh.run_query(
      'SELECT t.id, t.name, t.logo FROM tools t')

  # error check on above query
  if(result['success'] == False):
    return result['error']

  if(len(result['data']) > 0):
    skills_json = json.dumps(result['data'], default=str)
    return Response(skills_json, mimetype='application/json', status=200)
  else:
    return Response("Skills Not Found", mimetype="text/plain", status=404)
