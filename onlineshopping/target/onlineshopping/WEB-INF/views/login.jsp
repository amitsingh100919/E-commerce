<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
 <div class="container-wrapper">
    <div class="container">
        <div class="page-header">
    	 <h1 class="h1">
				SignIn <small>Buy N Build</small>
			</h1>
			</div>
		
         			  <div  class="modal-dialog"  >
      <div class="modal-content">
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-8">
                      <div class="well">	
                         <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
           
            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">Username: </label>
                    <input type="text" id="username" class="form-control" name="username" class="form-control" placeholder="user name" />
                </div>
                <div class="form-group">
                    <label for="password">Passwrod:</label>
                    <input type="password" id="password" class="form-control" name="password" class="form-control" placeholder="password"/>
                </div>
                <div >
                <input type="submit" value="SignIn" class="btn btn-default">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                 <span style="float:right;">Remember me</span><input type="checkbox" style="float:right;"/>
                 
                
                </div>
          </form>
            </div></div></div>
        
        </div>
    </div>
    </div>
    
</div></div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>
