﻿from urllib.parse import parse_qsl

def wsgi_application(environ, start_response):
    data = ''
    if environ['REQUEST_METHOD'] == 'GET':
        if environ['QUERY_STRING'] != '':
            params = parse_qsl(environ['QUERY_STRING'])
            for item in params:
               data += item[0] + '=' + item[1] + '\n'
    headers = [
        ('Content-Type','text/plain'),
        ('Content-Length', str(len(data)))
    ]
    start_response('200 OK', headers)
    return [data.encode('utf-8')]
