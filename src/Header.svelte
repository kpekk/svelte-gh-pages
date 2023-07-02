<script>
    export let username = "kpekk";
</script>

<div class="header-container">
    <div class="header-links">
        <div class="header-link">link 1</div>
        <div class="header-link">link 2</div>
        <div class="header-link">link 3</div>
    </div>
    <div class="username">{username}</div>
</div>

<style>
    .header-container {
        position: relative;
        width: 100%;
        height: 2.5rem;

        background-color: rgb(46, 46, 46);

        color: white;
        font-size: 1.5rem;
        display: flex;
        
        align-items: center;
    }

    .header-links {
        display: flex;
    }

    .header-link {
        cursor: pointer;
        margin-left: 1rem;
        margin-right: 7rem;
    }

    .username {
        position: absolute;
        top: 0.25rem;
        right: 1rem;
    }
</style>
