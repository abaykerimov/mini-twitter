<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    Add new user
    <#if message??>${message}</#if>
    <@l.login "/register" />
    <a href="/login">Sign in</a>
</@c.page>