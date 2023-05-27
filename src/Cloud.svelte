<script>
  export let title;
  export let description;
  export let size = "5";
  export let link = "/";
  let hovered = false;

  const showInfoPanel = () => {
    hovered = true;
  };

  const hideInfoPanel = () => {
    hovered = false;
  };

  $: {
    // @ts-ignore
    document.querySelector(":root").style.setProperty("--size", size + "rem");
  }
</script>

<!-- svelte-ignore a11y-mouse-events-have-key-events -->
<a href={link}>
  <div class="cloud">
    <svg viewBox="15 -10 15 42" class="path-container" class:halo={hovered}>
      <path
        d="M 0,6 
           a 10,10 1 0,0 0,25 
           h 45 
           a 10,10 1 0,0 0,-25 
           a 10,10 1 0,0 -15,-5 
           a 15,15 1 0,0 -29, 5  
           z"
        on:mouseenter={showInfoPanel}
        on:mouseleave={hideInfoPanel}
      />
    </svg>
    <div class="text-container">
      <div>{title}</div>
    </div>
    <div class="info" class:show={hovered}>{description}</div>
  </div>
</a>

<style>
  /**https://stackoverflow.com/questions/30919053/creating-a-responsive-cloud-shape*/

  .cloud {
    height: calc(var(--size) * 2);
    width: calc(var(--size) * 3.4);
    position: relative;
    overflow: visible;
    margin: 1rem;
  }

  svg {
    height: 100%;
    width: 100%;
  }

  path {
    fill: rgb(247, 254, 255);
    stroke: rgb(126, 126, 126);
    stroke-width: 1;
    stroke-linejoin: round;
  }

  .text-container {
    position: absolute;
    top: 45%;
    left: 0;

    width: 100%;
    font-size: 2.7rem;

    display: flex;
    justify-content: center;
    pointer-events: none;
  }

  .info {
    position: absolute;
    z-index: 2;
    left: calc(var(--size) * 0.45);
    display: none;

    height: calc(var(--size) * 2);
    width: calc(var(--size) * 2.5);

    background-color: rgba(207, 207, 207, 0.95);

    box-sizing: border-box;
    border-radius: 1rem;
    padding: 1rem;
  }

  .show {
    display: block;
  }

  .halo {
    filter: drop-shadow(0 0 1rem rgb(255, 240, 240));
  }
</style>
