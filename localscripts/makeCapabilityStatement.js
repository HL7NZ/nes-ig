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

ar.push("<br/><div>API summary (generated from the capabilityStatement resource)</div><br/><br/>")

if (fs.existsSync(rootPath)) {
    let arFiles = fs.readdirSync(rootPath);
    arFiles.forEach(function(name){

        if (name.substr(0,3) == 'Cap') {
            //for now - assume only 1. will need what to do if there is > 1

            let fullFileName = rootPath + "/"+ name;
            let contents = fs.readFileSync(fullFileName).toString();
            let capStmt = JSON.parse(contents)

            //todo - convert markdown into HTML...
            if (capStmt.description) {
                ar.push('<br/><div>' + cleanText(capStmt.description) + "</div><br/>") 
            }
            ar.push('<br/><div><h3>' + "REST APIs" + "</h3></div><br/>")
			ar.push('<br/><div><h4>' + "Instance Level Interactions" + "</h4></div><br/>") 
            capStmt.rest.forEach(function(rest){
                rest.resource.forEach(function(res){

                    ar.push(`<a name="${res.type}"> </a>`)   
                    
                    ar.push(`<h3>${res.type}</h3>`)   
					
                    if (res.documentation) {
                        let documentation = cleanText(res.documentation) || ""                        
                        ar.push(`<div>${documentation}</div>`)
                        ar.push("<br></br>")
                    }

                    if (res.interaction) {
                        ar.push("<strong>Interactions</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='30%'>Code</th><th width='70%'>Documentation</th></tr>")
                        res.interaction.forEach(function(int){
                            ar.push("<tr>")
                            ar.push(`<td>${int.code}</td>`)
                            let documentation = cleanText(int.documentation) || hashInteraction[int.code]


                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")
    
                        })
                        ar.push("</table>")
                    }
                    
                    if (res.operation) {
                        ar.push("<strong>Operations</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='30%'>Name</th><th width='30%'>Definition</th><th width='40%'>Documentation</th></tr>")
                        res.operation.forEach(function(int){
                            ar.push("<tr>")
                            ar.push(`<td>${int.name}</td>`)
                            ar.push(`<td><a href ="${int.name}.xml"> ${int.definition} </a></td>`)
                            let documentation = cleanText(int.documentation) || hashInteraction[int.name]   
                            console.log("operation:"+documentation)                       
                            ar.push(`<td>${documentation}</td>`)
                            
                            ar.push("</tr>")
    
                        })
                        ar.push("</table>")
                    }
                    
                    if (res.searchParam) {
                        ar.push("<strong>Search Parameters</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")

                        //ar.push("<tr><th width='15%'>Name</th><th>Type</th> <th>Definition</th><th width='40%'>Documentation</th></tr>")
                        ar.push("<tr><th width='15%'>Name</th><th>Type</th><th width='70%'>Documentation</th></tr>")
                       
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
                        ar.push("<tr><th width='15%'>Name</th></tr>")
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

			ar.push('<br/><div><h4>' + "Server Level Interactions" + "</h4></div><br/>") 
			 ar.push("<tr><th width='15%'>Name</th><th>Definitions</th></tr>")
                      
			capStmt.rest.forEach(function(rest){
				rest.operation.forEach(function(ser){
				 
                        let name = cleanText(ser.name) || "" 
                        ar.push("<tr>")                       
                        ar.push(`<div>${name}</div>`)
                        ar.push("<br></br>")
                        let def = cleanText(ser.definition) || ""                        
                        ar.push(`<div>${def}</div>`)
                        ar.push("<br></br>")
                        ar.push("</tr>")
                    
				})
           
			})

            



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