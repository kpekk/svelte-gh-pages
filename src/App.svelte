<script>
    import Cloud from "./Cloud.svelte";

	//export let name;
</script>

<main>
	<Cloud title={'DnD'} description={'DnD dice roller'} link={'/dnd'}/>
	<Cloud/>
	<Cloud/>
</main>

<style>
	main {
		margin: 0 auto;
		display: flex;
		flex-wrap: wrap;
	}
	
	:root {
    font-size: 18px;
  }

</style>