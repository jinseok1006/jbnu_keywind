<#import "template.ftl" as layout>
<#import "components/atoms/alert.ftl" as alert>
<#import "components/atoms/link.ftl" as link>

<@layout.registrationLayout displayMessage=false; section>
  <#if section="header">
    ${kcSanitize(msg("errorTitle"))?no_esc}
  <#elseif section="form">
    <@alert.kw color="error">
      <ul style="list-style-type: disc; padding-left: 20px;">
        <li>${msg("addRegister1")}</li>
        <br>
        <li>${msg("addRegister2")}</li>
      </ul>
    </@alert.kw>
    <@alert.kw color="error">
      <ul style="list-style-type: disc; padding-left: 20px;">
        <li>${kcSanitize(message.summary)?no_esc}</li>
      </ul>
    </@alert.kw>
    <#if !skipLink??>
      <#if client?? && client.baseUrl?has_content>
        <@link.kw color="secondary" href=client.baseUrl size="small">
          ${kcSanitize(msg("backToApplication"))?no_esc}
        </@link.kw>
      </#if>
    </#if>
  </#if>
</@layout.registrationLayout>
