<script>
	import Test from "./pages/Test.svelte";
    import Router from 'svelte-spa-router';
	import AnotherPage from "./pages/AnotherPage.svelte";

    // Define routes
    const routes = {
        '/': Test,
		'/another' : AnotherPage
		};
</script>
<Router {routes} />

<nav>
    <a href="#/">Home</a>
	<a href="#/another">another</a>
</nav>

