<#import "parts/common.ftlh" as nav>
<@nav.page>
    <h1>Hello doctor!</h1>
    <div>
        <div>
            <h1>New Patient</h1>
            <form method="post" action="/registrationPatient">
                <input type="text" name="username" placeholder="patient's name">
                <input type="password" name="password" placeholder="patient's password">
                <button type="submit">create new doctor</button>
            </form>
        </div>
    </div>
</@nav.page>


