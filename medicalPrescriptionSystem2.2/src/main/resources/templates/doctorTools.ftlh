<#import "parts/common.ftlh" as nav>
<#include "spring.ftl">
<style>
    .ml-5{
        position: relative;
        margin-bottom: .5rem;
    }
</style>
<@nav.page>
    <div class="container">
        <form class="form-inline mt-2 mt-md-0" method="get" action="/openDoctorTools">
            <input class="form-control mr-sm-2" type="text" name="username"  placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        </div>
    <div class="ml-5">
        <#if users??>
            <#list users as user>
                <ul>
                    <li>${user.getUsername()}: <a href="/patienntManeg/${user.getId()}"> Edit</a></li>
                </ul>

            </#list>
            <#else >
            <h1 class="fs-4">Поиск пациентов</h1>
        </#if>

    </div>
    <div>

        <div class="form-registration f1">
            <form method="post" action="/registrationPatient">
                <img class="mb-4" src="" alt="" width="72" height="57">
                <h1 class="h3 mb-3 fw-normal">Регистрация пациента</h1>

                <div class="form-floating">
                    <input type="text" class="form-control" name="username" id="floatingInput" placeholder="Иванов Иван Иванович">
                    <label for="floatingInput">Имя пациента</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Пароль">
                    <label for="floatingPassword">Пароль</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Зарегистрировать</button>
            </form>

        </div>
    </div>
</@nav.page>


