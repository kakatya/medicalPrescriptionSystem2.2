<#import "parts/common.ftlh" as navB>
<@navB.page>
<div>
    <#if code??>
        <div><h2>Код пациента: ${code.getCode()}</h2></div>
        <#else >
            <div><h2>Код отсутствует</h2></div>
    </#if>
</div>
    <div class="ttt">
        <h2>Ваши рецепты</h2>
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
</@navB.page>