<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
${message?ifExists}
<div class="mb-5">Page login</div>
<@l.login "/login" false/>
</@c.page>