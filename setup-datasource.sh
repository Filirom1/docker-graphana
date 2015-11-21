#!/bin/bash

curl 'http://admin:admin@localhost:3000/api/datasources' -X POST -H 'Content-Type: application/json;charset=UTF-8' --data-binary '{"name":"KairosDB","type":"kairosdb","url":"http://localhost:8080","access":"direct","isDefault":true}'
