<script>
    let title = "DnD";
    let description = "example description mlem";
    let size = "5";
    let showInfo = false;
  
    const showInfoPanel = () => {
      showInfo = true;
    };
  
    const hideInfoPanel = () => {
      showInfo = false;
    };
  
    $: {
      // @ts-ignore
      document.querySelector(":root").style.setProperty("--size", size + "rem");
    }
  </script>
  
  <!-- svelte-ignore a11y-mouse-events-have-key-events -->
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
        on:mouseenter={showInfoPanel}
        on:mouseleave={hideInfoPanel}
      />
    </svg>
    <div class="info" class:show-info={showInfo}>{description}</div>
  </div>
  
  <style>
    /**https://stackoverflow.com/questions/30919053/creating-a-responsive-cloud-shape*/
    :root {
      font-size: 18px;
      background-color: aqua;
    }
  
    .cloud {
      height: calc(var(--size) * 2);
      width: calc(var(--size) * 3.4);
      position: relative;
      overflow: visible;
    }
  
    .text-container {
      position: absolute;
      top: 45%;
      left: 0;
  
      width: 100%;
      font-size: 2.7rem;
  
      display: flex;
      align-items: center;
      justify-content: center;
  
      pointer-events: none;
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
  
    .info {
      position: absolute;
      left: calc(var(--size) * 0.45);
      display: none;
  
      height: calc(var(--size) * 2);
      width: calc(var(--size) * 2.5);
  
      background-color: rgba(207, 207, 207, 0.1);
  
      box-sizing: border-box;
      border-radius: 1rem;
      padding: 1rem;
    }
  
    .show-info {
      display: block;
    }
  
    path:hover {
      fill: aliceblue;
      stroke: lightskyblue;
      filter: drop-shadow(0 0 5px rgba(255, 0, 0, 0.8));
    }
  
    .text-container:hover + svg path {
      fill: aliceblue;
      stroke: lightskyblue;
    }

  </style>
  