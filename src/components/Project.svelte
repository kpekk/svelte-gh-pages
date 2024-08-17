<script>
    export let title = "Project title";
    export let description = "description open";
    export let whatILearned = "what i learned open";
    export let linkToCode = "link to code, github etc";

    let descriptionOpen = false;
    let codeSamplesOpen = false;
    let whatILearnedOpen = false;
    let linkToCodeOpen = false;

    const toggleDescription = () => {
        descriptionOpen = !descriptionOpen;
    };

    const toggleCodeSamples = () => {
        codeSamplesOpen = !codeSamplesOpen;
    };

    const toggleWhatILearned = () => {
        whatILearnedOpen = !whatILearnedOpen;
    };

    const toggleLinkToCode = () => {
        linkToCodeOpen = !linkToCodeOpen;
    };
</script>

<!-- svelte-ignore a11y-no-noninteractive-tabindex -->
<div class="project-container">
    <h2>{title}</h2>

    <div
        class="section"
        on:click={toggleDescription}
        on:keypress={toggleDescription}
        tabindex="0"
    >
        short description

        {#if descriptionOpen}
            <div class="section-content">{description}</div>
        {/if}
    </div>

    <div
        class="section code-samples"
        on:click={toggleCodeSamples}
        on:keypress={toggleCodeSamples}
        tabindex="0"
    >
        code samples

        {#if codeSamplesOpen}
            <div class="section-content">code samples</div>
        {/if}
    </div>

    <div
        class="section what-i-learned"
        on:click={toggleWhatILearned}
        on:keypress={toggleWhatILearned}
        tabindex="0"
    >
        what i learned
        {#if whatILearnedOpen}
            <div class="section-content">{whatILearned}</div>
        {/if}
    </div>

    <div
        class="section link-to-code"
        tabindex="0"
        on:click={toggleLinkToCode}
        on:keypress={toggleLinkToCode}
    >
        link to code

        {#if linkToCodeOpen}
            <div class="section-content">{linkToCode}</div>
        {/if}
    </div>
</div>

<style>
    .project-container {
        height: 100%;
        width: 100%;
    }

    h2 {
        margin: 0;
        padding: 4rem 0 2rem;
        text-align: center;
    }

    .section {
        padding: 1rem;
        background-color: rgba(0, 255, 255, 0.048);
    }

    .section-content {
        margin-top: 0.5rem;
        padding-left: 1rem;
        overflow-wrap: break-word;
    }
</style>
