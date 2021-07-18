<#import "parts/common.ftlh" as nav>
<@nav.page>
<h1>Hello admin!</h1>
    <div class="form-registration f1">
        <form method="post" action="/registrationDoctor">
            <img class="mb-4" src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
            <h1 class="h3 mb-3 fw-normal">Регистрация доктора</h1>

            <div class="form-floating">
                <input type="text" class="form-control" name="username" id="floatingInput" placeholder="Иванов Иван Иванович">
                <label for="floatingInput">Имя доктора</label>
            </div>
            <div class="form-floating">
                <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Пароль">
                <label for="floatingPassword">Пароль</label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Зарегистрировать</button>
        </form>
    </div>

    <div class="form-registration f2">
        <form method="post" action="/registrationPharmacist">
            <img class="mb-4" src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
            <h1 class="h3 mb-3 fw-normal">Регистрация фармацевта</h1>

            <div class="form-floating">
                <input type="text" class="form-control" name="username" id="floatingInput" placeholder="Иванов Иван Иванович">
                <label for="floatingInput">Имя фармацевта</label>
            </div>
            <div class="form-floating">
                <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Пароль">
                <label for="floatingPassword">Пароль</label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
        </form>
    </div>
</@nav.page>
