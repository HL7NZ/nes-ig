#!/usr/bin/env node
/**
 * make the CapabilityStatement XML file for terminology
 * 
 * execute: ./makeCapabilityStatement {IG}
 * 
 * 
 * */

let fs = require('fs');

//let igRoot = "/Users/wendy/IG/";

//const { Remarkable } = require('../globalScripts/node_modules/remarkable');
//const { Remarkable } = require('../common/node_modules/remarkable');
const { Remarkable } = require('remarkable');

var md = new Remarkable();

let rootPath = "./fsh-generated/resources/";

let outFile1 = "./input/pagecontent/API.xml";  // for IG publisher

console.log('Building summary of the CapabilityStatement resource ')

console.log('Location of CapabilityStatement:' + rootPath)
console.log('Writing output to ' + outFile1)

let hashInteraction = {}
hashInteraction['read'] = "Supports retrieving a resource by its id. Will return a single resource."
hashInteraction['search-type'] = "Queries against the resource type. Will return a Bundle (even if there are no matching resources)."

let ar = []
ar.push("<div xmlns='http://www.w3.org/1999/xhtml'>")

ar.push("<!-- Generated by the makeCapabilityStatement script -->")



if (fs.existsSync(rootPath)) {
    let arFiles = fs.readdirSync(rootPath);
    arFiles.forEach(function(name){

        if (name.substr(0,3) == 'Cap') {
            //for now - assume only 1. will need what to do if there is > 1

            let fullFileName = rootPath + "/"+ name;
            let contents = fs.readFileSync(fullFileName).toString();
            let capStmt = JSON.parse(contents)

            if (capStmt.description) {
                ar.push('<br/><div>' + cleanText(capStmt.description) + "</div><br/>") 
            }
            
            ar.push('<br/><div><h3>' + "REST APIs" + "</h3></div><br/>")
			ar.push('<br/><h4>' + "Resource Level Interactions" + "</h4>") 
            capStmt.rest.forEach(function(rest){
                rest.resource.forEach(function(res){

                    ar.push(`<a name="${res.type}"> </a>`)   
                    
                    ar.push(`<h5>${res.type}</h5>`)   
					
                    if (res.documentation) {
                        let documentation = cleanText(res.documentation) || ""                        
                        ar.push(`<div>${documentation}</div>`)
                        ar.push("<br></br>")
                    }

                    if (res.interaction) {
                        ar.push("<strong>Interactions</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='10%'>Name</th><th width='10%'>Verb</th><th width='20%'>URL</th><th width='50%'>Documentation</th><th width='10%'>Scope</th></tr>")
                        res.interaction.forEach(function(int){
                            ar.push("<tr>")
                            ar.push(`<td>${int.code}</td>`)
                            //let documentation = cleanText(int.documentation) || hashInteraction[int.code]
                            let documentation = int.documentation.split(',')
                            let verb  = documentation[0] ?? " "
                            let url = documentation[1] ?? " "
                            let doc = documentation[2] ?? " "
                            let scope = documentation[3] ?? " "
							ar.push(`<td>${verb}</td>`)
							ar.push(`<td>${url}</td>`)
                            ar.push(`<td>${doc}</td>`)
                            ar.push(`<td>${scope}</td>`)
                            ar.push("</tr>")
    
                        })
                        ar.push("</table>")
                    }
                    
                    if (res.operation) {
                        
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<strong>Operations</strong>")
                        ar.push("<tr><th width='10%'>Name</th><th width='10%'>Definition</th><th width='10%'>Verb</th><th width='20%'>URL</th><th width='40%'>Documentation</th><th width='10%'>Scope</th></tr>")
                        res.operation.forEach(function(int){
                            ar.push("<tr>")
                            ar.push(`<td>${int.name}</td>`)
                            console.log('operation name ' + int.name)                           
							ar.push(`<td><a href ="OperationDefinition-Patient-${int.name}.html"> ${int.definition} </a></td>`)
							
                                          
                           	let documentation = int.documentation.split(',')
                           	let verb  = documentation[0] ?? " "
                           	let url = documentation[1] ?? " "
                           	let doc = documentation[2] ?? " "
                           	let scope = documentation[3] ?? " "
                          	ar.push(`<td>${verb}</td>`)
							ar.push(`<td>${url}</td>`)
                            ar.push(`<td>${doc}</td>`)
                            ar.push(`<td>${scope}</td>`)
                            ar.push("</tr>")
    
                        })
                        ar.push("</table>")
                    }
                    
                    if (res.searchParam) {
                        ar.push("<strong>Search Parameters</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")

                        //ar.push("<tr><th width='15%'>Name</th><th>Type</th> <th>Definition</th><th width='40%'>Documentation</th></tr>")
                        ar.push("<tr><th width='30%'>Name</th><th>Type</th><th width='70%'>Documentation</th></tr>")
                       
                        res.searchParam.forEach(function(int){
                            ar.push("<tr>")
                            ar.push(`<td>${int.name}</td>`)


                            //http://hl7.org/fhir/search.html#reference

                            ar.push(`<td><a target='_blank' href="http://hl7.org/fhir/search.html#${int.type}">${int.type}</a></td>`)
/*
                            let definition =  ""
                            if (int.definition) {
                                definition = int.definition
                            } 
                            ar.push(`<td>${definition}</td>`)
                            */
                            let documentation = cleanText(int.documentation) || ""

                            if (int.definition) {
                                documentation = "<div>Definition: " + int.definition + "</div>" + documentation
                            } 

                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")
    
                        })
                        ar.push("</table>")
                    }


                    if (res.searchInclude) {
                        ar.push("<strong>Search includes</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='30%'>Name</th></tr>")
                        res.searchInclude.forEach(function(inc){
                            ar.push("<tr>")
                            ar.push(`<td>${inc}</td>`)
                            ar.push("</tr>")
    
                        })
                        ar.push("</table>")
                        ar.push("<em>These are the _include parameters that are supported on searches</em>")
                        ar.push("<br/><br/>")
                    }


                })


            })

			
			ar.push('<br/><h4>' + "Server Level Interactions" + "</h4></a>") 
			ar.push("<strong>Operations</strong>")
			ar.push("<table class='table table-bordered table-condensed'>")
		    ar.push("<tr><th width='10%'>Name</th><th width='10%'>Verb</th><th width='20%'>URL</th><th width='40%'>Documentation</th><th width='10%'>Scope</th></tr>")
			capStmt.rest.forEach(function(rest){				
				rest.operation.forEach(function(ser){
					  ar.push(`<a name="${ser.name}"> </a>`)   
                      
				 
					ar.push("<tr>")
					ar.push(`<td>${ser.name}</td>`)
					//let documentation = cleanText(ser.documentation) || hashInteraction[ser.code]
					let documentation = ser.documentation.split(',')
					let verb  = documentation[0] ?? " "
					let url = documentation[1] ?? " "
					let doc = documentation[2] ?? " "
					let scope = documentation[3] ?? " "
					ar.push(`<td>${verb}</td>`)
					ar.push(`<td>${url}</td>`)
					ar.push(`<td>${doc}</td>`)
					ar.push(`<td>${scope}</td>`)
					ar.push("</tr>")

				
				})
           
			})
			ar.push("</table>")
			

            if (capStmt.messaging) {	
				ar.push("<br/><h3>Messages</h3></a>")
				ar.push("<strong>Definitions</strong>")
				ar.push("<table class='table table-bordered table-condensed'>")
			ar.push("<tr><th width='30%'>Name</th><th width='70%'>Definitions</th></tr>")
				capStmt.messaging.forEach(function(messaging){
				
					messaging.supportedMessage.forEach(function(mes){
				 		
                        let mode = cleanText(mes.mode) || "" 
                        ar.push("<tr>")                       
                        ar.push(`<td>${mode}</td>`)
                        //ar.push("<br></br>")
                        let def = cleanText(mes.definition) || ""                        
                        ar.push(`<td>${def}</td>`)//
                        //ar.push("<br></br>")
                        ar.push("</tr>")
                    
					})
           
				})
				ar.push("</table>")
			}
			
			
			
                      
			
        }




    })

}

 
 
/*
ar.push("<h3>Contained Resources</h3>") 
ar.push("<p>When a resource contains a reference to another resource, the  HPI server will not render the reference as a contained resource,  only the reference links themselves will be included in responses.</p>")
*/
ar.push("</div>")



let file1 = ar.join('\r\n')
//fs.writeFileSync(outFile,file1);
fs.writeFileSync(outFile1,file1);



//ensure that characters that can update XML are 'escpaed'
function cleanText(s) {

    if (s) {
        return md.render(s)
    }
    /*

    if (s) {
        //replace all instances of '& ' with 'and '
        let s1 = s.split('& ').join('and ')
        return s1
    }
    */


}