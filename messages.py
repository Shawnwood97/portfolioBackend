from flask import request, Response
import dbh
import json
import traceback


def send_message():
  arg_scheme = [
      {
          'required': True,
          'name': 'email_address',
          'type': str
      },
      {
          'required': True,
          'name': 'users_name',
          'type': str
      },
      {
          'required': True,
          'name': 'message',
          'type': str
      }
  ]
  parsed_args = dbh.input_handler(request.json, arg_scheme)

  if(parsed_args['success'] == False):
    return parsed_args['error']
  else:
    parsed_args = parsed_args['data']

  result = dbh.run_query(
      "INSERT INTO messages (name, email_address, message) VALUES (?,?,?)", [parsed_args['users_name'], parsed_args['email_address'], parsed_args['message']])

  # error check on above query
  if(result['success'] == False):
    return result['error']

  if(result['data'] > -1):
    messages_json = json.dumps(result['data'], default=str)
    return Response(messages_json, mimetype='application/json', status=200)
  else:
    return Response("Error sending message", mimetype="text/plain", status=400)
