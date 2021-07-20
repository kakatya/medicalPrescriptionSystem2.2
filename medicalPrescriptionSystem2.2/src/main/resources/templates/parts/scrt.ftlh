<#assign known=Session.SPRING_SECURITY_CONTEXT??>
<#if  known>
    <#assign
    userr = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = userr.getUsername()
    isAdmin = userr.isAdmin()
    isDoctor = userr.isDoctor()
    isPatient = userr.isPatient()
    isPharmacist = userr.isPharmacist()
    >

<#else>
    <#assign
    name = "guest"
    isAdmin = false
    isDoctor = false
    isPatient = false
    isPharmacist = false
    >
</#if>