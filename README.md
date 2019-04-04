# Ballerina Logger
This is a ballerina service example that works with plain text instead of JSON. This has been done to clarify a question that came up from the WSO2 LATAM Community on Slack.

# Prerequisites
Ballerina installed and configured - ballerina/0.990.3

# How to run
1) Open the service path on a terminal window.

2) Execute ballerina:

`run logger_service.bal`

3) Call ballerina service: 

`curl -X POST -d "teste" -H "Content-Type: text/plain" http://localhost:3000/api/logger`
