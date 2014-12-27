<r:require module="carousel"/>
<div style="margin:0px auto;">
<div id="amazingcarousel-container-1">
    <div id="amazingcarousel-1" style="display:block;position:relative;width:100%;max-width:720px;margin:0px auto 0px;">
        <div class="amazingcarousel-list-container">
            <ul class="amazingcarousel-list">
                <g:each in="${prodottoInstanceList}" status="i" var="prodottoInstance">
                    <g:set var="internazionalizzazione" value="${prodottoInstance.getInternazionalizzazione(lang.toString())}" />
                
	                <li class="amazingcarousel-item">
	                    <div class="amazingcarousel-item-container">
	                        <div class="amazingcarousel-image">
	                        
	                        
	                            <g:link action="detail" id="${prodottoInstance.id}">
	                               <img class="center-block" src="${createLink(controller:'prodotto', action:'viewImage', id:prodottoInstance.id)}" alt="${internazionalizzazione.nome}"/>	                               
	                            </g:link>
	                        </div>
	                        <div class="amazingcarousel-title">${internazionalizzazione.nome?.toLowerCase()?.capitalize()}</div>
	                        <div class="amazingcarousel-description">${internazionalizzazione?.note?.toLowerCase()?.capitalize()}</div>
	                    </div>
	                </li>
	            </g:each>
            </ul>
        </div>
    </div>
</div>
</div>