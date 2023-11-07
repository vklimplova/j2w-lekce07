[#ftl]
[#-- podobný jako include, ale dají se v tom nějaký části měnit, když např. chci měnit title--]
[#macro page title]
    [#-- page je název macra --]
    [#-- title je název atributu, na který se pak odkazuju níže pomocí ${title} --]

    <!DOCTYPE html>
    <html lang="cs">
    <head>
        <meta charset="UTF-8">
        <title>${title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body>
    <div class="d-flex flex-column justify-content-center align-items-center min-vh-100">
        <h1>${title}</h1>
        [#nested /]
        [#-- nested nám dělá to, že sem se vloží to, co je uvnitř párovýho macra --]
    </div>
    </body>
    </html>

[/#macro]

[#macro seznam]
    <ul>
        [#list calendar as item]
            <li>${item.label}: <strong>${item.date?date?string.full}</strong></li>
        [/#list]
    </ul>
    <div><a href="/" class="btn btn-primary">Zpět na úvod</a></div>
[/#macro]
