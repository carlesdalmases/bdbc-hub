<%
	
%>
<div id="lang_selector">
    <span style="color:white"><g:message code="1" default="|"/></span>
	<g:each in="${flags.keySet().sort() }" var="lang">
		<a href="${ uri + lang }" title="${message(code:'tittle.lang_link')}">
			<span class="lang_flag ${ lang==selected.toString()? selected_class : not_selected_class }" style="margin-left: 14px;">
			<g:if test="${flags[lang] == 'catalonia'}">
			        <g:message code="1" default="Català"/>
			</g:if>
			<g:if test="${flags[lang] == 'gb'}">
			        <g:message code="1" default="English"/>
			</g:if>

			<g:if test="${flags[lang] == 'es'}">
			        <g:message code="1" default="Español"/>
			</g:if>
			<%--<img alt="" src="${resource(plugin:'langSelector',dir:'images/flags/png',file:flags[lang]+'.png') }" border="0">--%>
			</span>

		</a>
		<span style="color:white"><g:message code="1" default="|"/></span>
	</g:each>
</div>