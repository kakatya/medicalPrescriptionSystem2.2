<#import "parts/common.ftlh" as nav>
<@nav.page>
    <div class="container">
        <form class="form-inline mt-2 mt-md-0" method="get" action="/openPharmacistTools">
            <input class="form-control mr-sm-2" type="text" name="code"  placeholder="Введите код" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
        </form>
        <div class="container">
            <div class="ttt">
                <h2>Рецепты пациента</h2>
                <#if prescriptions??>
                    <#list prescriptions as p>
                        <div class=" border-bottom mb-5 " >
                            Припарат "<b>${p.getDrugName()}</b>" назначен пациенту: <b>${p.getPatient().getUsername()}</b><br>
                            <b>${p.getBirthday()}</b> года рождения.<br>
                            Проживающему по адресу <b>${p.getPlaceOfBirth()}</b>.<br>
                            Дата назначения: <b>${p.getStartDate()}</b><br>
                            Рецепт действует по: <b>${p.getEndDAte()}</b><br>
                            Назначил врач: <b>${p.getDoctorName()}</b>
                        </div>
                    </#list>
                <#else >
                    <p>not found</p>
                </#if>
            </div>
        </div>
    </div>
</@nav.page>

