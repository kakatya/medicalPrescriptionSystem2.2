<#import "parts/common.ftlh" as nav>
<@nav>
    <form action="/registrationAdmin" method="post">
        <div><input type="text" name="username" placeholder="User name"/></div>
        <div><input type="password" name="password" placeholder="User password"/></div>
        <button type="submit">Add new Admin</button>
    </form>
</@nav>

