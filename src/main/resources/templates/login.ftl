<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<p>Login page</p>
<@l.login "/login" />
<a href="/register">Register</a>
</@c.page>
