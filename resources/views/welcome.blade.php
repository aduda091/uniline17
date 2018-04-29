<!doctype html>
<html lang="hr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Uniline kalkulacija cijene smještaja</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="../public/css/app.css">
</head>
<body>
<div class="container" id="app">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">
            <img src="http://static.uniline-cdn.eu/images/2016/logo.png" alt="Uniline logo" height="40px">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarDefault"
                aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Početna <span class="sr-only">(current)</span></a>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Pretraga" aria-label="Pretraga" v-model="searchTerm">
                {{--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Traži</button>--}}
            </form>
        </div>
    </nav>

    <main role="main">

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-4">Kalkulacija cijene smještaja</h1>
                <p class="lead">Turistička agencija nudi gostima smještaj u velikom broju smještajnih objekata. Osim osnovne cijene, cjenici turističkog
                    smještaja obično sadrže popuste i doplate, a u izračunu konačnog iznosa potrebno je obratiti
                    pozornost i na druge stavke, kao što je npr. boravišna taksa.</p>
            </div>
        </div>


        <property-list :properties="foundProperties"></property-list>


    </main>

</div>

<script type="text/javascript" src="../public/js/app.js"></script>
<style>
    body {
        padding-top: 5rem;
    }
</style>
</body>
</html>
