<svelte:head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Kristjan Pekk" />

    <link rel="icon" href="../icon.ico" type="image/x-icon" />
</svelte:head>
<script>
    import Router from 'svelte-spa-router';
	import Pets from "./pages/Pets.svelte";
    import Kelly from "./pages/Kelly.svelte";
    import Yt from './pages/projects/YT.svelte';

    // Define routes
    const routes = {
		'/pets' : Pets,
        '/kelly' : Kelly,
        '/projects/YT': Yt
		};
</script>
<Router {routes} />

<!-- 
<a href="#/kelly">Kelly</a>
<a href="#/pets">Pets</a>
-->
