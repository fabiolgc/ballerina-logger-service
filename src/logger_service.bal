import ballerina/http;                                            
import ballerina/log;   
import ballerina/io;   
                                                                         
listener http:Listener endpoint = new (3000);                     

@http:ServiceConfig {                                             
    basePath: "/api"                                              
}                                                                 
                                                                  
service Logger on endpoint {                                     
    @http:ResourceConfig{                                         
        path: "/logger",                                          
        methods: ["POST"]                                         
                                                                  
    }           
    resource function GetTextPayload(http:Caller caller, http:Request req) {
       
        http:Response response = new;
        var payload = req.getPayloadAsString();
        io:println("payload extratecd: " + <string>payload);             

        response.statusCode = 200;  
        response.setContentType("text/plain; charset=utf-8");      
        response.setPayload("payload received");

        var result = caller->respond(response);
        if (result is error) {
                log:printError("error sending response", err = result);
        }
   }

}