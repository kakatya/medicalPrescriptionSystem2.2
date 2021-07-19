<#import "parts/common.ftlh" as nav>
<#include "spring.ftl">
    <#include "parts/scrt.ftlh">
<@nav.page>
<h1>Информация о пациенте: ${user.getUsername()}</h1>
    <#if patientCode??>
        <div><h2>Код пациента: ${patientCode.getCode()}</h2></div>
        <div class="formPrescip">
            <form method="post" class="tex-center" action="/patienntManeg/{user}/addPrst">
                <div class="form-floating">
                    <div class="form-floating">
                        <label for="username">Имя пациента</label>
                        <input type="text" class="form-control" name="username" value="${user.getUsername()}" id="username" placeholder="YHGFRR">
                    </div>
                    <div class="form-floating">
                        <label for="code">Код пациента</label>
                        <input type="text" class="form-control" name="code" value="${patientCode.getCode()}" id="code" placeholder="YHGFRR">
                    </div>
                    <div class="form-floating">
                        <label for="birthday"> Дата рождения</label>
                        <input type="date" class="form-control" id="birthday" name="birthday">
                    </div>
                    <div class="form-floating">
                        <label for="placeOfBirth"> Место рождения</label>
                        <input type="text" name="placeOfBirth" class="form-control" id="placeOfBirth">
                    </div>
                    <div class="form-floating">
                        <label for="drug"> Название назначаемого лекарства</label>
                        <input type="text" name="drug" class="form-control" id="drug">
                    </div>
                    <div class="form-floating">
                        <label for="dateStart"> Дата назначения</label>
                        <input type="date"class="form-control" id="dateStart" name="dateStart">
                    </div>
                    <div class="form-floating">
                        <label for="dateEnd"> Действует до</label>
                        <input type="date" class="form-control" id="dateEnd" name="dateEnd">
                    </div>
                    <div class="form-floating">

                        <label for="doctor"> Лечащий врач</label>
                        <input type="text" name="doctor" value="${name}" class="form-control" id="doctor">
                    </div>
                    <button class="w-100 btn btn-lg btn-primary" type="submit">Добавить</button>
                </div>
            </form>
        </div>

        <#else >
            <form method="post" action="/patienntManeg/{user}/add">
                <div class="form-floating">
                    <input type="text" class="form-control" name="username" value="${user.getUsername()}" id="floatingInput" placeholder="YHGFRR">
                    <input type="text" class="form-control" name="code" id="floatingInput" placeholder="YHGFRR">
                    <label for="floatingInput">Код пациента</label>
                    <button class="w-100 btn btn-lg btn-primary" type="submit">Добавить</button>
                </div>
            </form>
    </#if>
    <#if ppatientPrescriptions??>
        <#list patientPrescriptions as patientPrescriptions>
            <div>
                ${patientPrescriptions.getDrugName()}
            </div>
        </#list>

    </#if>
</@nav.page>