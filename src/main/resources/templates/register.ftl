<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<p>Add new user</p>
    ${message?if_exists}
    <@l.login "/register" />
    <a href="/login">Sign in</a>
</@c.page>