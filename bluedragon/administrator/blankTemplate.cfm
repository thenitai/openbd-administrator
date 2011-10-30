<!---
    Copyright (C) 2008 - Open BlueDragon Project - http://www.openbluedragon.org
    
    Contributing Developers:
    Matt Woodward - matt@mattwoodward.com

    This file is part of of the Open BlueDragon Administrator.

    The Open BlueDragon Administrator is free software: you can redistribute 
    it and/or modify it under the terms of the GNU General Public License 
    as published by the Free Software Foundation, either version 3 of the 
    License, or (at your option) any later version.

    The Open BlueDragon Administrator is distributed in the hope that it will 
    be useful, but WITHOUT ANY WARRANTY; without even the implied warranty 
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
    General Public License for more details.
    
    You should have received a copy of the GNU General Public License 
    along with the Open BlueDragon Administrator.  If not, see 
    <http://www.gnu.org/licenses/>.
--->
<cfsilent>
  <cfscript>
    contextPath = getPageContext().getRequest().getContextPath();
    
    if (contextPath is "/") {
      contextPath = "";
    }
    
    theSection = ListGetAt(CGI.SCRIPT_NAME, listLen(CGI.SCRIPT_NAME, "/") - 1, "/");
    thePage = ListLast(CGI.SCRIPT_NAME, "/");
  </cfscript>
</cfsilent>
<cfoutput>
  <html>
    <head>
      <title>Open BlueDragon Administrator</title>
      <link rel="shortcut icon" href="#contextPath#/bluedragon/administrator/images/favicon.ico" />
      <link rel="stylesheet" href="#contextPath#/bluedragon/administrator/css/bootstrap.css" type="text/css" />
      <script src="#contextPath#/bluedragon/administrator/js/jquery-1.6.4.min.js" type="text/javascript"></script>      
      <script src="#contextPath#/bluedragon/administrator/js/bootstrap-alerts.js" type="text/javascript"></script>
    </head>

    <body>
      #request.content#
    </body>
  </html>
</cfoutput>
