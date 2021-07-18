<#macro page>
    <#include "scrt.ftlh">
    <#import "/spring.ftl" as spring>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .form-registration {
            width: 100%;
            max-width: 330px;
            padding: 15px;

        }
        .f1{
            margin-left: 150px;
        }
        .f2{
            margin-left: 700px;
            margin-top: -330px;
        }
    </style>
    <title>Title</title>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
    <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="80" class="me-2" viewBox="0 0 128 128" role="img"><title>Главная страница</title><g><path d="M79,95.2c-25.5,0-46.2-20.7-46.2-46.2S53.5,2.8,79,2.8s46.2,20.7,46.2,46.2S104.5,95.2,79,95.2z M79,5.2    C54.9,5.2,35.2,24.9,35.2,49S54.9,92.8,79,92.8s43.8-19.6,43.8-43.8S103.1,5.2,79,5.2z" fill="#502D4B"/></g><path d="M104.8,29.6L59.6,74.8c-1.6,1.6-4.1,1.6-5.7,0l-0.7-0.7c-1.6-1.6-1.6-4.1,0-5.7l45.3-45.3   c1.6-1.6,4.1-1.6,5.7,0l0.7,0.7C106.4,25.5,106.4,28,104.8,29.6z" fill="#502D4B" opacity="0.2"/><g><path d="M56.7,77.2c-1.4,0-2.7-0.5-3.7-1.5L52.3,75c-2-2-2-5.4,0-7.4l45.3-45.3c1-1,2.3-1.5,3.7-1.5    c1.4,0,2.7,0.5,3.7,1.5l0.7,0.7c2,2,2,5.4,0,7.4L60.4,75.7C59.4,76.7,58.1,77.2,56.7,77.2z M101.3,23.3c-0.7,0-1.4,0.3-1.9,0.8    L54.1,69.3c-1.1,1.1-1.1,2.8,0,3.9l0.7,0.7c1,1,2.8,1,3.9,0l45.3-45.3c1.1-1.1,1.1-2.8,0-3.9l-0.7-0.7    C102.7,23.6,102,23.3,101.3,23.3z" fill="#502D4B"/></g><path d="M111.3,80.3c0.6-0.7,1.3-1.4,1.9-2.1c0,0,0.1-0.1,0.1-0.1c1.3-1.5,2.4-3,3.5-4.6   c0,0,0,0,0-0.1c4.6-7,7.2-15.4,7.2-24.5c0-24.9-20.1-45-45-45c-1.5,0-3,0.1-4.5,0.2C97.2,6.5,115,25.7,115,49   c0,6.5-1.4,12.7-3.9,18.3c-3.8-1.4-7.9-2.3-12.1-2.3H36.9c5.9,15.6,20.3,27.1,37.6,28.8c0,0,0,0,0,0c0.1,0,0.2,0,0.3,0   c0.5,0,1.1,0.1,1.6,0.1c0.2,0,0.3,0,0.5,0c0.7,0,1.4,0.1,2.1,0.1c0.9,0,1.9,0,2.8-0.1c0.3,0,0.5,0,0.8-0.1c0.7-0.1,1.4-0.1,2.1-0.2   c0.2,0,0.5-0.1,0.7-0.1c0.9-0.1,1.8-0.3,2.7-0.5c0.1,0,0.2,0,0.3-0.1c0.8-0.2,1.6-0.4,2.4-0.6c0.2-0.1,0.5-0.1,0.7-0.2   c0.7-0.2,1.4-0.4,2.1-0.7c0.2-0.1,0.3-0.1,0.5-0.2c0.9-0.3,1.7-0.6,2.6-1c0.1,0,0.2-0.1,0.3-0.1c0.8-0.3,1.5-0.7,2.2-1   c0.2-0.1,0.3-0.2,0.5-0.3c0.8-0.4,1.5-0.8,2.2-1.2c0,0,0.1,0,0.1-0.1c0.8-0.5,1.6-1,2.4-1.5c0.1,0,0.1-0.1,0.2-0.1   c0.7-0.5,1.4-1,2.1-1.5c0.1-0.1,0.2-0.1,0.3-0.2C108.5,83,109.9,81.8,111.3,80.3C111.2,80.4,111.3,80.4,111.3,80.3z" fill="#502D4B" opacity="0.2"/><g><path d="M99,124H29c-13.8,0-25-11.2-25-25v0c0-13.8,11.2-25,25-25h70c13.8,0,25,11.2,25,25v0    C124,112.8,112.8,124,99,124z" fill="#E074A3"/></g><g><path d="M99,74H64v50h35c13.8,0,25-11.2,25-25v0C124,85.2,112.8,74,99,74z" fill="#90D3EA"/></g><g><path d="M99,125.2H29c-14.5,0-26.2-11.8-26.2-26.2S14.5,72.8,29,72.8h70c14.5,0,26.2,11.8,26.2,26.2    S113.5,125.2,99,125.2z M29,75.2C15.9,75.2,5.2,85.9,5.2,99s10.7,23.8,23.8,23.8h70c13.1,0,23.8-10.7,23.8-23.8    S112.1,75.2,99,75.2H29z" fill="#502D4B"/></g><path d="M111,77c1.9,3.6,3,7.6,3,12v0c0,13.8-11.2,25-25,25H19c-4.3,0-8.4-1.1-12-3   c4.2,7.8,12.5,13,22,13h70c13.8,0,25-11.2,25-25v0C124,89.5,118.7,81.3,111,77z" fill="#502D4B" opacity="0.2"/><g><rect fill="#502D4B" height="50" width="2.5" x="62.8" y="74"/></g><g opacity="0.8"><path d="M13,101.5c-1.4,0-2.5-1.1-2.5-2.5c0-10.2,8.3-18.5,18.5-18.5h70c1.4,0,2.5,1.1,2.5,2.5s-1.1,2.5-2.5,2.5    H29c-7.4,0-13.5,6.1-13.5,13.5C15.5,100.4,14.4,101.5,13,101.5z" fill="#FFFFFF"/></g></svg>
        <span class="fs-4">Система оборота медицинаских рецетов</span>

    </a>

    <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
        <#if isAdmin>
             <a class="me-3 py-2 text-dark text-decoration-none" href="/adminTools">Управление пользователями</a>
        </#if>
        <#if isDoctor>
            <a class="me-3 py-2 text-dark text-decoration-none" href="/openDoctorTools">Управление пациентами</a>
        </#if>
        <a class="me-3 py-2 text-dark text-decoration-none" href="#">О нас</a>
        <a class="me-3 py-2 text-dark text-decoration-none" href="#">Контакты</a>

    </nav>
</div>
<div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 ">
    <#if isAdmin>
        <p class="me-3 py-2 text-dark text-decoration-none">Страница администратора: ${name}
        </p>

    </#if>

    <#if isDoctor>
        <p class="me-3 py-2 text-dark text-decoration-none fs-4"> Страница лечащего врача: ${name} </p>
    </#if>
    <#if isPatient>
        <p class="me-3 py-2 text-dark text-decoration-none fs-4"> Страница пациента: ${name} </p>
    </#if>
    <#if isPharmacist>
        <p class="me-3 py-2 text-dark text-decoration-none fs-4"> Страница лечащего фармацевта: ${name} </p>
    </#if>
</div>
<#nested>
</body>
</html>
</#macro>