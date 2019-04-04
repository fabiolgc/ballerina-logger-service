# Ballerina Logger
This is a ballerina service example that works with plain text instead of JSON. This has been done to clarify a question that came up from the WSO2 LATAM Community on Slack. Join Slack Community [here](https://join.slack.com/t/wso2latam/shared_invite/enQtNDkwNzQ3MTk3MDcyLTMwMGNhOTk1NjliZmM5NzU1OWFlMWY3NjBjMjI4MTU5NWM3ZWVmMGIxYTgyNzA3YmU3ZmFiMmMyMzJkY2VjYWM)

# Prerequisites
Ballerina installed and configured - ballerina/0.990.3

# How to run
1) Open the service path on a terminal window.

2) Execute ballerina:

`run logger_service.bal`

![Output](https://github.com/fabiolgc/ballerina-logger-service/blob/master/running-service.png)

3) Call ballerina service: 

Using CURL:

`curl -X POST -d "teste" -H "Content-Type: text/plain" http://localhost:3000/api/logger`

Or using Postman

![Output](https://github.com/fabiolgc/ballerina-logger-service/blob/master/calling-service.png)
