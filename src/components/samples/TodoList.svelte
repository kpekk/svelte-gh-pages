<script>
    let elems = [
        "pese pesu",
        "käi vetsus",
        "käi vetsus uuesti",
        "tee nalja",
        "joo vett",
    ];
</script>

<div class="todolist-container widget">
    <div class="todolist-title">TODO</div>
    <div class="todolist-elem-list">
        {#each elems as elem}
            <div class="todolist-elem">{elem}
            
                <input type="checkbox">
            </div>
        {/each}
    </div>
</div>

<style>
    .todolist-container {
        height: 20rem;
        width: 40%;
        margin: 0.5rem;

        box-sizing: border-box;
        padding: 1rem;

        color: white;
    }

    .todolist-title {
        height: 10%;
        text-align: center;
        font-size: 1.5rem;
    }

    .todolist-elem-list {
        height: 90%;
        overflow-y: scroll;
        scrollbar-width: none; /* Hide the default scrollbar for Firefox */
        -ms-overflow-style: none; /* Hide the default scrollbar for IE and Edge */
    }

    /* Hide the default scrollbar for WebKit browsers (Chrome, Safari) */
    .todolist-elem-list::-webkit-scrollbar {
        width: 0;
        height: 0;
    }

    .todolist-elem {
        width: 95%;
        margin: 0 auto;
        border-top: 0.1rem solid rgb(145, 145, 145);
        height: 50px;
    }

    input[type="checkbox"]{
        border: 5px solid red;
    }
</style>
