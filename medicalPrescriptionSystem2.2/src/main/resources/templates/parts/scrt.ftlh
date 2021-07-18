<#assign known=Session.SPRING_SECURITY_CONTEXT??>
<#if  known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    isDoctor = user.isDoctor()
    isPatient = user.isPatient()
    isPharmacist = user.isPharmacist()
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