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

    <link rel="stylesheet" href={{ asset('css/app.css') }}>
</head>
<body>
<div class="container" id="app">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <router-link class="navbar-brand" to="/" exact>
            <img src="http://static.uniline-cdn.eu/images/2016/logo.png" alt="Uniline logo" height="40px">
        </router-link>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarDefault"
                aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <router-link class="nav-link" to="/" exact>
                        Početna
                    </router-link>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Pretraga" aria-label="Pretraga"
                       v-model="searchTerm">
            </form>
        </div>
    </nav>

    <main role="main">

        <router-view :properties="foundProperties"></router-view>

    </main>

</div>

<script type="text/javascript" src={{ asset('js/app.js') }}></script>
<style>
    body {
        padding-top: 5rem;
    }
</style>
</body>
</html>
