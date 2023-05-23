<script>
    let title = "DnD";
    let size = "5";

    $: {
        // @ts-ignore
        document.querySelector(':root').style.setProperty('--size',size + 'rem')
        console.log(size)
    }
</script>

<div class="cloud">
    <div class="text-container">
        <div>{title}</div>
    </div>
    <svg viewBox="15 -10 15 42">
        <path
            d="M 0,6 
                 a 10,10 1 0,0 0,25 
                 h 45 
                 a 10,10 1 0,0 0,-25 
                 a 10,10 1 0,0 -15,-5 
                 a 15,15 1 0,0 -29, 5  
                 z"
        />
    </svg>
</div>

<style>
    /**https://stackoverflow.com/questions/30919053/creating-a-responsive-cloud-shape*/
    :root {
        font-size: 18px;
    }

    .cloud {
        height: calc(var(--size) * 2);
        width: calc(var(--size) * 2 * 1.7);
        position: relative;
    }

    .text-container {
        position: absolute;
        top: 45%;
        left: 0;

        width: 100%;
        border-radius: 3rem;
        font-size: 2.7rem;

        display: flex;
        align-items: center;
        justify-content: center;
    }

    svg {
        height: 100%;
        width: 100%;
    }

    path {
        fill: white;
        stroke: black;
        stroke-width: 1;
        stroke-linejoin: round;
    }

    path:hover{
        fill: aliceblue;
        stroke: lightskyblue;
    }

    .text-container:hover + svg path {
        fill: aliceblue;
        stroke: lightskyblue;
    }
</style>
