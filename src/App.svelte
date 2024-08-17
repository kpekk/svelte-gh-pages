<svelte:head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Kristjan Pekk" />

    <link rel="icon" href="../icon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../common.css" />
</svelte:head>
<script>
	import Test from "./pages/Test.svelte";
    import Router from 'svelte-spa-router';
	import Pets from "./pages/Pets.svelte";
    import Kelly from "./pages/Kelly.svelte";

    // Define routes
    const routes = {
        '/': Test,
		'/another' : Pets,
        '/kelly' : Kelly
		};
</script>
<Router {routes} />


