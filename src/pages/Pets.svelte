<script>
    import { onMount } from "svelte";
    import Pulse from "../components/Pulse.svelte";
    let currentExcuse = "";
    let pulse;

    const generateExcuse = () => {
        pulse.triggerAnimation();
        const allExcuses = [
            "Eesti Vabariigil on sünnipäev",
            "mu õel on sünnipäev",
            "mu emal on sünnipäev",
            "mu isal on sünnipäev",
            "mul on janu",
            "mul on nälg",
            "ma pean jõuksi minema",
            "mul on poeg",
            "mul on tütar",
            "õues on liiga külm",
            "õues on liiga soe",
            "maximas on õlu liiga kallis",
            "ma nägin oravat",
            "minust saab homme president",
        ];

        let excuse = allExcuses[Math.floor(Math.random() * allExcuses.length)];
        while (currentExcuse === excuse) {
            excuse = allExcuses[Math.floor(Math.random() * allExcuses.length)];
        }
        currentExcuse = excuse;
    };

    onMount(() => {
        generateExcuse();
    });
</script>

<svelte:head>
    <meta name="description" content="pets ei saa linna tulla, sest..." />
    <title>petsi vabanduste generaator</title>
</svelte:head>

<div class="pets-container">
    <div class="pets-heading">
        Sorri kutid, ma ei saa täna välja tulla, sest
    </div>
    <div class="response-container">
        <div id="pets-response">{currentExcuse}</div>
        <Pulse infinite={false} bind:this={pulse} />
    </div>
    <!-- svelte-ignore a11y-click-events-have-key-events -->
    <div id="pets-button" on:click={generateExcuse}>Ei Pets, tule ikka!</div>
</div>

<style>
    .pets-container {
        height: 100%;
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        background-color: rgb(23, 23, 23);
    }

    .pets-heading {
        height: 15vh;
        min-height: 80px;
        font-size: 1.5rem;
        text-align: center;
    }

    .response-container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        position: relative;
    }

    #pets-response {
        height: 40vh;
        padding-left: 0.5rem;
        padding-right: 0.5rem;
        font-size: 2rem;

        display: flex;
        align-items: center;
        text-align: center;
    }

    #pets-button {
        margin: 0 auto;
        cursor: pointer;
        user-select: none;

        border-radius: 1rem;
        padding: 1rem;
        border: 0.1rem solid aliceblue;
    }
</style>
