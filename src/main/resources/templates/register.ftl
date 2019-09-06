<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
Register page
${message}
<@l.login "/register" />
</@c.page>