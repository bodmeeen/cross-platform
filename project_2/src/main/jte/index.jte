@param String name
@param boolean isAdmin
@param java.util.List<String> items
@param java.util.Map<String, String> info

<!DOCTYPE html>
<html>
<head>
    <title>Лабораторна JTE</title>
</head>
<body>

<h1>Привіт, ${name}!</h1>

@if(isAdmin)
    <p>Ви адміністратор.</p>
@else
    <p>Ви звичайний користувач.</p>
@endif

<!-- Loop -->
<h2>Ваші навички:</h2>
<ul>
    @for(String skill : items)
        <li>${skill}</li>
    @endfor
</ul>

<!-- Коментар -->
<%-- Це коментар у JTE --%>


@template.footer()
@template.userInfo(email = info.get("email"), role = info.get("role"))
@template.greet()
@template.printList("HTML", "CSS", "JS")
@template.card(content = @`
    <strong>Контент усередині шаблону card</strong>
`)


!{ String message = "Це змінна з JTE"; }
<p>${message}</p>

</body>
</html>
