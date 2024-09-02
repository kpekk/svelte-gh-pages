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
    import AiContentCreator from './pages/projects/AiContentCreator.svelte';
    import Links from './pages/Links.svelte';
    import YouTubeVideoUploader from './pages/projects/YouTubeVideoUploader.svelte';

    // Define routes
    const routes = {
		'/pets' : Pets,
        '/kelly' : Kelly,
        '/projects/contentCreator': AiContentCreator,
        '/projects/videoUploader': YouTubeVideoUploader,
        '/' : Links
		};
</script>
<Router {routes} />
