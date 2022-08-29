<%
  //allow access only if session exists
  String user_id = null;
  if(session.getAttribute("id_user") == null){
    response.sendRedirect("login.jsp");
  }else user_id = String.valueOf(session.getAttribute("id_user"));
  String firstName = null;
  String lastName = null;
  String sessionID = null;
  Cookie[] cookies = request.getCookies();
  if(cookies != null){
    for(Cookie cookie : cookies){
      if(cookie.getName().equals("firstName")) firstName = cookie.getValue();
      if(cookie.getName().equals("lastName")) lastName = cookie.getValue();
      if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
    }
  }
%>