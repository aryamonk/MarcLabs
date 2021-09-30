/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function makeRequestObject()
    {
        var xmlHttp=false;
        
        try
            {
                    xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');
                
                
            }
        catch(e)
            {
                try
                    {
                            xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
                        
                    }
                 catch(E)
                    {
                            xmlHttp=false;
                        
                    }
                
            }
            
       if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
            {
                xmlHttp=new XMLHttpRequest();
                
            }
        return xmlHttp;
    }


function populateCategory(val)
        {
            var xmlHttp=makeRequestObject();
            var _url='populateSubcategory.jsp?category='+val;
            
            xmlHttp.open('GET',_url,true);
            
            xmlHttp.onreadystatechange=function()
                                            {
                                                if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            
                                                            if(content)
                                                                    {
                                                                        document.getElementById("cmb1").innerHTML=content;
                                                                        
                                                                    }
                                                            
                                                            
                                                        }
                                                
                                                
                                            }
            
            
            
            xmlHttp.send(null);
            
        }
        
function crossCheck(val)
    {
        var xmlHttp=makeRequestObject();
        var _url='CrossCheckId.jsp?userid='+val;
        
        xmlHttp.open('GET',_url,true);
        xmlHttp.onreadystatechange=function()
                                        {
                                            
                                                if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            
                                                            if(content)
                                                                {
                                                                    document.getElementById("info").innerHTML=content;
                                                                    
                                                                }
                                                            else
                                                                {
                                                                    
                                                                    document.getElementById("info").innerHTML="";
                                                                    
                                                                }
                                                            
                                                            
                                                            
                                                        }
                                            
                                            
                                            
                                        }
        
     
    
           xmlHttp.send(null);
    }
    
   function getSecurityQuest()
        {
            var xmlHttp=makeRequestObject();
            var _url='GetSecurityQuest.jsp?email='+document.getElementById("uid").value;
            xmlHttp.open('GET',_url,true);
            xmlHttp.onreadystatechange=function()
                                            {
                                                if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            if(content)
                                                                {
                                                                    document.getElementById("block").innerHTML=content;
                                                                    
                                                                }
                                                            
                                                            
                                                        }
                                                
                                                
                                                
                                            }
                                            
                                            
            xmlHttp.send(null);
        }
        
        
 function addToCart(val)
        {
            var xmlHttp=makeRequestObject();
            var _url='AddToCart.jsp?pid='+val;
            
            xmlHttp.open('GET',_url,true);
            
            xmlHttp.onreadystatechange=function()
                                            {
                                                
                                                if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                                        {
                                                            var content=xmlHttp.responseText;
                                                            if(content)
                                                                {
                                                                    alert(content);
                    
                                                                }
                                                            
                                                        }
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
            
            
            
            xmlHttp.send(null);
        }