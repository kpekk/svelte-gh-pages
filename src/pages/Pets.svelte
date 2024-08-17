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

<body>
    <div class="pets-heading">
        Sorri kutid, ma ei saa täna välja tulla, sest
    </div>
    <div class="response-container">
        <div id="pets-response">{currentExcuse}</div>
        <Pulse infinite={false} bind:this={pulse} />
    </div>
    <div id="pets-button" on:click={generateExcuse}>Ei Pets, tule ikka!</div>
</body>

<style>
    body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        background-color: rgb(23, 23, 23);
    }

    .pets-heading {
        margin-top: 5vh;
        height: 15vh;
        min-height: 80px;
        font-size: 2rem;
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
        text-align: center;
        font-size: 2rem;

        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
    }

    #pets-button {
        margin: 0 auto;
        cursor: pointer;
        user-select: none;
        display: inline-block;

        font-size: 2rem;
        border-radius: 1rem;
        padding: 1rem;
        border: 0.1rem solid aliceblue;
        transition: all 0.5s;
    }
</style>
