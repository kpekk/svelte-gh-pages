<script>
    export let color = 'purple';
</script>

<div class="pulse-container">
    <div class="pulse pulse-big pulse-{color}"></div>
    <div class="pulse pulse-small pulse-{color}"></div>
</div>

<style>
    .pulse-container {
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .pulse {
        position: absolute;
        z-index: 5;
        background: transparent;
        border-radius: 50%;
        margin: 10px;
    }

    .pulse-small {
        height: 10vh;
        width: 10vh;
    }

    .pulse-big {
        height: 20vh;
        width: 20vh;
        animation-delay: 0.05s;
    }

    .pulse-green {
        animation: pulse-green 1s infinite;
    }

    @keyframes pulse-green {
        0% {
            box-shadow: 0 0 0 0 rgba(5, 179, 40, 0.7);
        }

        70% {
            box-shadow: 0 0 0 10vh rgba(51, 217, 178, 0);
        }

        100% {
            box-shadow: 0 0 0 0 rgba(51, 217, 178, 0);
        }
    }

    .pulse-red {
        animation: pulse-red 1s infinite;
    }

    @keyframes pulse-red {
        0% {
            box-shadow: 0 0 0 0 rgba(216, 1, 1, 0.7);
        }

        70% {
            box-shadow: 0 0 0 10vh rgba(51, 217, 178, 0);
        }

        100% {
            box-shadow: 0 0 0 0 rgba(51, 217, 178, 0);
        }
    }

    .pulse-purple {
        animation: pulse-purple 1s infinite;
    }

    @keyframes pulse-purple {
        0% {
            box-shadow: 0 0 0 0 rgba(171, 14, 218, 0.7);
        }

        70% {
            box-shadow: 0 0 0 10vh rgba(51, 217, 178, 0);
        }

        100% {
            box-shadow: 0 0 0 0 rgba(51, 217, 178, 0);
        }
    }
</style>
