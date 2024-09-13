<script>
    export let title = "Project title";
    export let description = "description open";
    export let whatILearned = "what i learned open";
    export let linkToCode = "link to code, github etc";

    let descriptionOpen = false;
    let whatILearnedOpen = false;
    let linkToCodeOpen = false;

    const toggleDescription = () => {
        descriptionOpen = !descriptionOpen;
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
    <h2>{@html title}</h2>

    <div
        class="section"
        on:click={toggleDescription}
        on:keypress={toggleDescription}
        tabindex="0"
    >
        short description

        {#if descriptionOpen}
            <div class="section-content">{@html description}</div>
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
            <div class="section-content">{@html whatILearned}</div>
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
            <div class="section-content">
                <a href={linkToCode}>{linkToCode}</a>
            </div>
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
        background-color: rgba(4, 91, 71, 0.283);
    }

    .section-content {
        margin-top: 0.5rem;
        padding-left: 1rem;
        overflow-wrap: break-word;
    }
</style>
