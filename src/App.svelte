<script>
	import Header from "./Header.svelte";
	import WeatherWidget from "./WeatherWidget.svelte";
	import WifiWidget from "./WifiWidget.svelte";
	import SpotifyPlayer from "./SpotifyPlayer.svelte";
	import GoogleCalendar from "./GoogleCalendar.svelte";
	import TodoList from "./TodoList.svelte";
</script>

<Header />
<GoogleCalendar />

<div style="display: flex;">
	<TodoList />
	<WeatherWidget />
	
	<SpotifyPlayer />

</div>

