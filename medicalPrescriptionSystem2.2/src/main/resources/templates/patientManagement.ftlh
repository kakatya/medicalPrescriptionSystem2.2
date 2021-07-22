<#import "parts/common.ftlh" as nav>
<#include "spring.ftl">
    <#include "parts/scrt.ftlh">
<@nav.page>
<h1>Информация о пациенте: ${user.getUsername()}</h1>
    <#if patientCode??>
        <div><h2>Код пациента: ${patientCode.getCode()}</h2></div>
        <div class="formPrescip table-sub-heading-color" style="align-content: center">
            <form method="post" class="tex-center" action="/patienntManeg/{user}/addPrst">
                <h2>Форма рецепта</h2>
                    <div class="form-floating  "  >
                        <label for="username" class="  mt-0"  style="display: inline-block">ФИО пациента</label>
                        <input  type="text" class="form-control" name="username" value="${user.getUsername()}" id="username" placeholder="YHGFRR">
                    </div>
                    <div class="form-floating " style="margin-top: 50px">
                        <label for="code">Код пациента</label>
                        <input type="text" class="form-control" name="code" value="${patientCode.getCode()}" id="code" placeholder="YHGFRR">
                    </div>
                    <div class="form-floating" style="margin-top: 50px">
                        <label for="birthday"> Дата рождения</label>
                        <input type="date" class="form-control" id="birthday" name="birthday">
                    </div>
                    <div class="form-floating" style="margin-top: 50px">
                        <label for="placeOfBirth"> Место жительства</label>
                        <input type="text" name="placeOfBirth" class="form-control" id="placeOfBirth">
                    </div>
                    <div class="form-floating" style="margin-top: 50px">
                        <label for="drug"> Название назначаемого лекарства</label>
                        <input type="text" name="drug" class="form-control" id="drug">
                    </div>
                    <div class="form-floating" style="margin-top: 50px">
                        <label for="dateStart"> Дата назначения</label>
                        <input type="date"class="form-control" id="dateStart" name="dateStart">
                    </div>
                    <div class="form-floating" style="margin-top: 50px">
                        <label for="dateEnd"> Действует до</label>
                        <input type="date" class="form-control" id="dateEnd" name="dateEnd">
                    </div>
                    <div class="form-floating" style="margin-top: 50px">

                        <label for="doctor"> Лечащий врач</label>
                        <input type="text" name="doctor" value="${name}" class="form-control" id="doctor">
                    </div>
                    <button class="w-100 btn btn-lg btn-primary" type="submit">Добавить рецепт</button>

            </form>
        </div>

        <#else >
            <form method="post" action="/patienntManeg/{user}/add">
                <div class="form-floating">

                    <input type="text" class="form-control" name="code" id="floatingInputs" placeholder="YHGFRR">
                    <label for="floatingInputs">Код пациента</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" name="username" value="${user.getUsername()}" id="floatingInputa" placeholder="YHGFRR">
                    <label for="floatingInputa">ФИО пациента</label>

                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Добавить</button>
            </form>
    </#if>
    <div class="tr">
        <h2>Рецепты пациента</h2>
        <#if patientPrescriptions??>
            <#list patientPrescriptions as patientPrescriptions>
                <div class=" border-bottom mb-5 " >
                    Припарат "<b>${patientPrescriptions.getDrugName()}</b>" назначен пациенту: <b>${user.getUsername()}</b><br>
                    <b>${patientPrescriptions.getBirthday()}</b> года рождения.<br>
                    Проживающему по адресу <b>${patientPrescriptions.getPlaceOfBirth()}</b>.<br>
                    Дата назначения: <b>${patientPrescriptions.getStartDate()}</b><br>
                    Рецепт действует по: <b>${patientPrescriptions.getEndDAte()}</b><br>
                    Назначил врач: <b>${name}</b>
                </div>
            </#list>
        <#else >
            <p>not found</p>
        </#if>
    </div>
</@nav.page>