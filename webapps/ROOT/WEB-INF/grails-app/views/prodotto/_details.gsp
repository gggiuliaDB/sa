<%--
<div role="tabpanel">
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><g:message code="prodotto.ingredienti.label"/></a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><g:message code="prodotto.comeConsumarlo.label"/></a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><g:message code="prodotto.conservazione.label"/></a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">${internazionalizzazione.ingredienti}</div>
    <div role="tabpanel" class="tab-pane" id="profile">${internazionalizzazione.comeGustarlo}</div>
    <div role="tabpanel" class="tab-pane" id="messages">${internazionalizzazione.conservazione}</div>
  </div>
</div>
--%>
<div class="row">
    <div class="col-md-4">
        <div class="panel panel-success">
           <div class="panel-heading">
                <h3 class="panel-title"><g:message code="prodotto.ingredienti.label"></g:message></h3>
            </div>
            <div class="panel-body panel-detail">
                ${internazionalizzazione.ingredienti}
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-success">
           <div class="panel-heading">
                <h3 class="panel-title"><g:message code="prodotto.comeConsumarlo.label"></g:message></h3>
            </div>
            <div class="panel-body panel-detail">
                ${internazionalizzazione.comeGustarlo}
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-success">
           <div class="panel-heading">
                <h3 class="panel-title"><g:message code="prodotto.conservazione.label"></g:message></h3>
            </div>
            <div class="panel-body panel-detail">
                ${internazionalizzazione.conservazione}
            </div>
        </div>
    </div>
</div>
 